<template>
  <div scrollable>
    <div class="first_block">
      <img src="@/assets/logo.svg" alt="Logo" class="w-14 flex content-center" />
        <h2 class="w-10 text-gray-700 text-medium">SISDABRA</h2>
    </div>
    <div class="flex content-center ">
      <div class="box ">
          <HereMap :center="center" />
    </div>
  </div>
    <div class="flex justify-center ">
      <div class="box h-2/3 w-1/3 m-20">
        <strong>Cek Status SISDABRA</strong>
        <form id="app" @submit="checkForm">
          <input class="
            appearance-none
            block
            w-full
            bg-gray-200
            text-gray-700
            border border-grey-500
            rounded
            py-3
            px-4
            mb-3
            leading-tight
            focus:outline-none
            focus:bg-white
          " id="grid-first-name" v-model="noPemohon" type="text" placeholder="Masukan No Pemohon" /><br />
          <button class="
            bg-blue-500
            hover:bg-blue-700
            text-white
            font-bold
            py-2
            px-4
            rounded
          ">
            Search
          </button>
        </form>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios';
import HereMap from '@/components/layouts/heremap.vue';
export default {
  el: '#app',
  components: {
    HereMap
    // Remove the HelloWorld.vue 
  },
  data() {
    return {
      noPemohon: "",
      center:  { lat: -7.536064, lng: 112.238402 },
      index: 0,
      cards: [
        {
          id: 1,
          img_url:
            "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8aHVtYW58ZW58MHx8MHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
        },
        {
          id: 2,
          img_url:
            "https://images.unsplash.com/photo-1527455505333-9d3ac7adf523?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8Zml2ZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80",
        },
        {
          id: 3,
          img_url:
            "https://images.unsplash.com/photo-1597976618063-810eb50c84fb?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8dGFtfGVufDB8fDB8&ixlib=rb-1.2.1&w=1000&q=80",
        },
      ],
    };
  },
  //  created() {
  //     this.$refs.videoPlayer.play();
  //   },
  methods: {
    moveToNextCard() {
      this.index = (this.index + 1) % this.cards.length;
    },
    checkForm: function (e) {
      e.preventDefault();
      axios.get(`http://192.168.10.102:5000/permohonan/` + this.noPemohon)
        .then(response => {
          if (!!response.data.data) {
            this.$swal({

              html:
                '<h1 class=text-sm text-gray-700 font-medium>Nomer Pemohon : ' + response.data.data.usernoid + '<br> nama pemohon : ' + response.data.data.nama_pemohon + '<br> email :' + response.data.data.email + '<br> status : ' + response.data.data.status + '</h1>'

            })
          } else {
            this.$swal("nama tidak ditemukan")
          }
        }
        );
    }
  },
};
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.first_block {
  padding: 20px 0px 20px 30px;
}

.circle-wrap {
  margin: 0px 0px 0px 0px;
}

.third_block div h2 {
  font-size: 20px;
  font-family: Montserrat-Medium;
}

.first_block {
  width: 100%;
}

.first_block h2,
.second_block h2 {
  font-family: Montserrat-Medium;
}

.first_block h2 {
  text-align: center;
  font-size: 20px;
}

.card_1 {
  max-width: 100%;
  width: 4000px;
  height: 500px;
}

.card_2 {
  position: absolute;
  width: 50%;
  padding: 10px;
  margin: auto;
}

.card_3 {
  position: absolute;
  max-width: 100%;
  width: 4000px;
  height: 500px;
}

.input {
  position: static;
  max-width: 100%;
  width: 800px;
}

.container {
  width: 600px;
  height: 50%;
  background: white;
  position: absolute;
  top: 100%;
  left: 50%;
  margin-top: -120px;
  margin-left: -220px;
  padding: 0px 190px 20px 30px;
}
</style>