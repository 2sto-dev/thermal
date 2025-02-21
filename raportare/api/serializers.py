from rest_framework import serializers
from solicitari.models import Solicitari
from django.contrib.auth.models import User


class SolicitariSerializer(serializers.ModelSerializer):
    data_solicit = serializers.DateField(format="%d.%m.%Y")  # Format zi.luna.an
    data_program = serializers.DateField(format="%d.%m.%Y")  # Format zi.luna.an
    ora_program = serializers.TimeField(format="%H:%M")  # Format hh:mm
    operator = serializers.SerializerMethodField()  # Tratare operator N/A

    class Meta:
        model = Solicitari
        fields = "__all__"

    def get_operator(self, obj):
        """Returnează numele operatorului sau 'N/A' dacă nu este alocat."""
        return obj.operator.username if obj.operator else "N/A"
