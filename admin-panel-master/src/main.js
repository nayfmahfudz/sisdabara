import { createApp } from 'vue'
import App from './App.vue'
import '@/styles/app.css'
import router from '@/router'
import VueCookies from 'vue3-cookies'
import VueSweetalert2 from 'vue-sweetalert2';
import 'sweetalert2/dist/sweetalert2.min.css';
import Vue3VideoPlayer from '@cloudgeek/vue3-video-player'
import '@cloudgeek/vue3-video-player/dist/vue3-video-player.css'

const app = createApp(App)

app.use(Vue3VideoPlayer);
app.use(VueCookies, {
    expireTimes: "7d",
});
app.use(VueSweetalert2);
app.use(router)
app.mount('#app')
