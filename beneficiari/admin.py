from django.contrib import admin
from django.http import HttpResponseRedirect
from django.urls import path
from django.shortcuts import render
from .models import Beneficiar
from solicitari.forms import BeneficiarForm


@admin.register(Beneficiar)
class BeneficiarAdmin(admin.ModelAdmin):
    list_display = ("nume", "prenume", "telefon", "tip_client")
    search_fields = ["nume", "prenume", "telefon", "tip_client"]
    list_filter = ["tip_client"]
