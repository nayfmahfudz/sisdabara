<template>
    <div class="hero d-block d-lg-flex align-items-center">

        <div class="block " >
            <carousel :items-to-show="3">
                <slide v-for="slide in this.images" :key="slide">
                    <img class="carousel__item" :src=slide>
                </slide>

                <template #addons>
                    <navigation />
                    <pagination />
                </template>
            </carousel>

        </div>
   
    </div>
  

<div class="form-container">
  <h2>Formulir Kontak</h2>
    <!-- Nama -->
    <div class="form-group">
      <label for="name">Nama Lengkap:</label>
      <input type="text" id="name" name="name" required placeholder="Masukkan nama lengkap">
    </div>
    
    <!-- Email -->
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" id="email" name="email" required placeholder="Masukkan alamat email">
    </div>
    
    <!-- Password -->
    <div class="form-group">
      <label for="password">Password:</label>
      <input type="password" id="password" name="password" required placeholder="Masukkan password">
    </div>
    
    <!-- Jenis Kelamin -->
    <div class="form-group">
      <label>Jenis Kelamin:</label>
      <input type="radio" id="male" name="gender" value="male">
      <label for="male">Laki-laki</label>
      <input type="radio" id="female" name="gender" value="female">
      <label for="female">Perempuan</label>
    </div>
    
    <!-- Pilihan -->
    <div class="form-group">
      <label>Hobi:</label>
      <input type="checkbox" id="hobby1" name="hobby" value="Reading">
      <label for="hobby1">Membaca</label>
      <input type="checkbox" id="hobby2" name="hobby" value="Travelling">
      <label for="hobby2">Bepergian</label>
      <input type="checkbox" id="hobby3" name="hobby" value="Sports">
      <label for="hobby3">Olahraga</label>
    </div>
    
    <!-- Pesan -->
    <div class="form-group">
      <label for="message">Pesan:</label>
      <textarea id="message" name="message" rows="4" placeholder="Tuliskan pesan Anda disini..."></textarea>
    </div>
    
    <!-- Pilihan Negara -->
    <div class="form-group">
      <label for="country">Pilih Negara:</label>
      <select id="country" name="country">
        <option value="id">Indonesia</option>
        <option value="us">Amerika Serikat</option>
        <option value="uk">Inggris</option>
        <option value="jp">Jepang</option>
        <option value="fr">Prancis</option>
      </select>
    </div>
    <!-- Tombol Kirim -->
    <a :href=this.gmap class="button" type="submit">Menuju Titik Lokasi</a>
  
</div>


</template>
<script>
// If you are using PurgeCSS, make sure to whitelist the carousel CSS classes
import 'vue3-carousel/dist/carousel.css'
import { Carousel, Slide, Pagination, Navigation } from 'vue3-carousel'

