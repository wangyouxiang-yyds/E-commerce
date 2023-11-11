from django.contrib import admin
from .models import *
# Register your models here.


admin.site.register(Order)



class OrderItemAdmin(admin.ModelAdmin):
    list_display = ['order', 'product', 'quantity']
admin.site.register(OrderItem, OrderItemAdmin)