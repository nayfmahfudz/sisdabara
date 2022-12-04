<template>
  
    <div scrollable>
      <div class="flex justify-center ">
        <div class="box h-3/3 w-1/3 m-20">
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
  export default {
    el: '#app',
    components: {
    },
    data() {
      return {
        noPemohon: "",
        index: 0,
        cards: [
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
        this.$swal("nama tidak ditemukan")
         
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