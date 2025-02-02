from django.urls import path, include

urlpatterns = [
    path("api/", include("raportare.api.urls")),  # Include API-ul
]
