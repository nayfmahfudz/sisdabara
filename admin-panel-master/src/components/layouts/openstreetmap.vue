<template>
  <div
    class="fixed  left-0 lg:left-8 right-52 justify-items-start text-left justify-start bg-white row border-gray-200 flex flex-row items-start justify-between px-5">
    

    <!-- <h3 class="text-sm font-medium text-gray-600">Welcome, Admin</h3> -->
    <!-- <div class="flex"> -->
    <!-- <div class="group flex items-center mr-3 cursor-pointer" @click="viewSource()">
        <span class="text-sm  text-gray-600 group-hover:text-gray-800">GitHub</span>
        <external-link-icon-o class="ml-1 w-4 h-4 text-gray-600 group-hover:text-gray-800" />
      </div> -->
    <!-- <div class="relative flex justify-center items-center w-6 h-6 rounded-full bg-gray-200">
        <bell-icon-s class="w-3.5 h-3.5 text-gray-600" />
        <div class="absolute -top-0.5 -right-0.5 w-2.5 h-2.5 bg-blue-400 rounded-full" />
      </div> -->
    <!-- </div> -->
  </div>
  <div id="mapContainer" class="fixed  " style=" width: 100vw;
  height: 100vh;"></div>
</template>
  
<script>
import "leaflet/dist/leaflet.css";
import L from "leaflet";
import axios from 'axios';

