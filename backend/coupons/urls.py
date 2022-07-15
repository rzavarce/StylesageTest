from django.urls import path
from coupons import views

urlpatterns = [
    path('coupons/', views.CouponsViewset.as_view()),
    path('coupons/data_loader/', views.CouponsDataLoader.as_view()),
    # path('bot_configs/<int:pk>/', views.BotConfigDetail.as_view()),
    # path('currencies/form_data/', views.CurrenciesEditFormData.as_view()),
    # path('bot_configs/form_data/<int:pk>/', views.BotConfigEditFormData.as_view()),
]
