from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from solicitari.models import Solicitari
from beneficiari.models import Beneficiar
from django.db import transaction
from django.views import View
from django.utils.decorators import method_decorator
from django.shortcuts import render

def home_view(request):
    return render(request, 'home.html')

def servicii_view(request):
    return render(request, 'partials/servicii.html')

def contact_view(request):
    return render(request, 'partials/contact.html')

def centrale_termice_view(request):
    return render(request, 'partials/centrale_termice.html')


def curata_nume(nume):
    """
    Elimină prefixul 'adauga_nume_' dacă există.
    """
    print(f"🔹 Nume primit pentru curățare: {nume}")  # Debugging
    if nume.startswith("adauga_nume_"):
        nume = nume.replace("adauga_nume_", "").strip()
    print(f"✅ Nume după curățare: {nume}")  # Debugging
    return nume


@method_decorator(csrf_exempt, name='dispatch')
class AdaugaBeneficiar(View):
    """
    Adaugă un beneficiar în `beneficiari_beneficiar` doar dacă nu există deja.
    """
    def post(self, request, *args, **kwargs):
        nume = curata_nume(request.POST.get("nume", "").strip())
        prenume = request.POST.get("prenume", "").strip()
        telefon = request.POST.get("telefon", "").strip()
        tip_client = request.POST.get("tip_client", "").strip()

        print(f"🔹 [AdaugaBeneficiar] Date primite: {nume}, {prenume}, {telefon}, {tip_client}")  # Debugging

        if Beneficiar.objects.filter(nume__iexact=nume, prenume__iexact=prenume).exists():
            return JsonResponse({"success": False, "message": "Numele există deja ca beneficiar."})

        beneficiar = Beneficiar.objects.create(
            nume=nume, prenume=prenume, telefon=telefon, tip_client=tip_client
        )

        return JsonResponse({"success": True, "message": f"{nume} a fost adăugat cu succes!"})


def beneficiar_details(request):
    """
    Verifică dacă numele există în `beneficiari_beneficiar` sau `solicitari_solicitari`.
    Dacă există, returnează datele beneficiarului sau ale solicitării pentru autofill.
    """
    nume = curata_nume(request.GET.get("nume", "").strip())

    print(f"🔹 [beneficiar_details] Nume primit: {nume}")  # Debugging

    if not nume:
        return JsonResponse({"error": "Numele este necesar"}, status=400)

    beneficiari = Beneficiar.objects.filter(nume__iexact=nume)
    solicitari = Solicitari.objects.filter(nume__iexact=nume)

    rezultate = []

    for beneficiar in beneficiari:
        rezultate.append({
            "id": f"b_{beneficiar.id}",
            "nume": beneficiar.nume,
            "prenume": beneficiar.prenume,
            "telefon": beneficiar.telefon,
            "tip_client": beneficiar.tip_client,
            "sursa": "beneficiar",
        })

    for solicitare in solicitari:
        rezultate.append({
            "id": f"s_{solicitare.id}",
            "nume": solicitare.nume,
            "prenume": solicitare.prenume,
            "telefon": solicitare.telefon,
            "tip_client": solicitare.tip_client,
            "sursa": "solicitare",
        })

    print(f"✅ [beneficiar_details] Rezultate găsite: {rezultate}")  # Debugging

    if len(rezultate) == 1:
        return JsonResponse(rezultate[0], safe=False)

    if len(rezultate) > 1:
        return JsonResponse({"multiple": True, "rezultate": rezultate}, safe=False)

    return JsonResponse({"nou": True, "message": "Numele nu există. Adăugați manual."})


@csrf_exempt
def adauga_solicitare(request):
    """
    Adaugă o solicitare în `solicitari_solicitari` doar dacă nu există deja.
    """
    if request.method != "POST":
        return JsonResponse({"error": "Metoda trebuie să fie POST!"}, status=405)

    nume = curata_nume(request.POST.get("nume", "").strip())
    prenume = request.POST.get("prenume", "").strip()
    telefon = request.POST.get("telefon", "").strip()
    tip_client = request.POST.get("tip_client", "").strip()

    print(f"🔹 [adauga_solicitare] Date primite: {nume}, {prenume}, {telefon}, {tip_client}")  # Debugging

    if not nume or not prenume or not telefon or not tip_client:
        return JsonResponse({"error": "Toate câmpurile sunt necesare!"}, status=400)

    tip_client = tip_client.lower()
    if tip_client in ["persoana fizica", "persoană fizică", "fizic"]:
        tip_client = "fizic"
    elif tip_client in ["persoana juridica", "persoană juridică", "juridic"]:
        tip_client = "juridic"
    else:
        return JsonResponse({"error": "Tip client invalid!"}, status=400)

    solicitare_existenta = Solicitari.objects.filter(nume__iexact=nume).first()
    if solicitare_existenta:
        return JsonResponse({
            "success": False,
            "message": f"Numele {nume} există deja într-o solicitare!",
            "solicitare": {
                "nume": solicitare_existenta.nume,
                "prenume": solicitare_existenta.prenume,
                "telefon": solicitare_existenta.telefon,
                "tip_client": solicitare_existenta.tip_client,
            }
        })

    try:
        with transaction.atomic():
            solicitare_noua = Solicitari.objects.create(
                nume=nume,
                prenume=prenume,
                telefon=telefon,
                tip_client=tip_client
            )

        print(f"✅ [adauga_solicitare] Solicitare salvată cu succes: {solicitare_noua}")  # Debugging

        return JsonResponse({
            "success": True,
            "message": f"Solicitarea pentru {nume} a fost adăugată cu succes!",
            "solicitare": {
                "nume": solicitare_noua.nume,
                "prenume": solicitare_noua.prenume,
                "telefon": solicitare_noua.telefon,
                "tip_client": solicitare_noua.tip_client,
            },
        })

    except Exception as e:
        return JsonResponse({"error": f"Eroare la salvare: {str(e)}"}, status=500)
