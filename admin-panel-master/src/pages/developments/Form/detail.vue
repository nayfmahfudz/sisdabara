<template>
    <div class="hero d-block d-lg-flex align-items-center">

            <div class="block">
                <carousel :items-to-show="1.5">
                    <slide v-for="slide in this.images" :key="slide">
                        <img class="carousel__item" :src= slide >
                    </slide>

                    <template #addons>
                        <navigation />
                        <pagination />
                    </template>
                </carousel>

        </div>
        <div class="text order-2 order-lg-1 h-100 d-lg-flex justify-content-center">
            <div class="align-self-center text-left">
                <div class="container mx-auto p-32">
                   
                            {{ data }}
                </div>
            </div>
        </div>
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
            data: ""
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
            this.images = ["src/assets/Semantok-48.jpg", "src/assets/Semantok-50.jpg","src/assets/Semantok-1.jpg","src/assets/Semantok-2.jpg"];
            this.data = " Bendungan Semantok terletak di Dusun Kedungpingit Desa Sambi Kerep Kecamatan Rejoso Kabupaten Nganjuk, Propinsi Jawa Timur.Bendungan terletak pada koordinat 111"
            + "0 53’ 25.68” BT dan 7" +
            "0 29’ 41, 90”"+
            "LS.Bendungan Semantok terletak di Aliran Sungai"+
            "Semantok.As"+
"Bendungan Semantok direncanakan"
+"terletak di antara bukit kanan dan kiri Sungai Semantok"+
"dengan jarak 3.100 meter."+
"Rencana kegiatan Pembangunan Bendungan"+
"Semantok di Kecamatan Rejoso Kabupaten Nganjuk"+
"memiliki tujuan untuk meminimalisir banjir yang terjadi"+
"di Kecamatan Rejoso serta menahan air yang"+
"berlimpah pada musim penghujan serta"+
"mendistribusikannya pada musim kemarau agar tidak"+
"terjadi kekeringan pada areal persawahan sehingga"+
"meningkatkan produksi pertanian atau intensitas"+
"panen untuk meningkatkan ekonomi petani dan"+
"peningkatan taraf hidup masyarakat dan Pendapatan"+
"Asli Daerah(PAD) Kabupaten Nganjuk."+
"Manfaat yang hendak dicapai dengan Pelaksanaan"+
"Pekerjaan Pembangunan Bendungan Semantok di"+
"Kabupaten Nganjuk, Provinsi Jawa Timur ini adalah           :"+
"• Mereduksi banjir sebesar 30 %; • Penyediaan air irigasi seluas 1.900 ha; • Penyediaan air baku sebesar 312 ltr / dt; • Pariwisata; • Pemeliharaan sungai di hilir bendungan 30 ltr / dt "+
"2. DATA TEKNIS"+
"Data teknis Bendungan sebagai berikut :"+
"- Nama sungai = Semantok - Daerah Tangkapan Air = 54,032 km"+
"2"+
"- Panjang sungai utama = 18,19 km - Slope dasar sungai = 0,00283 - Curah hujan rata-rata tahunan = 1986 mm"+
"TUBUH BENDUNGAN - Tipe tubuh bendungan"+
"=Random tanah dgn inti tegak"+
"- Elevasi mercu bendungan = +94,20 - Tinggi bendungan = 30,00 m - Panjang mercu bendungan = 3.100 m - Kemiringan lereng hulu = 1 : 3 - Kemiringan lereng hilir = 1 : 2,75 - Elevasi Tampungan Banjir = +93,33 - Elevasi Tampungan Normal = +90,14 - Elevasi Tampungan Mati = +80,64 - Tampungan Total = 32.673.519m"+
"3"+
"- Tampungan Normal = 22.404.068"+
"m"+
"3"+
"- Tampungan Efektif = 18.303.262 m"+
"3"+
"- Tampungan Mati = 4.100.806 m"+
"3"+
"- Luas Genangan El. HWL = ± 365 Ha"+
"BANGUNAN SPILLWAY - Jenis bangunan = Pelimpah tanpa pintu - Tipe mercu = Ogee - Elevasi mercu = +90,14 m - Panjang ambang spillway = 47,00 m - Debit pelimpah (Q PMF) = 575,00 m3"+
"/det"+
"- Debit pelimpah (Q1000th) = 165,00 m"+
"3"+
"/det"+
"SECANT PILE"+
"pillway/Pelimpah"+
"BANGUNAN INTAKE"+
"- Tipe = Menara Tenggelam"+
"- Elevasi ambang pengambilan = +80,64 m"+
"- Tinggi menara = 16,38 m"+
"- Dimensi pengelak (2 unit) = 3,0 m x 3,0 m"+
"- Dimensi menara = 1,75 x 1,75 m"+
"- Menara = beton bertulang"+
"- Pintu = katup"+
"- Dimensi katup = dia. 1,2 m"+
"3. PELAKSANAAN KONSTRUKSI"+
"Konstruksi Bendungan Semantok dilaksanakan dari"+
"tahun 2017 - 2021, terkontrak tanggal 22 Desember"+
"2017, terdiri dari 2 Paket :"+
"Paket 1 : Abipraya – Pelita, KSO"+
"Kegiatan : Tubuh bendungan bagian kiri, Intake"+
"ngomben, Bangunan fasilitas, Instrumentasi, Jalan"+
"masuk ke quarry, Jalan masuk ke borrow, Relokasi"+
"jalan propinsi."+
"Paket 2 : PT. Hutama – Bangunnusa, KSO"+
"Kegiatan : Tubuh bendungan bagian kanan, Pengelak,"+
"Intake, Pelimpah, Instrumentasi."+
"Konsultan Supervisi : PT. Caturbina Guna Persada,"+
"PT. Arga Pasca R., PT. Wecon, KSO"       
} else {
    this.images = ["src/assets/Semantok-48.jpg", "src/assets/Semantok-50.jpg","src/assets/tugu-1.jpg","src/assets/tugu-2.jpg"];
    this.data=""
        }
    }
}


</script>
<style>
.carousel__item {
    min-height: 200px;
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