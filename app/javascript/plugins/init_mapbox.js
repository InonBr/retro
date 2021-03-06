import mapboxgl from 'mapbox-gl';

const fitMapToMarkers = (map, marker) => {
  const bounds = new mapboxgl.LngLatBounds();
  bounds.extend([ marker.lng, marker.lat ]);

  map.fitBounds(bounds, {
    padding: 70,
    maxZoom: 15,
    duration: 0
  });
};

const addMarkersToMap = (map, marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this

    const element = document.createElement('div');
     element.className = 'marker';
     element.style.backgroundImage = `url('${marker.image_url}')`;
     element.style.backgroundSize = 'contain';
     element.style.width = '35px';
     element.style.height = '35px';

    new mapboxgl.Marker(element)
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup) // add this
      .addTo(map);
};

const initMapbox = () => {
  const mapElement = document.querySelector('#map');

    if (mapElement) { // only build a map if there's a div#map to inject into
      mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
      const map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/streets-v10'
      });

    const marker = JSON.parse(mapElement.dataset.marker);
    // new mapboxgl.Marker()
    //   .setLngLat([marker.lng, marker.lat])
    //   .addTo(map);

    fitMapToMarkers(map, marker)
    addMarkersToMap(map, marker)
  }
};

export {
  initMapbox
};
