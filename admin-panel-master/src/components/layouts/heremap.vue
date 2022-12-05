
<template>
    <div id="map">
        <!--In the following div the HERE Map will render-->
        <div id="mapContainer" style="height:700px;width:165%" ref="hereMap"></div>
    </div>
</template>
  
<script>
export default {
    name: "HereMap",
    props: {
        center: { lat: -7.536064, lng: 112.238402 }
    },
    data() {
        return {
            platform: null,
            apikey: "ILpBbhvH70Z3D9iOwQuyqul9JletlvH7BNAjoHMcoS4"
            // You can get the API KEY from developer.here.com
        };
    },
    async mounted() {
        // Initialize the platform object:
        const platform = new window.H.service.Platform({
            apikey: this.apikey
        });

        this.platform = platform;
        this.initializeHereMap();

    },
    methods: {
        addMarkerToGroup(group, coordinate, html) {
  var marker = new H.map.Marker(coordinate);
  // add custom data to the marker
  marker.setData(html);
  group.addObject(marker);
},
addInfoBubble(map,ui) {
  var group = new H.map.Group();

  map.addObject(group);

  // add 'tap' event listener, that opens info bubble, to the group
  group.addEventListener('tap', function (evt) {
    // event target is the marker itself, group is a parent event target
    // for all objects that it contains
    var bubble = new H.ui.InfoBubble(evt.target.getGeometry(), {
      // read custom data
      content: evt.target.getData()
    });
    // show info bubble
    ui.addBubble(bubble);
  }, false);

  this.addMarkerToGroup(group, { lat: -8.0371683, lng: 111.5847978 },
    '<a href="#/detail/tugu">Bendungan Tugu</a>');

    this.addMarkerToGroup(group, { lat: -7.4948587, lng: 111.8905152 },
    '<a href="#/detail/semantok">Bendungan Semantok</a>');
},
        initializeHereMap() { // rendering map

            const mapContainer = this.$refs.hereMap;
            const H = window.H;
            // new H.geo.Point(-7.536064, 112.238402);
            // Obtain the default map types from the platform object
            var maptypes = this.platform.createDefaultLayers();

            // Instantiate (and display) a map object:
            var map = new H.Map(mapContainer, maptypes.vector.normal.map, {
                zoom: 8.6,
                center: this.center,
                // center object { lat: 40.730610, lng: -73.935242 }
            });
            var tuguMarker = new H.map.Marker({ lat: -8.0371683, lng: 111.5847978 });
            var sumantokMarker = new H.map.Marker({ lat: -7.4948587, lng: 111.8905152 });
            map.addObject(tuguMarker);
            map.addObject(sumantokMarker);

            addEventListener("resize", () => map.getViewPort().resize());
        
            // add behavior control
            new H.mapevents.Behavior(new H.mapevents.MapEvents(map));

            // add UI
            var ui = H.ui.UI.createDefault(map, maptypes);
            this.addInfoBubble(map,ui);
        }
    }
};
</script>
  
<style scoped>
#map {
    width: 60vw;
    min-width: 360px;
    text-align: center;
    margin: 5% auto;
    background-color: #ccc;
}
</style>