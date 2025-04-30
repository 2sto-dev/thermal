from django.views.generic import TemplateView
from django.conf import settings
from django.conf.urls.static import static
from django.urls import path
from .autocomplete_views import NumeAutocomplete
from .views import beneficiar_details, adauga_solicitare
from .views import AdaugaBeneficiar
from solicitari.views import home_view
from django.contrib.auth import views as auth_views
from . import views
from .views import centrale_termice_view

urlpatterns = [
    path('', home_view, name='home'),
    path("nume-autocomplete/", NumeAutocomplete.as_view(), name="nume-autocomplete"),
    path("beneficiar-details/", beneficiar_details, name="beneficiar-details"),
    path("adauga-solicitare/", adauga_solicitare, name="adauga-solicitare"),
    path("adauga-beneficiar/", AdaugaBeneficiar.as_view(), name="adauga_beneficiar"),
    path("solicitare-details/", beneficiar_details, name="solicitare-details"),
    path('servicii/', TemplateView.as_view(template_name='partials/servicii.html'), name='servicii'),
    path('contact/', views.contact_view, name='contact'),
    path('centrale_termice/', views.centrale_termice_view, name='centale_termice'),

    path('logout/', auth_views.LogoutView.as_view(), name='logout'),
        
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)