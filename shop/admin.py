from django.contrib import admin
from .models import *


# Register your models here.

class CategoryAdmin(admin.ModelAdmin):
    list_display = ['category_name']


admin.site.register(Category, CategoryAdmin)


class ProductAdmin(admin.ModelAdmin):
    list_display = ['category', 'pc_id', 'available', 'is_onsale','name', 'stock', 'price', 'modify_date', 'create_date']


admin.site.register(Product, ProductAdmin)


class ProductPhotoAdmin(admin.ModelAdmin):
    list_display = ['product', 'product_photo']


admin.site.register(ProductPhoto, ProductPhotoAdmin)
