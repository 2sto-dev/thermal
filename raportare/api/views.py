from rest_framework import viewsets
from rest_framework.permissions import IsAuthenticated
from solicitari.models import Solicitari
from .serializers import SolicitariSerializer


class SolicitariViewSet(viewsets.ModelViewSet):
    """
    API pentru gestionarea solicitărilor.
    - Superuserii văd toate solicitările.
    - Staff-ul și utilizatorii normali văd doar solicitările unde sunt operatori.
    """

    serializer_class = SolicitariSerializer
    permission_classes = [IsAuthenticated]

    def get_queryset(self):
        """
        Filtrarea obiectelor astfel încât utilizatorii normali să vadă doar solicitările lor.
        """
        user = self.request.user
        print(
            f"Utilizator logat: {user.username}, is_superuser: {user.is_superuser}, is_staff: {user.is_staff}"
        )

        if user.is_superuser:
            return Solicitari.objects.all()  # Superuser vede toate solicitările

        # Staff-ul și utilizatorii normali văd doar solicitările unde sunt operatori
        return Solicitari.objects.filter(operator=user)
