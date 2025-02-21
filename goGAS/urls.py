"""
URL configuration for goGAS project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""

from django.contrib import admin
from django.urls import path, include
from goGAS import views  # Importă funcția personalizat
from goGAS.views import custom_login


urlpatterns = [
    path("admin/", admin.site.urls),
    path("admin/login/", custom_login, name="custom_login"),
    path("", include("solicitari.urls")),
    path("api/", include("raportare.api.urls")),
    path("formular/", views.formular_view, name="formular"),
    path(
        "solicitari/", include("solicitari.urls")
    ),  # Include toate rutele din solicitari/urls.py
]
