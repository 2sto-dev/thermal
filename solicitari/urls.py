from django.urls import path
from .autocomplete_views import NumeAutocomplete
from .views import beneficiar_details, adauga_solicitare
from .views import AdaugaBeneficiar

urlpatterns = [
    path("nume-autocomplete/", NumeAutocomplete.as_view(), name="nume-autocomplete"),
    path("beneficiar-details/", beneficiar_details, name="beneficiar-details"),
    path("adauga-solicitare/", adauga_solicitare, name="adauga-solicitare"),
    path("adauga-beneficiar/", AdaugaBeneficiar.as_view(), name="adauga_beneficiar"),
    path("solicitare-details/", beneficiar_details, name="solicitare-details"),
    

]
