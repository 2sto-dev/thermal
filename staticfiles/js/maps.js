(function(){
  var GMap = { Map: null, AdvancedMarkerElement: null };

  function createMap(elId, options) {
    var el = document.getElementById(elId);
    if (!el || typeof google === 'undefined' || !google.maps || !GMap.Map) return;
    var map = new GMap.Map(el, {
      zoom: options.zoom || 16,
      center: options.center,
      mapId: options.mapId || undefined,
    });
    if (options.marker) {
      var iw = options.marker.infoContent
        ? new google.maps.InfoWindow({ content: options.marker.infoContent })
        : null;

      if (GMap.AdvancedMarkerElement) {
        var advMarker = new GMap.AdvancedMarkerElement({
          map: map,
          position: options.center,
          title: options.marker.title || "",
        });
        if (iw) {
          advMarker.addListener('gmp-click', function () {
            iw.open({ anchor: advMarker, map: map });
          });
        }
      } else {
        // Fallback la google.maps.Marker (deprecated, dar încă funcțional)
        var marker = new google.maps.Marker({
          position: options.center,
          map: map,
          title: options.marker.title || "",
        });
        if (iw) {
          marker.addListener("click", function () { iw.open(map, marker); });
        }
      }
    }
  }

  function supportsVectorMaps() {
    try {
      var canvas = document.createElement('canvas');
      var gl2 = !!(window.WebGL2RenderingContext && canvas.getContext('webgl2'));
      var gl = gl2 || !!(window.WebGLRenderingContext && (canvas.getContext('webgl') || canvas.getContext('experimental-webgl')));
      return !!gl;
    } catch (e) { return false; }
  }

  window.initMaps = async function () {
    try {
      // Noul loader: importLibrary
      var mapsLib = await google.maps.importLibrary('maps');
      var markerLib;
      try { markerLib = await google.maps.importLibrary('marker'); } catch(e) { markerLib = null; }

      GMap.Map = mapsLib && mapsLib.Map ? mapsLib.Map : google.maps.Map; // fallback
      GMap.AdvancedMarkerElement = markerLib && markerLib.AdvancedMarkerElement ? markerLib.AdvancedMarkerElement : null;

      var defaultCenter = { lat: 44.638144, lng: 22.6542683 };
      var mapIdFromEnv = (window.GOOGLE_MAPS_MAP_ID || null);
      var effectiveMapId = supportsVectorMaps() ? mapIdFromEnv : null;

      if (document.getElementById("map-termic")) {
        createMap("map-termic", {
          center: defaultCenter,
          mapId: effectiveMapId,
          marker: {
            title: "B.B. Install Organization S.R.L",
            infoContent:
              '<b>B.B. Install Organization S.R.L</b><br><a href="https://www.google.com/maps?q=44.638144,22.6542683" target="_blank">Vezi pe Google Maps</a>',
          },
        });
      }

      if (document.getElementById("map-clima")) {
        createMap("map-clima", {
          center: defaultCenter,
          mapId: effectiveMapId,
          marker: {
            title: "B.B. Install Organization S.R.L",
            infoContent:
              '<b>B.B. Install Organization S.R.L</b><br><a href="https://www.google.com/maps?q=44.638144,22.6542683" target="_blank">Vezi pe Google Maps</a>',
          },
        });
      }

      if (document.getElementById("map-contact")) {
        createMap("map-contact", {
          center: defaultCenter,
          mapId: effectiveMapId,
          marker: {
            title: "B.B. Install Organization S.R.L",
            infoContent:
              '<b>B.B. Install Organization S.R.L</b><br><a href="https://www.google.com/maps?q=44.638144,22.6542683" target="_blank">Vezi pe Google Maps</a>',
          },
        });
      }
    } catch (e) {
      console.error('Google Maps nu a putut fi încărcat:', e);
    }
  };
})();
