import django_filters
from django_filters import rest_framework as filters
from .models import orders

class SalesFilter(filters.FilterSet):
    date_min = filters.DateFilter(field_name='order_date', lookup_expr='gte')
    date_max = filters.DateFilter(field_name='order_date', lookup_expr='lte')

    class Meta:
        model = orders
        fields = ['date_min', 'date_max']