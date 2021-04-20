from django.contrib import admin
from .models import Category, Product

#Registrar modelo
admin.site.register([Category, Product])

