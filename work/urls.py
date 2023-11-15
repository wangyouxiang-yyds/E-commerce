"""
URL configuration for work project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from django.conf.urls.static import static
from django.conf import settings
from django_shop.views import homepage
from member.views import singnin, login, logout, forget_password, show_profile, edit_profile
from blog.views import BlogView, blog_single
from shop.views import shop_view, shop_detail_view, add_to_cart, remove_from_cart, cart_detail, empty_cart
from order.views import orderView, Confirmation_View, my_order
from contact.views import contactView
from payment.views import payment, payment_done, payment_canceled
from faq.views import FAQ_View
from article_crawler.views import newView
urlpatterns = [
                  path('', homepage),
                  path('index/', homepage),
                  path('signin/', singnin),
                  path('login/', login),
                  path('logout/', logout),
                  path('forget-password/', forget_password),
                  path('profile-details/', show_profile),
                  path('edit-profile/', edit_profile),
                  path('blog-right-sidebar/', BlogView),
                  path('blog-single/<int:article_id>', blog_single, name='blog-single'),
                  path('shop-sidebar/', shop_view),
                  path('shop-sidebar/<int:selected_category>', shop_view, name='shop_sidebar'),
                  path('product-single/<int:product_id>', shop_detail_view, name='shop_detail_view'),
                  path('cart/', cart_detail),
                  path('empty-cart/', empty_cart),
                  path('cart/additem/<int:id>/<int:quantity>/', add_to_cart, name='additem-url'),
                  path('cart/removeitem/<int:id>/', remove_from_cart, name='removeitem-url'),

                  path('checkout/', orderView),
                  path('order/', my_order),
                  path('confirmation/', Confirmation_View),
                  path('contact/', contactView),
                  path('admin/', admin.site.urls),
                  path(r'paypal/', include("paypal.standard.ipn.urls")),
                  path('payment/<int:id>/', payment),
                  path('done/', payment_done),
                  path('canceled/', payment_canceled),
                  path('faq/', FAQ_View),
                  path('blog-crawler/', newView),



              ] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
