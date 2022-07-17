from django.urls import path
from coupons import views

urlpatterns = [
    path('coupons/', views.CouponsViewset.as_view()),
    path('coupons/stats/', views.CouponsDataLoader.as_view()),
]
