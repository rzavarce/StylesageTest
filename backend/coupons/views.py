from rest_framework import generics
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from django.conf import settings
import os
import json
from .models import Coupon
from .serializers import CouponSerializer
from django.core import serializers
from django.http import HttpResponse
from rest_framework import viewsets

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

        # Using groupby() and count()
        group_by_type_counts = df.groupby(['promotion_type'])['promotion_type'].count().to_json()

        df_mask = df['promotion_type'] == 'percent-off'

        filtered_df = df[df_mask]

        percent_off_stats = {
            "counts": filtered_df['id'].count(),

        }

        print()
        print(percent_off_stats)
        print()

        response = {
            "status": True,
            "payload": {
                "group_by_promotion_type": json.loads(group_by_type_counts),
                "pecent_off_stats": percent_off_stats

            }
        }

        return Response(response, content_type='application/json', status=status.HTTP_201_CREATED)





