from django.shortcuts import render
from rest_framework.generics import ListAPIView ,ListCreateAPIView
from rest_framework import filters
from .models import car_brand
from .serializers import ProductSerializer , OrderSerializer , OrderFilter
from rest_framework.pagination import LimitOffsetPagination
from rest_framework.decorators import api_view
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from .models import orders

class ProductPagination(LimitOffsetPagination):
    default_limit = 10
    max_limit = 20
class ProductListView(ListAPIView):
    serializer_class = OrderSerializer
    queryset = orders.objects.all()
    # filter_backends = [filters.SearchFilter]
    # search_fields = ['car_style', 'car_size', 'car_price']
    pagination_class = ProductPagination
   
class OrderCreateView(APIView):
    def post(self, request, format=None):
        try:
            if request.method == 'POST':
                serializer = OrderSerializer(data=request.data)
                if serializer.is_valid():
                    serializer.save()
                    return Response(serializer.data, status=status.HTTP_201_CREATED)

                else:
                    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        except Exception as e:
                data = {'message': 'เกิดข้อผิดพลาด'}
                return Response(data, status=status.HTTP_500_INTERNAL_SERVER_ERROR)
            
class ProductCreateView(APIView):
    def post(self, request, format=None):
        try:
            if request.method == 'POST':
                serializer = ProductSerializer(data=request.data)
                if serializer.is_valid():
                    serializer.save()
                    return Response(serializer.data, status=status.HTTP_201_CREATED)

                else:
                    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        except Exception as e:
                data = {'message': 'เกิดข้อผิดพลาด'}
                return Response(data, status=status.HTTP_500_INTERNAL_SERVER_ERROR)
            
@api_view(['PUT'])
def update_product(request, pk):
    try:
        product = car_brand.objects.get(pk=pk)
    except car_brand.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    serializer = ProductSerializer(product, data=request.data)
    if serializer.is_valid():
        serializer.save()
        return Response(serializer.data)
    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['DELETE'])
def delete_product(request, pk):
    try:
        product = car_brand.objects.get(pk=pk)
    except car_brand.DoesNotExist:
        data = {'message': 'เกิดข้อผิดพลาด'}

        return Response(data,status=status.HTTP_404_NOT_FOUND)

    product.delete()
    data = {'message': 'ลบข้อมูลแล้ว'}

    return Response(data,status=status.HTTP_204_NO_CONTENT)
from rest_framework import filters

# class QuestionsAPIView(generics.ListCreateAPIView):
#     search_fields = ['question_text']
#     filter_backends = (filters.SearchFilter,)
#     queryset = orders.objects.all()
#     serializer_class = OrderSerializer
from rest_framework import generics
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework.filters import OrderingFilter
from .filters import SalesFilter
from django.utils.dateparse import parse_date

def index(request):
    return render(request, 'login.html')

# class OrderListView(APIView):
#     def get(self, request, format=None):
#         start_date_str = request.query_params.get('start_date')
#         end_date_str = request.query_params.get('end_date')
#         start_date = parse_date(start_date_str) if start_date_str else None
#         end_date = parse_date(end_date_str) if end_date_str else None
        
#         if start_date and end_date:
#             order_queryset = orders.objects.filter(order_date__range=[start_date, end_date])
#         elif start_date:
#             order_queryset = orders.objects.filter(order_date__gte=start_date)
#         elif end_date:
#             order_queryset = orders.objects.filter(order_date__lte=end_date)
#         else:
#             order_queryset = orders.objects.all()
        
#         serializer = OrderSerializer(order_queryset, many=True)
#         return Response(serializer.data)
    
from datetime import datetime

class OrderListView(APIView):
    def get(self, request, format=None):
        start_date_str = request.query_params.get('start_date')
        end_date_str = request.query_params.get('end_date')
        start_date = datetime.strptime(start_date_str, '%Y-%m-%d').date() if start_date_str else None
        end_date = datetime.strptime(end_date_str, '%Y-%m-%d').date() if end_date_str else None
        
        if start_date and end_date:
            order_queryset = orders.objects.filter(order_date__range=[start_date, end_date])
        elif start_date:
            order_queryset = orders.objects.filter(order_date__gte=start_date)
        elif end_date:
            order_queryset = orders.objects.filter(order_date__lte=end_date)
        else:
            order_queryset = orders.objects.all()
        
        serializer = OrderSerializer(order_queryset, many=True)
        return Response(serializer.data) 
# class OrderListView(APIView):
#     def get(self, request, format=None):
#         start_date_str = request.query_params.get('start_date')
#         end_date_str = request.query_params.get('end_date')
#         start_date = parse_date(start_date_str) if start_date_str else None
#         end_date = parse_date(end_date_str) if end_date_str else None
        
#         if start_date and end_date:
#             order_queryset = orders.objects.filter(order_date__range=[start_date, end_date])
#         elif start_date:
#             orders = orders.objects.filter(order_date__gte=start_date)
#         elif end_date:
#             order_queryset = orders.objects.filter(order_date__lte=end_date)
#         else:
#             order_queryset = orders.objects.all()
        
#         serializer = OrderSerializer(order_queryset, many=True)
#         return Response(serializer.data)
    
class OrderCreateView1(ListAPIView):
    serializer_class = OrderSerializer
    queryset = orders.objects.all()
