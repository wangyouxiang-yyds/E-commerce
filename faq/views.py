from django.shortcuts import render
from .models import *
# Create your views here.
from cart.cart import Cart

def FAQ_View(request):
    faq = FAQModels.objects.first()
    cart = Cart(request).cart  # 取得購物車內容

    total_price = 0
    for _, item in cart.items():
        current_price = int(item['price']) * int(item['quantity'])
        total_price += current_price

    return render(request, 'faq.html', locals())