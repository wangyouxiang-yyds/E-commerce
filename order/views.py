from django.shortcuts import render, redirect
from .models import *
from shop.models import Category
from member.models import memberModels
from cart.cart import Cart


# Create your views here.


# 取的購物車內容
def orderView(request):
    all_categories = Category.objects.all()


    cart = Cart(request).cart  # 取得購物車內容

    total_price = 0
    for _, item in cart.items():
        current_price = int(item['price']) * int(item['quantity'])
        total_price += current_price

    if "name" in request.POST:
        user_id = request.session.get('user_id')  # 從session中獲取用戶的ID
        user = memberModels.objects.get(id=user_id)
        name = request.POST['name']
        address = request.POST['address']
        zipcode = request.POST['zipcode']
        city = request.POST['city']
        phone = request.POST['phone']
        cart = Cart(request).cart
        # 創建訂單
        order = Order(
            user=user,
            full_name=name,
            address=address,
            zip_code=zipcode,
            city=city,
            phone=phone
        )
        order.save()



        for product_id, item in cart.items():
            product = Product.objects.get(id=product_id)
            quantity = item['quantity']
            order_item = OrderItem(order=order, product=product, quantity=quantity)
            order_item.save()
        cart.clear()
        return redirect('/confirmation')

    return render(request, 'checkout.html', locals())


def my_order(request):
    all_categories = Category.objects.all()
    user_id = request.session.get('user_id')  # 從session中獲取用戶的ID
    user = memberModels.objects.get(id=user_id)
    orders = Order.objects.filter(user=user)
    return render(request, 'order.html', locals())




def Confirmation_View(request):
    cart = Cart(request).cart  # 取得購物車內容
    cart.clear()

    return render(request, 'confirmation.html', locals())


