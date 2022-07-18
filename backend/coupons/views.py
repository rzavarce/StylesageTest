from rest_framework import generics
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from django.conf import settings
import os
import json
from .models import Coupon
from .serializers import CouponSerializer

from django_pandas.io import read_frame


def coupons_data_loader():
    Coupon.objects.all().delete()
    with open(os.path.join(settings.BASE_DIR, 'static/data/coupons.json')) as file:
        coupons = json.load(file)['coupons']
        for coupon in coupons:
            c = Coupon(**coupon)
            c.save()


class CouponsViewset(generics.ListCreateAPIView):
    model = Coupon
    queryset = Coupon.objects.all()
    serializer_class = CouponSerializer
    pagination_class = None


class CouponsDataLoader(APIView):
    def post(self, request):

        coupons_data = request.data['payload']

        qs = Coupon.objects.all()

        df = read_frame(qs)

        group_by_type_counts = df.groupby(['promotion_type'])['promotion_type'].count().to_json()

        df_mask = df['promotion_type'] == 'percent-off'
        filtered_df = df[df_mask]
        percent_off_stats = {
            "counts": filtered_df['id'].count(),
            "min": filtered_df['value'].min(),
            "max": filtered_df['value'].max(),
            "mean": round(filtered_df['value'].mean(), 2)
        }

        df_mask = df['promotion_type'] == 'dollar-off'
        filtered_df = df[df_mask]
        dollar_off_stats = {
            "counts": filtered_df['id'].count(),
            "min": filtered_df['value'].min(),
            "max": filtered_df['value'].max(),
            "mean": round(filtered_df['value'].mean(), 2)
        }

        grouped_df = df.groupby(['webshop_id'])['value']
        dollar_off_group_stats = {
            "counts": grouped_df.count(),
            "min": grouped_df.min(),
            "max": grouped_df.max(),
            "mean": grouped_df.mean(),
        }

        groups_stats = df.groupby(['webshop_id'])['value']
        grouped_stats_list = {
            "counts": json.loads(groups_stats.count().to_json()),
            "min": json.loads(groups_stats.min().to_json()),
            "max": json.loads(groups_stats.max().to_json()),
            "mean": json.loads(groups_stats.mean().to_json()),
        }

        title_words_key = df[df.title.str.contains('10 Off|10% Off | 20 Off|20% Off', case=False)].to_dict()
        title_words_key_list = []
        for index, title in title_words_key['title'].items():
            title_words_key_list.append(
                {
                    "id": index,
                    "title": title
                }
            )

        description_words_key = df[df.description.str.contains('10 Off|10% Off | 20 Off|20% Off', case=False)]

        description_words_key_list = []
        for index, description in description_words_key['description'].items():
            description_words_key_list.append(
                {
                    "id": index,
                    "description": description
                }
            )

        print()
        print(title_words_key)
        #print(description_words_key)
        print()

        words_keys_stats = {
            "title": title_words_key_list,
            "description": description_words_key_list,
        }

        response = {
            "status": True,
            "payload": {
                "totals": df.shape[0],
                "group_by_promotion_type": json.loads(group_by_type_counts),
                "percent_off_stats": percent_off_stats,
                "dollar_off_stats": dollar_off_stats,
                "dollar_off_group_stats": dollar_off_group_stats,
                "grouped_stats_list": grouped_stats_list,
                "words_keys_stats": words_keys_stats
            }
        }

        return Response(response, content_type='application/json', status=status.HTTP_201_CREATED)





