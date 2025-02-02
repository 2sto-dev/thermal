from django.urls import path, include
from rest_framework.routers import DefaultRouter
from rest_framework_simplejwt.views import TokenObtainPairView, TokenRefreshView
from .views import SolicitariViewSet

# Creăm un router pentru API-ul solicitărilor
router = DefaultRouter()
router.register(r"solicitari", SolicitariViewSet, basename="solicitari")

urlpatterns = [
    # Endpoint-uri pentru autentificare JWT
    path(
        "token/", TokenObtainPairView.as_view(), name="token_obtain_pair"
    ),  # Autentificare
    path(
        "token/refresh/", TokenRefreshView.as_view(), name="token_refresh"
    ),  # Reîmprospătare token
    # Endpoint-urile API pentru solicitări
    path("", include(router.urls)),
]
