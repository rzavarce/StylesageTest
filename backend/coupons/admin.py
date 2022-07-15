from __future__ import unicode_literals

from django.contrib import admin
from .models import Coupon


class CouponAdmin(admin.ModelAdmin):
    list_display = ('coupon_id', 'title', 'promotion_type', 'webshop_id',
                    'promotion_type', 'value', 'first_seen', 'last_seen',)
    list_filter = ('coupon_id', 'coupon_webshop_name', 'promotion_type', 'webshop_id',)
    ordering = ('webshop_id', 'promotion_type', 'coupon_id', )
    search_fields = ('coupon_id', 'webshop_id', 'coupon_webshop_name',)


admin.site.register(Coupon, CouponAdmin)
