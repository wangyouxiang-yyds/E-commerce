# Generated by Django 4.2.4 on 2023-11-06 21:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("order", "0001_initial"),
    ]

    operations = [
        migrations.RemoveField(
            model_name="order",
            name="county",
        ),
        migrations.AddField(
            model_name="order",
            name="address",
            field=models.CharField(default=1, max_length=20, verbose_name="住址"),
            preserve_default=False,
        ),
    ]
