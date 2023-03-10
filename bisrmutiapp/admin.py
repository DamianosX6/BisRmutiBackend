from django.contrib import admin
from .models import CustomUser ,order_list ,orders , car_brand
admin.site.register(CustomUser)
admin.site.register(orders)
admin.site.register(order_list)
admin.site.register(car_brand)

# Register your models here.
