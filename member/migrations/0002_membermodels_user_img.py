# Generated by Django 4.2.4 on 2023-11-11 09:13

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("member", "0001_initial"),
    ]

    operations = [
        migrations.AddField(
            model_name="membermodels",
            name="user_img",
            field=models.ImageField(
                max_length=200, null=True, upload_to="user_img", verbose_name="用戶大頭貼"
            ),
        ),
    ]