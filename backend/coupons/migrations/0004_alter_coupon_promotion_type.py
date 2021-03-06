# Generated by Django 3.2.14 on 2022-07-15 23:07

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('coupons', '0003_alter_coupon_promotion_type'),
    ]

    operations = [
        migrations.AlterField(
            model_name='coupon',
            name='promotion_type',
            field=models.IntegerField(choices=[(100, 'percent-off,'), (200, 'buy-one-get-one'), (300, 'dollar-off'), (400, 'free-gift'), (500, 'free-shipping')], verbose_name='Promotions Type'),
        ),
    ]