export default {
  name: "LeafletMap",
  data() {
    return {
      map: null,
      wilayah1: [],
      wilayah2: [],
      wilayah3: [],
    };
  },
  async mounted() {
    this.map = L.map("mapContainer").setView([-7.536064, 112.238402], 9);
    L.tileLayer("http://{s}.tile.osm.org/{z}/{x}/{y}.png", {

    }).addTo(this.map)

    // this.map =map;
    var delayInMilliseconds = 700;
    var minuteInMilliseconds = 7200; //1 second


    let wilayahterdampak = []
    let arraychecker = []
    let wilayah1 = []
    let wilayah2 = []
    let wilayah3 = []
    let titik = []
    await fetch("src/components/layouts/EAST JAVA BOUNDARY_CLIP.geojson").then(res => res.json()).then(async data => {
      // add GeoJSON layer to the map once the file is loaded


      await data.features.forEach(async (item, index) => {
        if (item.properties.Zonasi == "Wilayah I") {
          wilayah1.push(item);
        } else if (item.properties.Zonasi == "Wilayah II") {
          wilayah2.push(item);
        } else if (item.properties.Zonasi == "Wilayah IV") {
          wilayah3.push(item);
        } else {
          // await L.geoJSON(item, { color: "red" }).addTo(this.map);
        }
      });

    });
    let datawindy=[];
    // setInterval(async function () {
    await insertCH().then(async res => {
      arraychecker=res;
      var container = L.DomUtil.get('mapContainer');
      if (container != null) {
        container._leaflet_id = null;
      }
      this.map = L.map("mapContainer").setView([-7.536064, 112.238402], 9);
      L.tileLayer("http://{s}.tile.osm.org/{z}/{x}/{y}.png", {
        
      }).addTo(this.map)
    
      for (let y = 0; y < res.length; y++) {
        var markerOptions = {
          title: res[y].jenis_kejadian,
          opacity: 1
        }
        var options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };
        const hari = new Date(res[y].tanggal).toLocaleString("id-ID", options);
        const popupContent = 
       ` <p>Nama Surveyor:${res[y].nama_Petugas}</p>`+
       ` <p>Kota:${res[y].desa}</p>`+
       ` <p>Hari:${hari} </p>`+
       ` <p>Jam :${res[y].tanggal}</p>`   +
       ' <a href="https://www.google.com" class="tombol-google" target="_blank">Detail</a>';

        titik.push([res[y].latitude	, res[y].longtitude	])
        var marker = L.marker([res[y].latitude	, res[y].longtitude	], markerOptions).bindPopup(popupContent);
        datawindy[y] = await windy(res[y].latitude, res[y].longtitude	);
        console.log(datawindy[y]);
        marker.addTo(this.map).on('click', function (e) {
         
        
          let list5 = document.getElementById("list5");
          let list1 = document.getElementById("list1");
          let list2 = document.getElementById("list2");
          let harian1=0;
          let harian2=0;
          let tertinggi2=0;
          let tertinggi1=0;
          let jam1;
          let jam2;
          for (let u = 0; u< 24; u++) {
             harian1=harian1+(datawindy[y].hourly.precipitation[u]);
             if(tertinggi1<(datawindy[y].hourly.precipitation[u])){
              tertinggi1=(datawindy[y].hourly.precipitation[u]).toFixed(2);
              var options = { hour:"numeric", minute:"numeric" };
              let tanggal = new Date(datawindy[y].hourly.time[u]);
              jam1= tanggal.getHours()+":00";
             }
          }
          for (let u = 24; u< 48; u++) {
             harian2=harian2+(datawindy[y].hourly.precipitation[u]);
             if(tertinggi2<(datawindy[y].hourly.precipitation[u])){
              tertinggi2=(datawindy[y].hourly.precipitation[u]).toFixed(2);
              var options = { hour:"numeric", minute:"numeric" };
              let tanggal = new Date(datawindy[y].hourly.time[u]);
              jam2=tanggal.getHours()+":00";
             }
          }
          list5.innerHTML = ` <ul class="fixed top-20 ">
        <li>Prediksi Hujan Hari ini:${parseInt(harian1)}/mm</li>
        <li>prediksi tertingi ${tertinggi1}/mm pada ${jam1} </li>
        <li>status : ${statushujan(harian1)}</li>
        <li>Prediksi Hujan Besok:${parseInt(harian2)}/mm</li>
        <li>tertingi ${tertinggi2}/mm pada ${jam2} </li>
        <li>status : ${statushujan(harian2)}</li>
      </ul>`;
      //     list2.innerHTML = ` <ul class="fixed top-28 ">
      //       <img  style=" width: 10vw; height: 10vh;" src="${res[y].properties.Dokumentasi_Kejadian}" />
      // </ul>`;
      // list3.innerHTML = ` <ul class="fixed top-28 ">
      //       <img  style=" width: 10vw; height: 10vh;" src="${res[y].properties['3d60e511-172d-4857-8a0e-e52f6daf8016']}" />
      // </ul>`;
      // list4.innerHTML = ` <ul class="fixed top-28 ">
          
          
      //       <img style=" width: 10vw; height: 10vh;" src="${res[y].properties['a38c6b88-fb1f-46e3-8781-41b62af86023']}" />
      // </ul>`;
          list1.innerHTML = ` <ul class="fixed top-28 ">
        <li>Nama Surveyor:${res[y].nama_Petugas}</li>
        <li>Kota:${res[y].desa}</li>
        <li>Hari:${hari} </li>
        <li>Jam :${res[y].tanggal}</li>
      </ul>`
        });
      }
      for (let i = 0; i < wilayah1.length; i++) {
        var layer = L.geoJSON(wilayah1[i], { color: "blue" });
        for (let y = 0; y < titik.length; y++) {
          let insided = await inside(titik[y], wilayah1[i].geometry.coordinates)
          insided == true ? wilayahterdampak.push({ layer: layer, color: "blue", nyala: true }) : null;

        }
        await layer.addTo(this.map);

      }
      for (let i = 0; i < wilayah2.length; i++) {
        var layer = L.geoJSON(wilayah2[i], { color: "green" });
        for (let y = 0; y < titik.length; y++) {
          let insided = await inside(titik[y], wilayah2[i].geometry.coordinates)
          insided == true ? wilayahterdampak.push({ layer: layer, color: "green", nyala: true }) : null;

        }
        await layer.addTo(this.map);

      }
      for (let i = 0; i < wilayah3.length; i++) {
        var layer = L.geoJSON(wilayah3[i], { color: "orange" });
        for (let y = 0; y < titik.length; y++) {
          let insided = await inside(titik[y], wilayah3[i].geometry.coordinates)

          insided == true ? wilayahterdampak.push({ layer: layer, color: "orange", nyala: true }) : null;

        }
        await layer.addTo(this.map);

      }

      // for (let i = 0; i < wilayah3.length; i++) {
      //   var nyala = false;
      //   let insided = false;
      //   var layer = L.geoJSON(wilayah3[i], { color: "orange" });
      //   for (let y = 0; y < titik.length; y++) {
      //     let insided = await inside(titik[y], wilayah3[i].geometry.coordinates)
      //     nyala == true ? null : nyala = insided;
      //   }
      //   await layer.addTo(this.map);
      //   setInterval(async function () {
      //     console.log(nyala)
      //     await layer.setStyle()

      //     if (nyala == true && insided == true) {
      //       layer.setStyle({
      //         color: 'black'
      //       });
      //     } else {
      //       layer.setStyle({
      //         color: 'orange'
      //       });
      //     }
      //     nyala = !nyala;
      //   }, delayInMilliseconds);
      // }
      // }
    });
    // }, minuteInMilliseconds)
    // delete wilayahterdampak[0];
    setInterval(async function () {
      let arraybaru= await insertCH();
      console.log(arraybaru.length);
      console.log(arraychecker.length);
      if(arraybaru.length!=arraychecker.length){
         window.location.reload();
      }
    }, minuteInMilliseconds);

    setInterval(async function () {
      for (let i = 0; i < wilayahterdampak.length; i++) {
        if (wilayahterdampak[i].nyala == true) {
          wilayahterdampak[i].layer.setStyle({
            color: 'black'
          });
        } else {
          wilayahterdampak[i].layer.setStyle({
            color: wilayahterdampak[i].color
          });
        }

        wilayahterdampak[i].nyala = !wilayahterdampak[i].nyala;

      }
    }, delayInMilliseconds);
  },

  onBeforeUnmount() {
    if (this.map) {
      this.map.remove();
    }
  },
  watch() { }
};


