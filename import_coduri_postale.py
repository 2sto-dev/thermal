import os
import django
import xml.etree.ElementTree as ET

# 🔧 Configurează Django
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "goGAS.settings")  # Schimbă cu numele corect al proiectului tău
django.setup()

from adrese.models import CodPostalAlteStrazi, Localitate

def get_text(element, field_name):
    """ Returnează textul unui element XML sau None dacă nu există. """
    if element is None or element.text is None:
        print(f"⚠️ Câmpul lipsă: {field_name}")
        return None
    return element.text.strip()

def import_coduri_postale_from_xml(file_path):
    """Importă codurile poștale dintr-un fișier XML în baza de date Django."""
    if not os.path.exists(file_path):
        print(f"❌ Fișierul nu există: {file_path}")
        return

    tree = ET.parse(file_path)
    root = tree.getroot()
    imported_count = 0
    skipped_count = 0
    updated_count = 0

    for rand in root.findall("rand"):
        try:
            cod = get_text(rand.find("COD"), "COD")
            loc_cod = get_text(rand.find("LOC_COD"), "LOC_COD")
            bloc = get_text(rand.find("BLOC"), "BLOC")
            cod_postal = get_text(rand.find("COD_POSTAL"), "COD_POSTAL")

            # 🔎 Verifică dacă datele esențiale lipsesc
            if cod is None or loc_cod is None or cod_postal is None:
                print(f"⚠️ Skipping: Date esențiale lipsă pentru codul poștal {cod or 'N/A'}")
                continue

            # 🔎 Obține obiectul `Localitate`
            localitate = Localitate.objects.filter(cod=int(loc_cod)).first()
            if localitate is None:
                print(f"❌ Eroare: Localitatea cu cod {loc_cod} NU există în DB! Verifică XML-ul sau baza de date.")
                continue  # Sari peste înregistrare

            # 🔍 Verifică dacă codul poștal există deja cu aceleași date
            cod_postal_exist = CodPostalAlteStrazi.objects.filter(cod=int(cod)).first()
            if cod_postal_exist:
                if (
                    cod_postal_exist.loc_cod_id == localitate.cod
                    and cod_postal_exist.bloc == bloc
                    and cod_postal_exist.cod_postal == cod_postal
                ):
                    print(f"🔄 Skipping (fără schimbări): Cod postal {cod_postal} pentru localitatea {localitate.denumire}")
                    skipped_count += 1
                    continue  

            # 🏗️ Creează sau actualizează înregistrarea
            cod_postal_entry, created = CodPostalAlteStrazi.objects.update_or_create(
                cod=int(cod),
                defaults={
                    "loc_cod_id": localitate.cod,  # ✅ Folosim cod, nu id
                    "bloc": bloc,
                    "cod_postal": cod_postal
                }
            )

            if created:
                print(f"✅ Adăugat: {cod_postal_entry}")
                imported_count += 1
            else:
                print(f"♻️ Actualizat: {cod_postal_entry}")
                updated_count += 1

        except Exception as e:
            print(f"❌ Eroare la importul codului poștal {cod or 'N/A'}: {e}")

    print(f"\n📊 Rezumat import:\n - Adăugate: {imported_count}\n - Actualizate: {updated_count}\n - Ignorate (fără schimbări): {skipped_count}")

# 🏃‍♂️ Rulează importul cu calea absolută
import_coduri_postale_from_xml(r"C:\dev\aplicatii\goGAS\data\nomCodAlteleStazi_25_08.11.2024.xml")
