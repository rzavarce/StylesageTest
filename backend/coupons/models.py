from django.db import models

from django.utils.translation import gettext_lazy as _


PROMOTIONS_TYPES = (('percent-off', 'percent-off'), ('buy-one-get-one', 'buy-one-get-one'), ('dollar-off', 'dollar-off'),
                    ('free-gift', 'free-gift'), ('free-shipping', 'free-shipping'))


class Coupon(models.Model):

    country_code = models.CharField(max_length=2, verbose_name=_('County Code'))

    coupon_id = models.IntegerField(verbose_name=_('Coupon Id'),)

    coupon_webshop_name = models.CharField(max_length=150, verbose_name=_('Coupon Webshop Name'))

    description = models.TextField(verbose_name=_('Description'))

    first_seen = models.DateField(verbose_name=_('First Seen'),)

    last_seen = models.DateField(verbose_name=_('Last Seen'),)

    promotion_type = models.CharField(max_length=20, choices=PROMOTIONS_TYPES, verbose_name=_('Promotions Type'))

    title = models.CharField(max_length=200, verbose_name=_('Title'))

    value = models.IntegerField(verbose_name=_('Value'), null=True, )

    webshop_id = models.CharField(max_length=200, verbose_name=_('Webshop Id'))

    def __str__(self):
        return str(self.promotion_type) + "-" + str(self.coupon_id) + "-" + str(self.webshop_id)

    class Meta:
        verbose_name = _('Coupon')
        verbose_name_plural = _('Coupons')