async function token() {
  return await axios.post(`https://geoserver.mapid.io/users/login`,
    {
      "name": "admin.bbwsbrantas",
      "password": "@BrantasMapid2020",
      "isNav": null
    }
  ).then(response => {
    console.log(response.status)
    return response.data.token;
  }).catch(error => {
  });
};
let insertCH = async () => {
  try {
    //  return await tokenSih3();

    const config = {
      headers: {
        accesstoken: ` ${await token().then(response => {
          return response
        })}`,
        "Accept": "application/json, text/plain, */*",
        "Content-Type": "application/json",
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Methods": " GET, OPTIONS",
        "Access-Control-Allow-Headers": "Content-Type, Content-Length, Accept-Encoding",
        "Access-Control-Allow-Credentials": "false",
      }
    };
    return await axios.get(`http://199.99.99.4:8000/laporan`).then(response => {


      return response.data;
    });


  } catch (error) {
    console.log(error);
    // result(true, null);
  }
};

let inside = async (point, mpoly) => {
  var inside = false;
  await mpoly.forEach(function (poly) {
    // ray-casting algorithm based on
    // https://wrf.ecse.rpi.edu/Research/Short_Notes/pnpoly.html

    var x = point[1], y = point[0];



    for (var i = 0, j = poly[0].length - 1; i < poly[0].length; j = i++) {

      var xi = poly[0][i][0], yi = poly[0][i][1];
      var xj = poly[0][j][0], yj = poly[0][j][1];
      if (((yi < y) && (yj >= y)) || ((yj < y) && (yi >=
                y))) {
                  if (xi + (y - yi) / (yj - yi) * (xj -
                    xi) < x)
                {
                  inside = !inside;
                }
      }


    }

  })
  return inside;
};
let windy = async (lat,lon) => {
  try {
    
  return   await axios.get(`https://api.open-meteo.com/v1/forecast?latitude=${lat}&longitude=${lon}&hourly=precipitation`).then(response => {
  return response.data;
  
    });


  } catch (error) {
    console.log(error);
    // result(true, null);
  }
};
  function statushujan( nilai)  {
  if(nilai<=0.5){
      return "Berawan"
    }
  else if(nilai<=20){
      return "Hujan Ringan"
    }else if(nilai<=50){
      return "Hujan sedang"
    }else if(nilai<=100 ){
      return "Hujan lebat"
    }else if(nilai<=150){
      return "Hujan sangat lebat"
    }else{
      return "Hujan ekstrem"
    }
};
//
</script>
  
<style scoped>
#mapContainer {}

.header {
  background-color: rgba(255, 255, 255, 0.9);
  position: fixed;
  top: 0;
  height: 13%;
  width: 100%;
  left: 0;
  z-index: 999;
  font-size: 9pt;
  box-shadow: 0 3px 9px rgba(0, 0, 0, 0.5);
  display: flex;
  align-items: center;
}

.logo {
  float: left;
  height: 42px;
  width: 42px;
  margin-right: 8px;
  background: url('@/assets/logo.svg') 50% 50% no-repeat;
  background-size: auto;
  background-size: contain;
}
</style>