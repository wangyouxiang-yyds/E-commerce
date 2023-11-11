from django.shortcuts import render, redirect
from django.urls import reverse
from django.views.decorators.csrf import csrf_exempt
from shop.models import Category
from order.models import Order, OrderItem
from work import settings
from paypal.standard.forms import PayPalPaymentsForm


# Create your views here.

@csrf_exempt
def payment_done(request):
    return render(request, 'payment_done.html')


@csrf_exempt
def payment_canceled(request):
    return render(request, 'payment_canceled.html')

@csrf_exempt
def payment(request, id):
    messages = ''
    try:
        all_categories = Category.objects.all()
        order = Order.objects.get(id=id)
        all_order_item = OrderItem.objects.filter(order=order)

        items = list()
        total = 0
        for order_item in all_order_item:
            t = dict()
            t['name'] = order_item.product.name
            t['price'] = order_item.product.price
            t['quantity'] = order_item.quantity
            t['subtotal'] = order_item.product.price * order_item.quantity
            total = total + order_item.product.price
            items.append(t)
        host = request.get_host()
        paypal_dict = {
            "business": settings.PAYPAL_RECEIVER_EMAIL,
            "amount": total,
            "item_name": "Alan店商網站編號:{}".format(id),
            "invoice": "invoice-{}".format(id),
            "currency_code": 'TWD',
            "notify_url": "http://{}{}".format(host, reverse('paypal-ipn')),
            "return_url": "http://{}/done/".format(host),
            "cancel_url": "http://{}/canceled/".format(host),
        }
        paypal_form = PayPalPaymentsForm(initial=paypal_dict)
        return render(request, 'payment.html', locals())

    except:
        return redirect('/order')
