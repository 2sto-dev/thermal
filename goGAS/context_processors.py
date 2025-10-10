import os


def google_maps_api_key(request):
    """Injectează configurația Google Maps în contextul template-urilor."""
    return {
        "GOOGLE_MAPS_API_KEY": os.getenv("GOOGLE_MAPS_API_KEY", ""),
        "GOOGLE_MAPS_MAP_ID": os.getenv("GOOGLE_MAPS_MAP_ID", ""),
    }

