from django.contrib import admin
from .models import Judet, Localitate, Strada


@admin.register(Judet)
class JudetAdmin(admin.ModelAdmin):
    search_fields = ["denumire"]  # Permite căutarea după nume în autocomplete


@admin.register(Localitate)
class LocalitateAdmin(admin.ModelAdmin):
    search_fields = ["denumire", "cod"]  # Permite căutarea după denumire și cod


@admin.register(Strada)
class StradaAdmin(admin.ModelAdmin):
    search_fields = ["denumire", "cod"]  # Permite căutarea după numele străzii
