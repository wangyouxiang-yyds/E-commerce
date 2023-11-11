from django.db import models


# Create your models here.

class FAQModels(models.Model):
    order_status = models.CharField(verbose_name="訂單問題", max_length=255)
    shipping_delivery = models.CharField(verbose_name="運送問題", max_length=255)
    payment = models.CharField(verbose_name="付款方式", max_length=255)
    return_exchange = models.CharField(verbose_name="退款與換貨", max_length=255)
    privacy_policy = models.CharField(verbose_name="隱私權政策", max_length=255)

    class Meta:
        db_table = 'faq'
        verbose_name = '常見問題'
        verbose_name_plural = '常見問題'
