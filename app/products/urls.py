from django.urls import path
from .views import listado_productos, nosotros

urlpatterns = [
    path('', listado_productos, name='listado_productos'),
    path('nosotros/', nosotros, name="nosotros"),
]