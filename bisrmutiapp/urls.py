from django.urls import path
from .views import ProductListView,OrderCreateView ,update_product,delete_product,ProductCreateView,index,OrderListView,OrderCreateView1
from . import views
urlpatterns = [
    path('products/', ProductListView.as_view()),
    path('product_create/', ProductCreateView.as_view(), name='product_create'),
    path('orders/', OrderListView.as_view(), name='orders'),
    path('orders1/', OrderCreateView1.as_view(), name='orders1'),

    path('order_create/', OrderCreateView.as_view(), name='order_create'),
    path('update_product/<int:pk>', update_product, name='update_product'),
    path('delete_product/<int:pk>', delete_product, name='delete_product'),

]