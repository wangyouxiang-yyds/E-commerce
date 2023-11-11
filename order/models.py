from django.db import models
from member.models import memberModels
from shop.models import Product

# Create your models here.

class Order(models.Model):
    user = models.ForeignKey(memberModels, on_delete=models.CASCADE, verbose_name="名稱")
    full_name = models.CharField(verbose_name="全名", max_length=20)
    address = models.CharField(verbose_name="住址", max_length=20)
    zip_code = models.CharField(verbose_name="區碼", max_length=10)
    city = models.CharField(verbose_name="城市", max_length=10)
    phone = models.CharField(verbose_name="電話", max_length=15)
    create_date = models.DateTimeField(verbose_name="建立日期", auto_now_add=True)
    modify_date = models.DateTimeField(verbose_name="更新日期", auto_now=True)
    paid = models.BooleanField(verbose_name="付款狀態", default=False)

    class Meta:
        ordering = ('-create_date', )
        db_table = 'order'
    def __str__(self):
        return 'Order:{}'.format(self.id)

class OrderItem(models.Model):
    order = models.ForeignKey(Order, on_delete=models.CASCADE, related_name='item', verbose_name="訂單編號")
    product = models.ForeignKey(Product, on_delete=models.CASCADE, verbose_name="產品名稱")
    quantity = models.PositiveIntegerField(default=1, verbose_name="數量")

    def __str___(self):
        return '{}'.format(self.id)
