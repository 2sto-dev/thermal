// Main JS – Google Maps init with AdvancedMarkerElement (fallback to classic Marker)
(function(){
  const MAP_IDS = ['map', 'map-termic', 'map-clima'];
  const LOCATION = { lat: 44.6379915, lng: 22.6533897 };
  const TITLE = 'B.B. Install Organization S.R.L';
    const INFO_HTML = '<b>B.B. Install Organization S.R.L</b><br>'+
                    '<a href="https://www.google.com/maps?q=44.6379915,22.6533897" target="_blank" rel="noopener">Vezi pe Google Maps</a>';

  function getElements() {
    return MAP_IDS
      .map(id => ({ id, el: document.getElementById(id) }))
      .filter(x => !!x.el);
  }

  async function initMaps() {
    const targets = getElements();
    if (!targets.length) return;

    let MapCtor = null, AdvancedMarkerCtor = null;
    try {
      if (window.google && google.maps && google.maps.importLibrary) {
        const { Map } = await google.maps.importLibrary('maps');
        const { AdvancedMarkerElement } = await google.maps.importLibrary('marker');
        MapCtor = Map;
        AdvancedMarkerCtor = AdvancedMarkerElement;
      }
    } catch(_) { /* will fallback */ }

    targets.forEach(({ el }) => {
      try {
                const options = { zoom: 15, center: LOCATION, mapId: 'bf648b02bf6552b07fbb0a02' };
        const map = MapCtor ? new MapCtor(el, options)
                            : new google.maps.Map(el, options);
        const infowindow = new google.maps.InfoWindow({ content: INFO_HTML });
        if (AdvancedMarkerCtor) {
          const marker = new AdvancedMarkerCtor({ position: LOCATION, map, title: TITLE });
          marker.addEventListener('gmp-click', () => infowindow.open(map, marker));
        } else if (window.google && google.maps && google.maps.Marker) {
          const legacyMarker = new google.maps.Marker({ position: LOCATION, map, title: TITLE });
          legacyMarker.addListener('click', () => infowindow.open(map, legacyMarker));
        }
      } catch(e) {
        // soft fail per element
      }
    });
  }

    let _gmapsInitDone = false;
  function safeInit() {
    if (_gmapsInitDone) return; _gmapsInitDone = true;
    try { initMaps(); } catch(_) {}
  }
  // Expose as callback for async Maps loader
  window.initMap = safeInit;

  // If Maps already available, initialize immediately; otherwise poll until available
  if (window.google && google.maps) {
    safeInit();
  } else {
    const maxWait = 100; // ~10s
    let cnt = 0;
    const timer = setInterval(() => {
      if (window.google && google.maps) {
        clearInterval(timer);
        safeInit();
      } else if (++cnt > maxWait) {
        clearInterval(timer);
        // optionally fallback: embed for known containers
        ['map','map-termic','map-clima'].forEach(id => {
          const el = document.getElementById(id);
          if (el && !el.firstChild) {
            el.innerHTML = '<iframe src="https://www.google.com/maps?q=44.6379915,22.6533897&output=embed" width="100%" height="100%" style="border:0" allowfullscreen loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>';
          }
        });
      }
    }, 100);
  }
})();

