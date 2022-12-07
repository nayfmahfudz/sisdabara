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
            v-model="nama"
            type="text"
            placeholder=" Nama Lengkap"
          />
          <p class="text-red-500 text-xs italic">{{ namaErr }}</p>
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
            v-model="noktp"
            type="text"
            placeholder=" No KTP"
          />
          <p class="text-red-500 text-xs italic">{{ noktpErr }}</p>
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
            v-model="email"
            type="text"
            placeholder="Isika E-mail anda"
          />
          <p class="text-red-500 text-xs italic">{{ emailErr }}</p>
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
            v-model="pekerjaan"
            type="text"
            placeholder="  Pekerjaan Pemohon"
          />
          <p class="text-red-500 text-xs italic">{{ pekerjaanErr }}</p>
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
            v-model="alamat"
            type="text"
            placeholder=" Alamat lengkap"
          />
          <p class="text-red-500 text-xs italic">{{ alamatErr }}</p>
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
            v-model="handphone"
            type="text"
            placeholder=" No Handphone "
          />
          <p class="text-red-500 text-xs italic">{{ handphoneErr }}</p>
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
            v-model="instansi"
            type="text"
            placeholder=" Instansi Anda "
          />
          <p class="text-red-500 text-xs italic">{{ instansiErr }}</p>
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
            v-model="tujuan"
            type="text"
            placeholder="Tujuan Permohonan data"
          />
          <p class="text-red-500 text-xs italic">{{ tujuanErr }}</p>
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
            v-model="catatan"
            type="text"
            placeholder=" Catatan yang Diminta"
          />
          <p class="text-red-500 text-xs italic">{{ catatanErr }}</p>
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
            type="file"
            name="ktp"
            @change="onChange"
          />
          <p class="text-red-500 text-xs italic">{{ ktpErr }}</p>
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
            type="file"
            name="permohonan"
            @change="onChange"
          />
          <p class="text-red-500 text-xs italic">{{ permohonanErr }}</p>
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
    <br>
    <br>
    <br>
  </template>
  <script>
  import axios from "axios";
  export default {
    el: '#app',
    name:"permohonan",
    data() {
      return {
        nama: "",
        noktp: "",
        pekerjaan: "",
        email: "",
        alamat: "",
        handphone: "",
        instansi: "",
        tujuan: "",
        catatan: "",
        ktp: null,
        permohonan: null,
        namaErr: "",
        noktpErr: "",
        alamatErr: "",
        pekerjaanErr: "",
        emailErr: "",
        handphoneErr: "",
        instansiErr: "",
        tujuanErr: "",
        catatanErr: "",
        ktpErr: "",
        permohonanErr: "",
      };
    },
    methods: {
      
      onChange(e) {
        const name = e.target.name,
        file = e.target.files[0]
  const hasName = ['permohonan', 'ktp'].includes(name)
  if(hasName && file) {this[name] = file
  this.$swal("Data Terupload")}
  else   this.$swal("data error");
      },
      checkForm: function (e) {
        e.preventDefault();
        if (this.nama === "") {
          this.namaErr = "nama pemohon is required.";
        } else if (this.noktp === "") {
          this.noktpErr = "No KTP is required.";
        } else if (this.email === "") {
          this.emailErr = "E-mail pemohon is required.";
        } else if (this.pekerjaan === "") {
          this.pekerjaanErr = "Pekerjaan pemohon is required.";
        } else if (this.alamat == "") {
          this.alamatErr = "Alamat is required.";
        } else if (this.handphone === "") {
          this.handphoneErr = "No Handphone is required.";
        } else if (this.instansi === "") {
          this.instansiErr = "Instansi pemohon is required.";
        } else if (this.tujuan === "") {
          this.tujuanErr = "Tujuan pemohon is required.";
        } else if (this.catatan == "") {
          this.catatanErr = "Catatan is required.";
        }else if (this.ktp === null) {
          this.ktpErr = "File KTP is required.";
        } else if (this.permohonan == null) {
          this.permohonanErr = "File Permohonan  is required.";
        }else {
        //   const datapost = {
        //     modified: this.modified,
        //     nama: this.nama,
        // noktp: this.noktp,
        // pekerjaan: this.pekerjaan,
        // email: this.email,
        // alamat: this.alamat,
        // handphone: this.,
        // instansi: this.,
        // tujuan: this.,
        // catatan: this.,
        // ktp: null,
        // permohonan: null,
        //   };
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