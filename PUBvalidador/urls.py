"""PUBvalidador URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.8/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))

** Consultas
https://amatellanes.wordpress.com/2013/07/12/django-usando-el-sistema-de-autentificacion-de-django/
"""
from django.conf.urls import include, url
from django.contrib import admin
from django.contrib.auth.views import login, login_required

urlpatterns = [
    url(r'^admin/', include(admin.site.urls)),
#    url(r'^$', 'consultaCatalogos.views.main', name='main'),
#    url(r'^signup$', 'consultaCatalogos.views.signup', name='signup'),
    url(r'^$', login, {'template_name': 'login.html', }, name="login"),
#    url(r'^home$', 'consultaCatalogos.views.home', name='home'),
]
