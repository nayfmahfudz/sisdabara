<template>
    <header class="header-global">
        
            <div class="container  mx-auto .mob-carousel-img-container ">
                <img src="@/assets/logo.svg" alt="Logo" class="w-14 mob-carousel-img-container" />
                <h1 class="w-14 text-gray-700   .mob-carousel-img-container ">SISDABRA</h1>
                <ul class="flex justify-start navbar-nav">
                    <li class="pertama">


                    </li>
                    <li class="li">
                        <a href="/">Home</a>
                    </li>

                    <li class="li">
                        <a v-bind:href="'#/map'">Infrastruktur SDA</a>
                    </li>
                    <li class="li">
                        <a v-bind:href="'#/cek'">Cek Permohonan</a>
                    </li>
                    <li class="li">
                        <a  v-bind:href="'#/permohonan'">Permohonan</a>
                    </li>
                </ul>
            </div>
    </header>
</template>
<script>

export default {
    components: {
    }
};
</script>
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

  