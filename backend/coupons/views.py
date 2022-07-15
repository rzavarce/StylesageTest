from rest_framework import generics
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status

from .models import Coupon
from .serializers import CouponSerializer


class CouponsViewset(generics.ListCreateAPIView):
    model = Coupon
    queryset = Coupon.objects.all()
    serializer_class = CouponSerializer


class CouponsDataLoader(APIView):
    def post(self, request):

        response = dict()

        coupons_data = request.data

        print()
        print(coupons_data)
        print()

        response = {
            "status": "pasooooooooooooooo"
        }

        return Response(response, status=status.HTTP_201_CREATED)

