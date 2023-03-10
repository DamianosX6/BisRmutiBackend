from django.db import models

# Create your models here.
from cProfile import label
from importlib.metadata import requires
from inspect import classify_class_attrs
from pickle import TRUE
import re
from sre_parse import CATEGORIES
from statistics import mode
from unicodedata import category
from django.db import models
from django.conf import settings
# from django.shortcuts import reverse
from django.urls import reverse
from django.contrib.auth.models import User , AbstractUser , PermissionsMixin ,BaseUserManager,UserManager
from uuid import uuid4
from django.urls import reverse
from django.db import models
from django.contrib.auth.models import AbstractBaseUser, BaseUserManager, PermissionsMixin

class CustomUserManager(BaseUserManager):
    def create_user(self, email, password=None, **extra_fields):
        if not email:
            raise ValueError('Email address is required')

        user = self.model(
            email=self.normalize_email(email),
            **extra_fields
        )
        user.set_password(password)
        user.save()
        return user

    def create_superuser(self, email, password, **extra_fields):
        extra_fields.setdefault('is_staff', True)
        extra_fields.setdefault('is_superuser', True)

        if extra_fields.get('is_staff') is not True:
            raise ValueError('Superuser must have is_staff=True.')
        if extra_fields.get('is_superuser') is not True:
            raise ValueError('Superuser must have is_superuser=True.')

        return self.create_user(email, password, **extra_fields)

class CustomUser(AbstractBaseUser, PermissionsMixin):
    email = models.EmailField(unique=True)
    first_name = models.CharField(max_length=30, blank=True, null=True)
    last_name = models.CharField(max_length=30, blank=True, null=True)
    tel = models.IntegerField()
    is_active = models.BooleanField(default=True)
    is_staff = models.BooleanField(default=False)

    date_joined = models.DateTimeField(auto_now_add=True)

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = []

    objects = CustomUserManager()

    def __str__(self):
        return self.email

    def get_full_name(self):
        full_name = '%s %s' % (self.first_name, self.last_name)
        return full_name.strip()

    def get_short_name(self):
        return self.first_name


class car_brand(models.Model):
    car_yeehaw = models.CharField(max_length=250)

    car_style = models.CharField(max_length=250)
    car_size = models.CharField(max_length=250)
    car_price = models.CharField(max_length=250)
    
class orders(models.Model):
    order_date = models.DateField(auto_now_add=True)
    cus_id =  models.ForeignKey(CustomUser,related_name='pep1',on_delete=models.CASCADE)
    order_status = models.BooleanField
    
class order_list(models.Model):
    order_id = models.ForeignKey(orders, on_delete=models.CASCADE)
    car_brand = models.ForeignKey(car_brand, on_delete=models.CASCADE)
    class Meta:
        # กำหนดค่า unique_together เพื่อกำหนดว่าฟิลด์ book และ user ต้องไม่ซ้ำกัน
        unique_together = ('order_id', 'car_brand')