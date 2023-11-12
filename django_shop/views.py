from django.shortcuts import render, redirect
from shop.models import Category, Product
from .models import *
from cart.cart import Cart
# Create your views here.

def homepage(request):

    category = Category.objects.all().order_by('-pk')
    product_item = Product.objects.all().order_by('?')[:3]

    banner = BannerModel.objects.all()
    all_categories = Category.objects.all()
    cart = Cart(request).cart  # 取得購物車內容

    total_price = 0
    for _, item in cart.items():
        current_price = int(item['price']) * int(item['quantity'])
        total_price += current_price

    return render(request, 'index.html', locals())

