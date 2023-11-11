# Generated by Django 4.2.4 on 2023-11-06 20:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("shop", "0006_category_category_photo"),
    ]

    operations = [
        migrations.AddField(
            model_name="product",
            name="product_photo",
            field=models.ImageField(
                max_length=200,
                null=True,
                upload_to="product_image",
                verbose_name="產品圖片",
            ),
        ),
    ]