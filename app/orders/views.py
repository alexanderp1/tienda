from django.contrib.auth.decorators import login_required
from django.contrib import messages
from django.core.mail import send_mail
from django.shortcuts import redirect
from django.template.loader import render_to_string
from django.utils.html import strip_tags
from django.views.generic.list import ListView
from django.views.generic import DeleteView
from django.views.generic import DetailView
from .models import Order, OrderLine, Product
from cart.cart import Cart

from django.shortcuts import render
from django.views.generic import ListView
from django.views.generic import View
from django.http import HttpResponse
from django.template.loader import get_template

import os
from django.conf import settings
from django.http import HttpResponse
from django.template.loader import get_template
from xhtml2pdf import pisa



# Create your views here.
@login_required(login_url='/autenticacion/acceder')
def process_order(request):
    order = Order.objects.create(user=request.user, completed=True)
    cart = Cart(request)
    order_lines = list()
    for key, value in cart.cart.items():
        order_lines.append(
            OrderLine(
                product_id=key,
                quantity=value["quantity"],
                user=request.user,
                order=order
            )
        )

    OrderLine.objects.bulk_create(order_lines)

    send_order_email(
        order=order,
        order_lines=order_lines,
        username=request.user.username,
        user_email=request.user.email
    )
    
    cart.clear()

    messages.success(request, "El pedido se ha creado correctamente!")
    return redirect("listado_productos")

def send_order_email(**kwargs):
    subject = "Gracias por tu pedido"
    html_message = render_to_string("emails/nuevo_pedido.html", {
        "order": kwargs.get("order"),
        "order_lines": kwargs.get("order_lines"),
        "username": kwargs.get("username")
    })
    plain_message = strip_tags(html_message)
    from_email = "tiendapriscila01@gmail.com"
    to = kwargs.get("user_email")
    send_mail(subject, plain_message, from_email, [to], html_message=html_message)


class OrderList(ListView):
    model = Order
    ordering = ["-id"]
    template_name = "orders/listado.html"

    def get_queryset(self):
        queryset = super().get_queryset()
        return queryset.filter(user=self.request.user)


class OrderDetail(DetailView):
    model = Order
    template_name = "orders/detalle.html"

    def get_queryset(self):
        queryset = super().get_queryset()
        return queryset.filter(user=self.request.user)


class SaleInvoicePdfView(View):
    def get(self, request, *args, **kwargs):
        try:
            template = get_template('orders/detallePdf.html')
            context = {
                'order': Order.objects.get(pk=self.kwargs['pk']),
                'comp': {'name': 'TIENDA PRISCILA', 'address': 'Marcabeli, Ecuador'},
                'icon': '{}{}'.format(settings.MEDIA_URL, 'logo.png')
                }
            html = template.render(context)
            response = HttpResponse(content_type= 'application/pdf')
            #response['Content-Disposition'] = 'attachment: filename="report.pdf"'
            pisaStatus = pisa.CreatePDF(
                html, dest=response)
            return response
        except:
            pass
        return HttpResponseRedirect(reverse_lazy('erp:sale_list'))
