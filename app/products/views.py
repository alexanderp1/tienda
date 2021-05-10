from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from .models import Product, Category
from cart.cart import Cart
from django.db.models import Q



#Crear vista Producto
#@login_required(login_url='/autenticacion/acceder')
def listado_productos(request):
    
    cart = Cart(request)
    products = Product.objects.all()
    

    #codigo de prueba de busqueda
    search = request.GET.get('search') if request.GET.get('search') else ''
    category_id = request.GET.get('category_id')
    category_id = int(category_id) if category_id else ''

    if search: 
        products = Product.objects.filter(name__icontains=search)
    else:
        products = Product.objects

    if category_id: 
        products = products.filter(category_id=category_id)
    

    products = products.all()
    categories = Category.objects.all()
    
    #codigo funcional

    categories = Category.objects.all()

    queryset = request.GET.get("buscar")

    if queryset:
        products = Product.objects.filter(
            Q(name__icontains = queryset) |
            Q(detail__icontains = queryset)
        ).distinct()
    return render(request, "products/listado.html", {
        "products": products, "categories": categories, 
        'search':search, 'category_id':category_id
    })  


def nosotros(request):
    return render(request, 'layouts/nosotros.html')


