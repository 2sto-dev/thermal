import requests
import json
import time
import os
from datetime import datetime

# 🔹 Configurare API
API_BASE_URL = "http://172.16.0.105:8000/api/"
TOKEN_URL = API_BASE_URL + "token/"
TOKEN_REFRESH_URL = API_BASE_URL + "token/refresh/"
SOLICITARI_URL = API_BASE_URL + "solicitari/"
TOKEN_FILE = "tokens.json"

# 🔹 Configurare autentificare
USERNAME = "admin"  # 🔹 Actualizează cu username-ul corect
PASSWORD = "egoqwedc/12"  # 🔹 Actualizează cu parola corectă


def save_tokens(access, refresh, username):
    """Salvează tokenurile și utilizatorul asociat într-un fișier JSON."""
    with open(TOKEN_FILE, "w") as f:
        json.dump({"access": access, "refresh": refresh, "username": username, "timestamp": time.time()}, f)


def load_tokens():
    """Încarcă tokenurile și verifică dacă utilizatorul este corect."""
    if not os.path.exists(TOKEN_FILE):
        print("[⚠] `tokens.json` nu există. Generare tokenuri noi...")
        return get_new_tokens()

    try:
        with open(TOKEN_FILE, "r") as f:
            tokens = json.load(f)
        
        # Verificăm dacă utilizatorul curent este cel pentru care s-a salvat tokenul
        if tokens.get("username") != USERNAME:
            print(f"[⚠] Tokenurile sunt pentru alt utilizator ({tokens.get('username')}). Obținere token nou...")
            return get_new_tokens()
        
        return tokens
    except (json.JSONDecodeError, FileNotFoundError):
        print("[⚠] `tokens.json` este corupt. Generare tokenuri noi...")
        return get_new_tokens()


def get_new_tokens():
    """Obține un nou `access token` și `refresh token` prin autentificare."""
    print("[INFO] Autentificare și generare tokenuri noi...")
    payload = {"username": USERNAME, "password": PASSWORD}
    response = requests.post(TOKEN_URL, json=payload)

    if response.status_code == 200:
        tokens = response.json()
        save_tokens(tokens["access"], tokens["refresh"], USERNAME)
        print("[✅] Token JWT obținut și salvat!")
        return tokens
    else:
        print(f"[❌] Eroare la autentificare: {response.status_code}")
        exit(1)


def refresh_access_token():
    """Reîmprospătează `access token` folosind `refresh token`."""
    tokens = load_tokens()
    refresh_token = tokens.get("refresh")

    print("[INFO] Reîmprospătare token...")

    response = requests.post(TOKEN_REFRESH_URL, json={"refresh": refresh_token})

    if response.status_code == 200:
        new_tokens = response.json()
        save_tokens(new_tokens["access"], new_tokens["refresh"], USERNAME)
        print("[✅] Token reîmprospătat!")
        return new_tokens
    else:
        print("[⚠] Refresh token invalid! Obținere token nou...")
        return get_new_tokens()


def ensure_valid_token():
    """Asigură că tokenul este valid la pornirea programului."""
    tokens = load_tokens()
    access_token = tokens.get("access")

    # Verificăm dacă access_token este valid făcând un request de test
    headers = {"Authorization": f"Bearer {access_token}"}
    response = requests.get(SOLICITARI_URL, headers=headers)

    if response.status_code == 401:  # Token expirat sau invalid
        print("[⚠] Token invalid sau expirat. Încerc reîmprospătare...")
        return refresh_access_token()

    print("[✅] Token valid!")
    return tokens


def format_date(date_str):
    """Transformă datele din `YYYY-MM-DD` în `dd.mm.yyyy`."""
    try:
        return datetime.strptime(date_str, "%Y-%m-%d").strftime("%d.%m.%Y")
    except ValueError:
        return date_str


def get_solicitari():
    """Preia solicitările și formatează datele."""
    tokens = ensure_valid_token()
    access_token = tokens.get("access")
    headers = {"Authorization": f"Bearer {access_token}"}

    response = requests.get(SOLICITARI_URL, headers=headers)
    if response.status_code == 200:
        solicitari = response.json()
        print("[✅] Solicitări preluate cu succes:")
        for solicitare in solicitari:
            print("\n---------------------")
            print(f"ID: {solicitare['id']}")
            print(f"rezolvat: {solicitare['rezolvat']}")
            print(f"nume: {solicitare['nume']}")
            print(f"prenume: {solicitare['prenume']}")
            print(f"Număr solicitare: {solicitare['nr_solicit']}")
            print(f"Data solicitării: {format_date(solicitare['data_solicit'])}")
            print(f"Data programării: {format_date(solicitare['data_program'])}")
            print(f"Ora programării: {solicitare['ora_program'][:5]}")  # Elimină secunde
            print(f"Operator: {solicitare['operator']}")
            print("---------------------\n")
    else:
        print(f"[❌] Eroare la preluarea datelor: {response.text}")


def add_solicitare():
    """Adaugă o solicitare nouă."""
    tokens = ensure_valid_token()
    access_token = tokens.get("access")
    headers = {"Authorization": f"Bearer {access_token}", "Content-Type": "application/json"}

    print("\n[📌] Introdu datele pentru solicitare:")
    nume = input("Nume Beneficiar: ").strip().upper()
    prenume = input("Prenume Beneficiar: ").strip().upper()
    telefon = input("Telefon: ").strip()
    tip_interventie = input("Tip Intervenție: ").strip().upper()

    data_solicit_raw = input("Data solicitării (zi.luna.an): ").strip()
    data_program_raw = input("Data programării (zi.luna.an): ").strip()
    ora_program_raw = input("Ora programării (hh:mm): ").strip()

    # Conversia datelor
    data_solicit = format_date(data_solicit_raw)
    data_program = format_date(data_program_raw)

    if not data_solicit or not data_program:
        return

    solicitare = {
        "data_solicit": data_solicit,
        "data_program": data_program,
        "ora_program": f"{ora_program_raw}:00",  # Adaugă secunde la ora
        "nume": nume,
        "prenume": prenume,
        "telefon": telefon,
        "tip_interventie": tip_interventie,
        "rezolvat": False,
        "operator": 1,
    }

    response = requests.post(SOLICITARI_URL, headers=headers, json=solicitare)
    if response.status_code == 201:
        print("[✅] Solicitare adăugată cu succes!")
    else:
        print(f"[❌] Eroare: {response.text}")


if __name__ == "__main__":
    print("[🔄] Verificare și reîmprospătare token la pornire...")
    ensure_valid_token()  # Se asigură că avem un token valid la pornire

    while True:
        print("\n📌 **Meniu Principal**")
        print("1️⃣ - Obține solicitări")
        print("2️⃣ - Adaugă solicitare nouă")
        print("3️⃣ - Ieșire")

        option = input("Alege o opțiune: ").strip()
        if option == "1":
            get_solicitari()
        elif option == "2":
            add_solicitare()
        elif option == "3":
            print("👋 Ieșire din program!")
            break
        else:
            print("[⚠] Opțiune invalidă! Încearcă din nou.")
