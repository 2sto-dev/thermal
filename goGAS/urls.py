
from django.contrib import admin
from django.urls import path, include
from goGAS import views
from goGAS.views import custom_login
from servicii.views import centrale_termice_view  # ✅ Import 
from servicii.views import aer_conditionat_view, serviciu_detail_clima_view
from django.urls import include
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path("admin/", admin.site.urls),
    path('i18n/', include('django.conf.urls.i18n')),
    path("admin/login/", custom_login, name="custom_login"),
    path("", include("solicitari.urls")),
    path("adrese/", include("adrese.urls")),
    path("api/", include("raportare.api.urls")),
    path("formular/", views.formular_view, name="formular"),
    path("servicii/", include("servicii.urls")),
    path("solicitari/", include("solicitari.urls")),
    path("centrale_termice/", centrale_termice_view, name="centrale_termice"),  
    path("aer_conditionat/", aer_conditionat_view, name="aer_conditionat"),
    path("aer_conditionat/<slug:slug>/", serviciu_detail_clima_view, name="serviciu_detail_clima"),

 
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)