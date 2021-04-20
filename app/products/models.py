from django.db import models

# Modelo de Categoria
class Category(models.Model):
    name = models.CharField(max_length=300)
    featured = models.BooleanField(default=False)

    def __str__(self):
        return self.name

    class Meta:
        db_table = 'categories'
        verbose_name = 'Categoría'
        verbose_name_plural = 'Categorías'
        ordering = ['-id']

# Modelo de Productos
class Product(models.Model):
    name = models.CharField(max_length=300)#Nombre del Producto
    category = models.ForeignKey(Category, on_delete=models.CASCADE)#Categoria
    image = models.ImageField(upload_to='products/', blank=True)
    stock  =  models.IntegerField(default='0', blank=True, null=True)
    detail = models.TextField(max_length=200, verbose_name='Informacion del producto')#Detalle
    price = models.DecimalField(max_digits=4, decimal_places=2)#Precio
    available = models.BooleanField(default=True)#Disponibilidad del Producto

    def __str__(self):
        return self.name + ' ' + str(self.stock)

    class Meta:
        db_table = 'products'
        verbose_name = 'Producto'
        verbose_name_plural = 'Productos'
        ordering = ['-id'] 
