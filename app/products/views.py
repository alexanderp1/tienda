from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from .models import Product
from cart.cart import Cart
from django.db.models import Q


#Crear vista Producto
@login_required(login_url='/autenticacion/acceder')
def listado_productos(request):
    
    cart = Cart(request)
    products = Product.objects.all()

    queryset = request.GET.get("buscar")
    
    if queryset:
        products = Product.objects.filter(
            Q(name__icontains = queryset) |
            Q(detail__icontains = queryset)
        ).distinct()
    return render(request, "products/listado.html", {
        "products": products
    })


    