export default {
    name: 'App',
    components: {
        Carousel,
        Slide,
        Pagination,
        Navigation,
    },
    data() {
        return {
            images: [],
            data: "",
            gmap: ""
        }
    },
    methods: {
        onChange(e) {
            this.statusSelected = e.target.value;
        },
        checkForm: function (e) {
            e.preventDefault();
            if (this.nama === '') {
                this.nameerr = 'nama pemohon is required.';
            }
            else {
                const datapost = {
                    nama: this.nama,
                    deskripsi: this.deskripsi
                };
                axios.post(`http://192.168.10.102:8000/izin`, datapost)
                    .then(response => {
                        this.$swal(response.data);
                    });
            }
        }
    },
    created() {
        if (this.$route.params.id == "semantok") {
            this.gmap = "https://www.google.com/maps/dir/Balai Pengembangan Kompetensi PUPR Wilayah VI Surabaya, Jalan Gayung Kebonsari, Gayungan, Kota Surabaya, Jawa Timur/Bendungan Semantok, Jalan Nganjuk - Bojonegoro, Kedungpingit, Sambikerep, Kabupaten Nganjuk, Jawa Timur/@-7.4630005,111.9814649,10z/data=!3m1!4b1!4m13!4m12!1m5!1m1!1s0x2dd7fb018c78dcd9:0x5349234a6f7b4d2b!2m2!1d112.7244535!2d-7.3300989!1m5!1m1!1s0x2e7834ed17a48e85:0x82ccc4c5856660e2!2m2!1d111.8905152!2d-7.4948587?hl=id";
            this.images = ["src/assets/Semantok-48.jpg", "src/assets/Semantok-50.jpg", "src/assets/Semantok-1.jpg", "src/assets/Semantok-2.jpg"];
            this.data = ` Bendungan Semantok terletak di Dusun Kedungpingit Desa Sambi Kerep Kecamatan Rejoso Kabupaten Nganjuk, Propinsi Jawa Timur.Bendungan terletak pada koordinat 1110 53’ 25.68” BT dan 70 29’ 41, 90”LS.Bendungan Semantok terletak di Aliran SungaiSemantok.AsBendungan Semantok direncanakanterletak di antara bukit kanan dan kiri Sungai Semantokdengan jarak 3.100 meter.Rencana kegiatan Pembangunan BendunganSemantok di Kecamatan Rejoso Kabupaten Nganjukmemiliki tujuan untuk meminimalisir banjir yang terjadidi Kecamatan Rejoso serta menahan air yangberlimpah pada musim penghujan sertamendistribusikannya pada musim kemarau agar tidakterjadi kekeringan pada areal persawahan sehinggameningkatkan produksi pertanian atau intensitaspanen untuk meningkatkan ekonomi petani danpeningkatan taraf hidup masyarakat dan PendapatanAsli Daerah(PAD) Kabupaten Nganjuk.Manfaat yang hendak dicapai dengan PelaksanaanPekerjaan Pembangunan Bendungan Semantok diKabupaten Nganjuk, Provinsi Jawa Timur ini adalah           :• Mereduksi banjir sebesar 30 %; • Penyediaan air irigasi seluas 1.900 ha; • Penyediaan air baku sebesar 312 ltr / dt; • Pariwisata; • Pemeliharaan sungai di hilir bendungan 30 ltr / dt 2. DATA TEKNISData teknis Bendungan sebagai berikut :- Nama sungai = Semantok - Daerah Tangkapan Air = 54,032 km2- Panjang sungai utama = 18,19 km - Slope dasar sungai = 0,00283 - Curah hujan rata-rata tahunan = 1986 mmTUBUH BENDUNGAN - Tipe tubuh bendungan=Random tanah dgn inti tegak- Elevasi mercu bendungan =  94,20 - Tinggi bendungan = 30,00 m - Panjang mercu bendungan = 3.100 m - Kemiringan lereng hulu = 1 : 3 - Kemiringan lereng hilir = 1 : 2,75 - Elevasi Tampungan Banjir =  93,33 - Elevasi Tampungan Normal =  90,14 - Elevasi Tampungan Mati =  80,64 - Tampungan Total = 32.673.519m3- Tampungan Normal = 22.404.068m3- Tampungan Efektif = 18.303.262 m3- Tampungan Mati = 4.100.806 m3- Luas Genangan El. HWL = ± 365 HaBANGUNAN SPILLWAY - Jenis bangunan = Pelimpah tanpa pintu - Tipe mercu = Ogee - Elevasi mercu =  90,14 m - Panjang ambang spillway = 47,00 m - Debit pelimpah (Q PMF) = 575,00 m3/det- Debit pelimpah (Q1000th) = 165,00 m3/detSECANT PILEpillway/PelimpahBANGUNAN INTAKE- Tipe = Menara Tenggelam- Elevasi ambang pengambilan =  80,64 m- Tinggi menara = 16,38 m- Dimensi pengelak (2 unit) = 3,0 m x 3,0 m- Dimensi menara = 1,75 x 1,75 m- Menara = beton bertulang- Pintu = katup- Dimensi katup = dia. 1,2 m3. PELAKSANAAN KONSTRUKSIKonstruksi Bendungan Semantok dilaksanakan daritahun 2017 - 2021, terkontrak tanggal 22 Desember2017, terdiri dari 2 Paket :Paket 1 : Abipraya – Pelita, KSOKegiatan : Tubuh bendungan bagian kiri, Intakengomben, Bangunan fasilitas, Instrumentasi, Jalanmasuk ke quarry, Jalan masuk ke borrow, Relokasijalan propinsi.Paket 2 : PT. Hutama – Bangunnusa, KSOKegiatan : Tubuh bendungan bagian kanan, Pengelak,Intake, Pelimpah, Instrumentasi.Konsultan Supervisi : PT. Caturbina Guna Persada,PT. Arga Pasca R., PT. Wecon, KSO`
        } else {
            this.gmap = "https://www.google.com/maps/dir/Balai Pengembangan Kompetensi PUPR Wilayah VI Surabaya, Jalan Gayung Kebonsari, Gayungan, Kota Surabaya, Jawa Timur/Bendungan Tugu, Jalan Raya Trenggalek - Ponorogo, Pacar, Nglinggis, Kabupaten Trenggalek, Jawa Timur/@-7.7234464,111.7745496,10z/data=!4m13!4m12!1m5!1m1!1s0x2dd7fb018c78dcd9:0x5349234a6f7b4d2b!2m2!1d112.7244535!2d-7.3300989!1m5!1m1!1s0x2e790e6d1aa17d65:0x27e753bf5b3b310a!2m2!1d111.5847978!2d-8.0371683?hl=id";
            this.images = ["src/assets/ss.png","src/assets/tugu.jpg", "src/assets/tugu-1.jpg", "src/assets/tugu-2.jpg"];
            this.data = ""
        }
    }
}


</script>
<style>
.carousel__item {
    height: 50%;
    width: 100%;
    background-color: var(--vc-clr-primary);
    color: var(--vc-clr-white);
    font-size: 20px;
    border-radius: 8px;
    display: flex;
    justify-content: center;
    align-items: center;
}

.carousel__slide {
    padding: 10px;
}

.carousel__prev,
.carousel__next {
    box-sizing: content-box;
    border: 5px solid white;
}

</style>
<style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f9;
      margin: 0;
      padding: 0;
    }
    .form-container {
      max-width: 600px;
      margin: 50px auto;
      background-color: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    h2 {
      text-align: center;
      color: #333;
    }
    label {
      display: block;
      margin-bottom: 8px;
      color: #555;
    }
    input, textarea, select {
      width: 100%;
      padding: 10px;
      margin-bottom: 15px;
      border: 1px solid #ccc;
      border-radius: 4px;
      font-size: 16px;
    }
    .form-group {
      margin-bottom: 20px;
    }
    button {
      background-color: #4CAF50;
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      width: 100%;
    }
    button:hover {
      background-color: #45a049;
    }
  </style>