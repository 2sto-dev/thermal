import os
import django
import xml.etree.ElementTree as ET

# Configurează Django
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "goGAS.settings")  # Schimbă cu numele corect al proiectului tău
django.setup()

from adrese.models import StareArtera  # Asigură-te că modelul este corect

def import_stari_artere_from_xml(file_path):
    tree = ET.parse(file_path)
    root = tree.getroot()

    for rand in root.findall('rand'):
        cod = rand.find('COD').text.strip()
        nume_stare = rand.find('NUME_STARE').text.strip()

        # Creează sau actualizează starea arterei
        stare_artera, created = StareArtera.objects.update_or_create(
            cod=cod,
            defaults={'nume_stare': nume_stare}
        )

        print(f"{'Creat' if created else 'Actualizat'}: {stare_artera}")

# Rulează importul
import_stari_artere_from_xml(r"C:\dev\aplicatii\goGAS\data\nomStariArtereMf.xml")
