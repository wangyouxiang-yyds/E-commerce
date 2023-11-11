# Generated by Django 4.2.4 on 2023-11-07 22:49

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ("shop", "0008_rename_product_photo_product_image"),
        ("order", "0002_remove_order_county_order_address"),
    ]

    operations = [
        migrations.AlterField(
            model_name="orderitem",
            name="order",
            field=models.ForeignKey(
                on_delete=django.db.models.deletion.CASCADE,
                related_name="item",
                to="order.order",
                verbose_name="訂單編號",
            ),
        ),
        migrations.AlterField(
            model_name="orderitem",
            name="product",
            field=models.ForeignKey(
                on_delete=django.db.models.deletion.CASCADE,
                to="shop.product",
                verbose_name="產品名稱",
            ),
        ),
        migrations.AlterField(
            model_name="orderitem",
            name="quantity",
            field=models.PositiveIntegerField(default=1, verbose_name="數量"),
        ),
    ]
