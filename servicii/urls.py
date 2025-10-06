from django.urls import path
from .views import (
    centrale_termice_view,
    serviciu_detail_view,
    aer_conditionat_view,
    serviciu_detail_clima_view,
)

urlpatterns = [
    
    path("centrale_termice/", centrale_termice_view, name="centrale_termice"),
    path("centrale_termice/<slug:slug>/", serviciu_detail_view, name="serviciu_detail"),
     path("aer_conditionat/", aer_conditionat_view, name="aer_conditionat"),
    path("aer_conditionat/<slug:slug>/", serviciu_detail_clima_view, name="serviciu_detail_clima"), 
    
]
