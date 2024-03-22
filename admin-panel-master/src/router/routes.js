
import home from "@/pages/Guest.vue";
import map from "@/pages/map.vue";
import cek from "@/pages/cek.vue";
import AppHeader from "@/layouts/header.vue";
import detail from "@/pages/developments/Form/detail.vue";
import permohonan from "@/pages/developments/Form/formlayanan.vue";
import openstreetmap from "@/components/layouts/openstreetmap.vue";
const routes = [
      {
        path: '/',
        components: {
          // header: AppHeader,
          default: openstreetmap,
          
        }
      },
      {
        path: '/detail/:id',
        components: {
          header: AppHeader,
          default: detail,
        }
      },
      {
        path: '/cek',
        components: {
          header: AppHeader,
          default: cek,
        }
      },
      {
        path: '/map',
        components: {
          header: AppHeader,
          default: map,
        }
      },
      {
        path: '/permohonan',
        components: {
          header: AppHeader,
          default: permohonan,
        }
      },
 
  {
    path: '/login',
    name: 'login',
    component: () => import('@/pages/Login.vue')
  },
  { 
    path: '/admin', 
    component: () =>import('@/layouts/DefaultLayout.vue'),
    children: [
      {
        path: 'homeAdmin',
        alias: 'homeAdmin',
        name: 'homeAdmin',
        component: () => import('@/pages/Home.vue')
      },
      {
        path: 'guest',
        name: 'guest',
        component: () => import('@/pages/Guest.vue')
      },
      {
        path: 'dev/getting-started',
        name: 'dev-getting-started',
        component: () => import('@/pages/developments/GettingStarted.vue')
      },
      {
        path: 'permohonan/:id',
        component: () => import('@/pages/developments/Form/index.vue')
      },
      {
        path: 'list',
        name: 'list',
        component: () => import('@/pages/developments/tables/Index.vue')
      },
      {
        path: 'listIzin',
        name: 'listIzin',
        component: () => import('@/pages/developments/tables/tablesIzin.vue')
      },{
        path: 'listStatus',
        name: 'listStatus',
        component: () => import('@/pages/developments/tables/tablesStatus.vue')
      },
      {
        path: 'formstatus/:id',
        component: () => import('@/pages/developments/Form/status.vue')
      },
      {
        path: 'formstatus',
        name: 'formstatus',
        component: () => import('@/pages/developments/Form/status.vue')
      },
      {
        path: 'formIzin/:id',
        component: () => import('@/pages/developments/Form/izin.vue')
      },
      {
        path: 'formIzin',
        name: 'formIzin',
        component: () => import('@/pages/developments/Form/izin.vue')
      }
      
    ]
  },
  
]
export default routes