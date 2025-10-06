from django.contrib.auth.decorators import login_required
from django.shortcuts import redirect, render


def custom_login(request):
    """Redirecționează utilizatorii după autentificare."""
    user = request.user
    if user.is_authenticated:
        if user.is_superuser:
            return redirect("/admin/dashboard/")  # Superuser -> Dashboard
        else:
            return redirect("/admin/solicitari/solicitari/")  # Staff -> Solicitări
    return redirect("/admin/login/")  # Dacă nu e autenticat, trimite-l la login


from django.shortcuts import render
from beneficiari.models import Beneficiar


def formular_view(request):
    beneficiari = Beneficiar.objects.all()
    return render(request, "formular.html", {"beneficiari": beneficiari})

def centrale_termice_view(request):
    return render(request, 'partials/centrale_termice.html')
