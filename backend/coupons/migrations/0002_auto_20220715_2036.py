# Generated by Django 3.2.14 on 2022-07-15 20:36

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('coupons', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='coupon',
            name='description',
            field=models.TextField(verbose_name='Description'),
        ),
        migrations.AlterField(
            model_name='coupon',
            name='title',
            field=models.CharField(max_length=200, verbose_name='Title'),
        ),
    ]