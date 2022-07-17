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

        print()
        print(df)
        print()

        response = {
            "status": True,
            "payload": {}
        }

        return HttpResponse(response, content_type='application/json', status=status.HTTP_201_CREATED)





