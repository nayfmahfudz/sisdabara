<template>
    <!-- <header class="header-global">
        
            <div class="container  mx-auto .mob-carousel-img-container ">
                <img src="@/assets/logo.svg" alt="Logo" class="w-14 mob-carousel-img-container" />
                <h1 class="w-14 text-gray-700   .mob-carousel-img-container">BRANTAS</h1>
            </div>
    </header> -->
</template>
<script>

export default {
    components: {
    }
};
</script>
<style>
/* Gaya tombol */
.tombol-google {
  display: inline-block;
  padding: 15px 30px;
  background-color: rosybrown; /* Warna biru Google */
  color: black;
  font-size: 12px;
  font-weight: bold;
  border-radius: 8px;
  text-align: center;
  text-decoration: none;
  transition: background-color 0.3s ease, transform 0.3s ease;
}

/* Efek hover untuk tombol */
.tombol-google:hover {
  background-color: #34a853; /* Warna hijau saat hover */
  transform: scale(1.05); /* Efek zoom saat hover */
}

/* Efek fokus untuk aksesibilitas */
.tombol-google:focus {
  outline: none;
  box-shadow: 0 0 10px rgba(66, 133, 244, 0.6); /* Efek fokus */
}
</style>
<style>

.li {
    margin: 15px;
}

.pertama {
    margin: 30px;
}

.center {
    text-align: center;
}

.mob-carousel-img-container {
   
    width: 70px;
    justify-items: center;
    align-items: center;

}
</style>

  