from rest_framework import serializers
from .models import car_brand ,orders,CustomUser
import django_filters
from django_filters import rest_framework as filters

class ProductSerializer(serializers.ModelSerializer):
    class Meta:
        model = car_brand
        fields = '__all__'
        
class AddressSerializer(serializers.ModelSerializer):
    class Meta:
        model = CustomUser
        fields = ['email']
               
class OrderSerializer(serializers.ModelSerializer):
    cus_id = AddressSerializer()
    class Meta:
        model = orders
        fields = '__all__'
        
class OrderFilter(django_filters.FilterSet):
    ordered_date = django_filters.DateFromToRangeFilter()

    class Meta:
        model = orders
        fields = ['order_date']
    
