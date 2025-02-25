import os
import django
import xml.etree.ElementTree as ET

# 🔧 Configurează Django
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "goGAS.settings")  # Schimbă cu numele corect al proiectului tău
django.setup()

from adrese.models import CodPostalNumarStrazi, Localitate

def get_text(element, field_name):
    """ Returnează textul unui element XML sau None dacă nu există. """
    if element is None or element.text is None:
        print(f"⚠️ Câmpul lipsă: {field_name}")
        return None
    return element.text.strip()

def import_coduri_postale_numar_strazi(file_path):
    """Importă codurile poștale pentru numere de străzi dintr-un fișier XML în baza de date Django."""
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
            numar_start = get_text(rand.find("NUMAR_START"), "NUMAR_START")
            numar_sfarsit = get_text(rand.find("NUMAR_SFARSIT"), "NUMAR_SFARSIT")
            paritate = get_text(rand.find("PARITATE"), "PARITATE")
            cod_postal = get_text(rand.find("COD_POSTAL"), "COD_POSTAL")

            # 🔎 Verifică dacă datele esențiale lipsesc
            if cod is None or loc_cod is None or numar_start is None or numar_sfarsit is None or paritate is None or cod_postal is None:
                print(f"⚠️ Skipping: Date esențiale lipsă pentru codul {cod or 'N/A'}")
                continue

            # 🔎 Obține obiectul `Localitate`
            localitate = Localitate.objects.filter(cod=int(loc_cod)).first()
            if localitate is None:
                print(f"❌ Eroare: Localitatea cu cod {loc_cod} NU există în DB! Verifică XML-ul sau baza de date.")
                continue  # Sari peste înregistrare

            # 🔍 Verifică dacă codul poștal există deja cu aceleași date
            cod_postal_exist = CodPostalNumarStrazi.objects.filter(cod=int(cod)).first()
            if cod_postal_exist:
                if (
                    cod_postal_exist.loc_cod_id == localitate.cod
                    and cod_postal_exist.numar_start == int(numar_start)
                    and cod_postal_exist.numar_sfarsit == int(numar_sfarsit)
                    and cod_postal_exist.paritate == paritate
                    and cod_postal_exist.cod_postal == cod_postal
                ):
                    print(f"🔄 Skipping (fără schimbări): Cod postal {cod_postal} pentru localitatea {localitate.denumire}")
                    skipped_count += 1
                    continue  

            # 🏗️ Creează sau actualizează înregistrarea
            cod_postal_entry, created = CodPostalNumarStrazi.objects.update_or_create(
                cod=int(cod),
                defaults={
                    "loc_cod_id": localitate.cod,  # ✅ Folosim cod, nu id
                    "numar_start": int(numar_start),
                    "numar_sfarsit": int(numar_sfarsit),
                    "paritate": paritate,
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
import_coduri_postale_numar_strazi(r"C:\dev\aplicatii\goGAS\data\nomCodNrStrazi_25_08.11.2024.xml")
