import L from "leaflet";

//   import "../public/Tween.js";
//   import "../public/leaflet.curve.js";
export default (await import('vue')).defineComponent({
name: "LeafletMap",
data() {
return {
map: null,
};
},
mounted() {
this.map = L.map("mapContainer").setView([-7.536064, 112.238402], 9);
L.tileLayer("http://{s}.tile.osm.org/{z}/{x}/{y}.png", {}).addTo(this.map);
var myStyle = {
"color": "#ff0000"
};
var markerOptions = {
title: "MyLocation",
opacity: 0.4
};
fetch("src/components/layouts/EAST JAVA BOUNDARY.geojson").then(res => res.json()).then(data => {
// add GeoJSON layer to the map once the file is loaded
data.features.forEach(wilayah);

});
function wilayah(item, index) {
console.log(item);
// if(){\
var geojsonFeature = {
"type": "Feature",
"properties": {
"name": "Coors Field",
"amenity": "Baseball Stadium",
"popupContent": "This is where the Rockies play!"
},
"geometry": {
"type": "Point",
"coordinates": [-104.99404, 39.75621]
}
};
await L.geoJSON(geojsonFeature).addTo(this.map);
// }
}
// Creating a marker
var marker = L.marker([-7.236064, 112.238402], markerOptions);

// Adding marker to the map
marker.addTo(this.map);
},

onBeforeUnmount() {
if (this.map) {
this.map.remove();
}
},
});
