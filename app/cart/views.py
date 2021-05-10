from django.shortcuts import render, redirect
from products.models import Product
from orders.models import Order, OrderLine
#from django.contrib.auth.decorators import login_required
from .cart import Cart
from django.views.generic.list import ListView


#@login_required(login_url="/autenticacion/login")
def add_product(request, product_id):
    cart = Cart(request)
    product = Product.objects.get(id=product_id)
    products = Product.objects.filter()
    cart.add(product=product)
    return redirect("listado_productos")
    


#@login_required(login_url="/autenticacion/login")
def remove_product(request, product_id):
    cart = Cart(request)
    product = Product.objects.get(id=product_id)
    cart.remove(product)
    return redirect("listado_productos")


#@login_required(login_url="/autenticacion/login")
def decrement_product(request, product_id):
    cart = Cart(request)
    product = Product.objects.get(id=product_id)
    cart.decrement(product=product)
    return redirect("listado_productos")


#@login_required(login_url="/autenticacion/login")
def clear_cart(request):
    cart = Cart(request)
    cart.clear()
    return redirect("listado_productos")
