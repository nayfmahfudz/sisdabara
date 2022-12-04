<template>
    <form class="left  mx-auto w-full max-w-lg " id="app" @submit="checkForm" method="post">
      <br>
      <br>
      <div class=" -mx-3 mb-6">
        <div class="w-full md:w-1px-3 mb-6 md:mb-0">
          <label
            class="justify-left
              block
              uppercase
              tracking-wide
              text-gray-700 text-xs
              font-bold
              mb-2
            "
            for="grid-first-name"
          >
            Nama Lengkap
          </label>
          <input
            class="
              appearance-none
              block
              w-full
              bg-gray-200
              text-gray-700
              border border-red-500
              rounded
              py-3
              px-4
              mb-3
              leading-tight
              focus:outline-none focus:bg-white
            "
            v-model="infrastruktur"
            type="text"
            placeholder="Isikan nama Kegiatan"
          />
          <p class="text-red-500 text-xs italic">{{ nameErr }}</p>
        </div>
      </div>
      <div class="flex flex-wrap -mx-3 mb-6">
        <div class="w-full md:w-1px-3 mb-6 md:mb-0">
          <label
            class="
              block
              uppercase
              tracking-wide
              text-gray-700 text-xs
              font-bold
              mb-2
            "
            for="grid-first-name"
          >
            No KTP
          </label>
          <input
            class="
              appearance-none
              block
              w-full
              bg-gray-200
              text-gray-700
              border border-red-500
              rounded
              py-3
              px-4
              mb-3
              leading-tight
              focus:outline-none focus:bg-white
            "
            v-model="nama"
            type="text"
            placeholder="Isikan nama Pemohon"
          />
          <p class="text-red-500 text-xs italic">{{ nameErr }}</p>
        </div>
      </div>
      <div class="flex flex-wrap -mx-3 mb-6">
        <div class="w-full md:w-1px-3 mb-6 md:mb-0">
          <label
            class="
              block
              uppercase
              tracking-wide
              text-gray-700 text-xs
              font-bold
              mb-2
            "
            for="grid-first-name"
          >
            E-mail
          </label>
          <input
            class="
              appearance-none
              block
              w-full
              bg-gray-200
              text-gray-700
              border border-red-500
              rounded
              py-3
              px-4
              mb-3
              leading-tight
              focus:outline-none focus:bg-white
            "
            v-model="no"
            type="text"
            placeholder="Isika Nomor Pemohon"
          />
          <p class="text-red-500 text-xs italic">{{ noPemohonErr }}</p>
        </div>
      </div>
      <div class="flex flex-wrap -mx-3 mb-6">
        <div class="w-full md:w-1px-3 mb-6 md:mb-0">
          <label
            class="
              block
              uppercase
              tracking-wide
              text-gray-700 text-xs
              font-bold
              mb-2
            "
            for="grid-first-name"
          >
            Pekerjaan
          </label>
          <input
            class="
              appearance-none
              block
              w-full
              bg-gray-200
              text-gray-700
              border border-red-500
              rounded
              py-3
              px-4
              mb-3
              leading-tight
              focus:outline-none focus:bg-white
            "
            v-model="tanggalpemohon"
            type="text"
            placeholder="Isikan  tanggal pemohon"
          />
          <p class="text-red-500 text-xs italic">{{ tanggalErr }}</p>
        </div>
      </div>
      <div class="flex flex-wrap -mx-3 mb-6">
        <div class="w-full md:w-1px-3 mb-6 md:mb-0">
          <label
            class="
              block
              uppercase
              tracking-wide
              text-gray-700 text-xs
              font-bold
              mb-2
            "
            for="grid-first-name"
          >
            Alamat KTP
          </label>
          <input
            class="
              appearance-none
              block
              w-full
              bg-gray-200
              text-gray-700
              border border-red-500
              rounded
              py-3
              px-4
              mb-3
              leading-tight
              focus:outline-none focus:bg-white
            "
            v-model="email"
            type="text"
            placeholder="Isikan Email"
          />
        </div>
      </div>
      <div class="flex flex-wrap -mx-3 mb-6">
        <div class="w-full md:w-1px-3 mb-6 md:mb-0">
          <label
            class="
              block
              uppercase
              tracking-wide
              text-gray-700 text-xs
              font-bold
              mb-2
            "
            for="grid-first-name"
          >
            No Handphone
          </label>
          <input
            class="
              appearance-none
              block
              w-full
              bg-gray-200
              text-gray-700
              border border-red-500
              rounded
              py-3
              px-4
              mb-3
              leading-tight
              focus:outline-none focus:bg-white
            "
            v-model="npwp"
            type="text"
            placeholder="Isikan NPWP"
          />
        </div>
      </div>
      <div class="flex flex-wrap -mx-3 mb-6">
        <div class="w-full md:w-1px-3 mb-6 md:mb-0">
          <label
            class="
              block
              uppercase
              tracking-wide
              text-gray-700 text-xs
              font-bold
              mb-2
            "
            for="grid-first-name"
          >
            Nama Instansi / Tempat / Universitas
          </label>
          <input
            class="
              appearance-none
              block
              w-full
              bg-gray-200
              text-gray-700
              border border-red-500
              rounded
              py-3
              px-4
              mb-3
              leading-tight
              focus:outline-none focus:bg-white
            "
            id="grid-first-name"
            v-model="lokasi"
            type="text"
            placeholder="Isikan Lokasi"
          />
          <p class="text-red-500 text-xs italic">{{ lokasiErr }}</p>
        </div>
      </div>
      <div class="flex flex-wrap -mx-3 mb-6">
        <div class="w-full md:w-1px-3 mb-6 md:mb-0">
          <label
            class="
              block
              uppercase
              tracking-wide
              text-gray-700 text-xs
              font-bold
              mb-2
            "
            for="grid-first-name"
          >
            Tujuan Permohonan Data
          </label>
          <input
            class="
              appearance-none
              block
              w-full
              bg-gray-200
              text-gray-700
              border border-red-500
              rounded
              py-3
              px-4
              mb-3
              leading-tight
              focus:outline-none focus:bg-white
            "
            v-model="sumber"
            type="text"
            placeholder="Isika Sumber yang digunakan"
          />
          <p class="text-red-500 text-xs italic">{{ sumberErr }}</p>
        </div>
      </div>
      <div class="flex flex-wrap -mx-3 mb-6">
        <div class="w-full md:w-1px-3 mb-6 md:mb-0">
          <label
            class="
              block
              uppercase
              tracking-wide
              text-gray-700 text-xs
              font-bold
              mb-2
            "
            for="grid-first-name"
          >
            Catatan Data Yang di Minta
          </label>
          <input
            class="
              appearance-none
              block
              w-full
              bg-gray-200
              text-gray-700
              border border-red-500
              rounded
              py-3
              px-4
              mb-3
              leading-tight
              focus:outline-none focus:bg-white
            "
            v-model="longititude"
            type="text"
            placeholder="Isikan Garis Bujur"
          />
        </div>
      </div>
      <div class="flex flex-wrap -mx-3 mb-6">
        <div class="w-full md:w-1px-3 mb-6 md:mb-0">
          <label
            class="
              block
              uppercase
              tracking-wide
              text-gray-700 text-xs
              font-bold
              mb-2
            "
            for="grid-first-name"
          >
            Foto KTP
          </label>
          <input
            class="
              appearance-none
              block
              w-full
              bg-gray-200
              text-gray-700
              border border-red-500
              rounded
              py-3
              px-4
              mb-3
              leading-tight
              focus:outline-none focus:bg-white
            "
            v-model="latitude"
            type="text"
            placeholder="Isikan latitude"
          />
        </div>
      </div>
      <div class="flex flex-wrap -mx-3 mb-6">
        <div class="w-full md:w-1px-3 mb-6 md:mb-0">
          <label
            class="
              block
              uppercase
              tracking-wide
              text-gray-700 text-xs
              font-bold
              mb-2
            "
            for="grid-first-name"
          >
            Upload Surat Permohonan
          </label>
          <input
            class="
              appearance-none
              block
              w-full
              bg-gray-200
              text-gray-700
              border border-red-500
              rounded
              py-3
              px-4
              mb-3
              leading-tight
              focus:outline-none focus:bg-white
            "
            v-model="debit_liter"
            type="text"
            placeholder="Isikan debit liter/detik"
          />
        </div>
      </div>
  
      <br />
      <button
        class="
          bg-blue-500
          hover:bg-blue-700
          text-white
          font-bold
          py-2
          px-4
          rounded
        "
      >
        Submit
      </button>
    </form>
  </template>
  <script>
  import axios from "axios";
  var today = new Date();
  export default {
    el: '#app',
    name:"permohonan",
    data() {
      return {
        subkor: false,
        kabagtu: false,
        SISDABRA: false,
        kabidop: false,
        tanggalpemohon: "",
        luas: "",
        komoditas: "",
        infrastruktur: "",
        sumber: "",
        keterangan: "",
        longititude: "",
        latitude: "",
        tujuan: "",
        npwp: "",
        sk: "",
        debit_liter: "",
        debit_m3: "",
        lokasi: "",
        izin: 1,
        izins: [],
        no: "",
        // baru:false,
        statusSelected: 1,
        deskripsi: "",
        nama: "",
        noPemohonErr: "",
        nameErr: "",
        tanggalErr: "",
        lokasiErr: "",
        sumberErr: "",
        izinErr: "",
        statuserr: "",
        email: "",
        emailerr: "",
        modified: "",
        status: [],
      };
    },
    methods: {
      onChange(e) {
        this.statusSelected = e.target.value;
        this.modified = today;
      },
      onChangeIzin(e) {
        this.izin = e.target.value;
      },
      checkForm: function (e) {
        e.preventDefault();
        if (this.nama === "") {
          this.nameErr = "nama pemohon is required.";
        } else if (this.sumber === "") {
          this.nameErr = "sumber is required.";
        } else if (this.lokasi === "") {
          this.lokasiErr = "lokasi pemohon is required.";
        } else if (this.tanggalpemohon === "") {
          this.tanggalErr = "tanggal pemohon is required.";
        } else if (this.izin == 1) {
          this.izinErr = "izin is required.";
        } else {
          const datapost = {
            subkor: this.subkor?1:0,
        kabagtu: this.subkor?1:0,
        SISDABRA: this.subkor?1:0,
        kabidop: this.subkor?1:0,
            modified: this.modified,
            luas: this.luas,
            komoditas: this.komoditas,
            infrastruktur: this.infrastruktur,
            tanggal_pemohon: this.tanggalpemohon,
            nama: this.nama,
            NPWP: this.npwp,
            no_pemohon: this.no,
            email: this.email,
            status: this.statusSelected,
            deskripsi: this.deskripsi,
            sumber: this.sumber,
            keterangan: this.keterangan,
            longititude: this.longititude,
            latitude: this.latitude,
            tujuan: this.tujuan,
            sk: this.sk,
            debit_liter: this.debit_liter,
            debit_m3: this.debit_m3,
            lokasi: this.lokasi,
            izin: this.izin,
          };
          if (!!this.$route.params.id) {
            axios
              .put(
                `http://192.168.10.102:8000/permohonan/` + this.$route.params.id,
                datapost
              )
              .then((response2) => {
                this.$swal(response2.data);
              });
          } else {
            axios
              .post(`http://192.168.10.102:8000/permohonan`, datapost)
              .then((response) => {
                this.$swal(response.data);
                if(response.data == "Data Tersimpan"){
                (this.npwp = ""),
                  (this.tanggalpemohon = ""),
                  (this.luas = ""),
                  (this.komoditas = ""),
                  (this.infrastruktur = ""),
                  (this.sumber = ""),
                  (this.keterangan = ""),
                  (this.longititude = ""),
                  (this.latitude = ""),
                  (this.tujuan = ""),
                  (this.sk = ""),
                  (this.debit_liter = ""),
                  (this.debit_m3 = ""),
                  (this.lokasi = ""),
                  (this.izin = 1),
                  (this.statusSelected = 1),
                  (this.deskripsi = ""),
                  (this.nama = ""),
                  (this.noPemohonErr = ""),
                  (this.nameErr = ""),
                  (this.statuserr = ""),
                  (this.email = ""),
                  (this.emailerr = "");
                  }
              });
          }
        }
      },
    },
    created() {
      axios.get(`http://192.168.10.102:8000/status`).then((response) => {
        this.status = response.data;
      });
      axios.get(`http://192.168.10.102:8000/izin`).then((status) => {
        this.izins = status.data;
     
      axios
        .get(`http://192.168.10.102:8000/permohonan/` + this.$route.params.id)
        .then((response) => {
          if (response.data.status === "succes") {
            if (response.data.data.kabagtu == 1) {
              this.kabagtu = true;
            }
            if (response.data.data.SISDABRA == 1) {
              this.SISDABRA = true;
            }
            if (response.data.data.subkor == 1) {
              this.subkor = true;
            }
            if (response.data.data.kabidop == 1) {
              this.kabidop = true;
            }
            (this.tanggalpemohon = response.data.data.tanggal_pemohon),
              (this.no = response.data.data.no_pemohon),
              (this.luas = response.data.data.luas),
              (this.komoditas = response.data.data.komoditas),
              (this.infrastruktur = response.data.data.infrastruktur),
              (this.sumber = response.data.data.sumber),
              (this.longititude = response.data.data.longititude),
              (this.latitude = response.data.data.latitude),
              (this.sk = response.data.data.sk),
              (this.statusSelected = response.data.data.statusId),
              (this.debit_liter = response.data.data.debit_detik),
              (this.lokasi = response.data.data.lokasi),
              status.data.forEach((r) => {
                if(response.data.data.izin == r.nama){
                   this.izin = r.id
                }
              })
             
              (this.nama = response.data.data.nama_pemohon),
              (this.modified = response.data.data.diubah),
              (this.email = response.data.data.email);
            this.npwp = response.data.data.NPWP;
          } else {
            this.baru = false;
          }
           });
        });
    },
  };
  </script>
  
  <style>
  .left{
    justify-items: left;;
    align-items: left;

}</style>