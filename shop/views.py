from django.http import HttpResponseRedirect
from django.shortcuts import render, get_object_or_404, redirect
from .models import *
from cart.cart import Cart


# Create your views here.
def shop_view(request, selected_category=0):
    product_category = Category.objects.all()

    if selected_category:
        product_item = Product.objects.filter(category__id=selected_category)
    else:
        product_item = Product.objects.all()
    cart = Cart(request).cart  # 取得購物車內容

    total_price = 0
    for _, item in cart.items():
        current_price = int(item['price']) * int(item['quantity'])
        total_price += current_price
    return render(request, 'shop-sidebar.html', locals())


def shop_detail_view(request, product_id):
    all_product = Product.objects.all()
    all_photo_random = Product.objects.all()[:4]
    product_content = get_object_or_404(all_product, pk=product_id)
    product = get_object_or_404(Product, pk=product_id)
    product_photos = product.productphoto_set.all()
    cart = Cart(request).cart  # 取得購物車內容

    total_price = 0
    for _, item in cart.items():
        current_price = int(item['price']) * int(item['quantity'])
        total_price += current_price
    return render(request, 'product-single.html', locals())


# 加入購物車
def add_to_cart(request, id, quantity):
    cart = Cart(request)
    product = Product.objects.get(id=id)
    quantity = request.POST.get('product-quantity', 1)  # 獲取表單中的數量，默認為1
    cart.add(product=product, quantity=quantity)
    return redirect('/')


# 移除購物車
def remove_from_cart(request, id):
    product = Product.objects.get(id=id)
    cart = Cart(request)
    cart.remove(product)
    return redirect('/cart/')


# 取的購物車內容
def cart_detail(request):
    all_categories = Category.objects.all()
    cart = Cart(request).cart  # 取得購物車內容
    total_price = 0
    for _, item in cart.items():
        current_price = int(item['price']) * int(item['quantity'])
        total_price += current_price
    if not cart:  # 如果購物車是空的
        return redirect('/empty-cart')  # 導向到空購物車頁面

    return render(request, 'cart.html', locals())


def empty_cart(request):
    cart = Cart(request).cart  # 取得購物車內容
    if not cart:  # 如果購物車仍然是空的
        return render(request, 'empty-cart.html')  # 顯示空購物車頁面
    else:
        return redirect('/cart')  # 如果不是空的，導向回購物車頁面
