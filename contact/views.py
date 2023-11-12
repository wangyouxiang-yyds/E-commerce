from django.shortcuts import render
from .models import *
from django.core.mail import EmailMessage
# Create your views here.
from cart.cart import Cart
def contactView(request):
    if "name" in request.POST:
        name = request.POST['name']
        email = request.POST['email']
        subject = request.POST['subject']
        message = request.POST['message']

        obj = ContactModels.objects.create(name=name,
                                           email=email,
                                           subject=subject,
                                           message=message
                                           )

        mail_body = u'''名字:{}
        信箱:{}
        主旨:{}
        反應的內容:{}'''.format(name, email, subject, message)

        email = EmailMessage('來自' + name + '的意見', mail_body, email, ['tree8454@gmail.com'])
        email.send()

    cart = Cart(request).cart  # 取得購物車內容

    total_price = 0
    for _, item in cart.items():
        current_price = int(item['price']) * int(item['quantity'])
        total_price += current_price
    return render(request, 'contact.html', locals())