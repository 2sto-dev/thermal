from pathlib import Path
import os
from datetime import timedelta
from dotenv import load_dotenv

# 📌 Calea de bază a proiectului (merge din settings/base.py)
BASE_DIR = Path(__file__).resolve().parent.parent.parent

# 📦 Calea completă către fișierul .env
env_path = BASE_DIR / ".env"
print(f"📦 Se încarcă fișierul .env din: {env_path}")

# 📥 Încărcăm fișierul .env, dacă există
if env_path.exists():
    load_dotenv(env_path)
    print("✅ Fișierul .env a fost încărcat cu succes.")
else:
    print("⚠️  ATENȚIE: fișierul .env nu a fost găsit!")
# 📌 Securitate
SECRET_KEY = os.getenv("DJANGO_SECRET_KEY", "insecure-dev-key")

# 📌 Hosturi & CSRF
ALLOWED_HOSTS = [h.strip() for h in os.getenv("DJANGO_ALLOWED_HOSTS", "127.0.0.1,localhost").split(",") if h.strip()]
CSRF_TRUSTED_ORIGINS = [o.strip() for o in os.getenv("DJANGO_CSRF_TRUSTED_ORIGINS", "").split(",") if o.strip()]

# 📌 Aplicații instalate
INSTALLED_APPS = [
    "admin_interface",
    "colorfield",
    "django.contrib.admin",
    "django.contrib.auth",
    "django.contrib.contenttypes",
    "django.contrib.sessions",
    "django.contrib.messages",
    "django.contrib.staticfiles",
    "django.contrib.sitemaps",
    "solicitari",
    "adrese",
    "beneficiari",
    "raportare",
    "servicii",
    "rest_framework",
    "rest_framework_simplejwt",
    "dal",
    "dal_select2",
    "django_bootstrap5",
    "whitenoise.runserver_nostatic",
]

# 📌 Middleware
MIDDLEWARE = [
    "django.middleware.security.SecurityMiddleware",
    "whitenoise.middleware.WhiteNoiseMiddleware",
    "django.contrib.sessions.middleware.SessionMiddleware",
    "django.middleware.common.CommonMiddleware",
    "django.middleware.locale.LocaleMiddleware",
    "django.middleware.csrf.CsrfViewMiddleware",
    "django.contrib.auth.middleware.AuthenticationMiddleware",
    "django.contrib.messages.middleware.MessageMiddleware",
    "django.middleware.clickjacking.XFrameOptionsMiddleware",
]

ROOT_URLCONF = "goGAS.urls"

# 📌 Templates
TEMPLATES = [
    {
        "BACKEND": "django.template.backends.django.DjangoTemplates",
        "DIRS": [BASE_DIR / "templates"],
        "APP_DIRS": True,
        "OPTIONS": {
            "context_processors": [
                "django.template.context_processors.debug",
                "django.template.context_processors.request",
                "django.contrib.auth.context_processors.auth",
                "django.contrib.messages.context_processors.messages",
                "django.template.context_processors.media",
                "goGAS.context_processors.google_maps_api_key",
            ],
        },
    },
]

WSGI_APPLICATION = "goGAS.wsgi.application"

# 📌 Validatori parole
AUTH_PASSWORD_VALIDATORS = [
    {"NAME": "django.contrib.auth.password_validation.UserAttributeSimilarityValidator"},
    {"NAME": "django.contrib.auth.password_validation.MinimumLengthValidator"},
    {"NAME": "django.contrib.auth.password_validation.CommonPasswordValidator"},
    {"NAME": "django.contrib.auth.password_validation.NumericPasswordValidator"},
]

# 📌 Limba și fusul orar
LANGUAGES = [("ro", "Română"), ("en", "English")]
TIME_ZONE = "Europe/Bucharest"
USE_I18N = True
USE_TZ = True

# 📌 Statice și media
STATIC_URL = "/static/"
STATICFILES_DIRS = [BASE_DIR / "static"]
STATIC_ROOT = BASE_DIR / "staticfiles"

MEDIA_URL = "/media/"
MEDIA_ROOT = BASE_DIR / "media"

# 📌 REST & JWT
REST_FRAMEWORK = {
    "DEFAULT_AUTHENTICATION_CLASSES": ("rest_framework_simplejwt.authentication.JWTAuthentication",),
    "DEFAULT_PERMISSION_CLASSES": ("rest_framework.permissions.IsAuthenticated",),
}

SIMPLE_JWT = {
    "ACCESS_TOKEN_LIFETIME": timedelta(hours=1),
    "REFRESH_TOKEN_LIFETIME": timedelta(days=7),
    "ROTATE_REFRESH_TOKENS": True,
}

DEFAULT_AUTO_FIELD = "django.db.models.BigAutoField"

# Google Maps
GOOGLE_MAPS_API_KEY = os.getenv("GOOGLE_MAPS_API_KEY", "")
