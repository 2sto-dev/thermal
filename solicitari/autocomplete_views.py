from dal import autocomplete
from django.http import JsonResponse
from beneficiari.models import Beneficiar
from solicitari.models import Solicitari


class NumeAutocomplete(autocomplete.Select2QuerySetView):
    """
    Autocomplete pentru căutarea în tabelele Beneficiari și Solicitări.
    Dacă numele nu este găsit, returnează opțiunea „Adaugă nume nou”.
    """

    def get_queryset(self):
        if not self.request.user.is_authenticated:
            return Beneficiar.objects.none()

        search_term = self.q or ""

        try:
            # Obține numele din Beneficiari și Solicitări
            qs_beneficiari = Beneficiar.objects.filter(
                nume__icontains=search_term
            ).values_list("nume", flat=True)
            qs_solicitari = Solicitari.objects.filter(
                nume__icontains=search_term
            ).values_list("nume", flat=True)

            # Elimină duplicate și sortează rezultatele
            nume_unic = sorted(set(qs_beneficiari) | set(qs_solicitari))

            results = [{"id": nume, "text": nume} for nume in nume_unic]

            # Dacă numele nu există în listă, adaugă opțiunea de creare
            if not nume_unic and search_term:
                results.append({"id": "adauga_nume", "text": f"Adaugă '{search_term}'"})

            return results

        except Exception as e:
            print(f"❌ Eroare în NumeAutocomplete: {e}")
            return []

    def render_to_response(self, context, **response_kwargs):
        """
        Returnează un răspuns JSON pentru Select2.
        """
        return JsonResponse(
            {"results": self.get_queryset(), "pagination": {"more": False}}
        )
