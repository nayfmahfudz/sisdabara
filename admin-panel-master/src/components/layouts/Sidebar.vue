<template>
  <!-- Toggle sidebar button -->
  <button class="fixed z-50 bottom-4 right-4 w-16 h-16 rounded-full bg-gray-900 lg:hidden">
    <menu-alt-4-icon-s 
      class="btn-toggle"
      :class="{'opacity-0': showSidebar}"
      @click="toggleSidebar" />
    <x-icon-s 
      class="btn-toggle"
      :class="{'opacity-0': !showSidebar}"
      @click="toggleSidebar" />
  </button>
  <!-- Overlay -->
  <div class="fixed inset-0 bg-black bg-opacity-25 z-30 lg:hidden" :class="{'hidden': !showSidebar}"></div>
  <div class="fixed z-40 left-0 top-0 right-24 lg:right-auto lg:w-64 h-screen border-r border-gray-200 overflow-y-auto bg-white" :class="{'hidden': allowSidebarHide && !showSidebar}">
    <!-- Header -->
    <header class="flex items-center pt-10 px-5">
      <img src="@/assets/logo.svg" alt="Logo" class="w-10">
      <div class="ml-2 flex flex-col">
        <h1 class="text-sm text-gray-700 font-medium">Admin Panel</h1>
        <p class="text-gray-400 text-xs">SISDABRA</p>
      </div>
    </header>
    <!-- Menu -->
    <div class="mt-14">
      <menu-header text="Development" />
      <menu-item icon="lightning-bolt-icon-o" text="Getting Started" :route="{name: 'dev-getting-started'}" />
      <menu-item icon="cube-icon-o" text="Menu">
        <template #sub-menu>
          <menu-item-sub text="List Permohonan" :route="{name: 'list'}" />
          <menu-item-sub text="List Status" :route="{name: 'listStatus'}" />
          <menu-item-sub text="List Izin" :route="{name: 'listIzin'}" />
          <menu-item-sub text="Form Permohonan" :route="{name: 'permohonan'}" />
            <menu-item-sub text="Form Status" :route="{name: 'formstatus'}" />
            <menu-item-sub text="Form Izin" :route="{name: 'formIzin'}" />
        </template>
      </menu-item>

      <!-- <menu-header class="mt-10" text="Menu" />
      <menu-item icon="home-icon-o" text="Home" :route="{path: '/'}" />
      <menu-item icon="view-grid-icon-o" text="Accounts">
        <template #sub-menu>
          <menu-item-sub text="PayPal" />
          <menu-item-sub text="ShopeePay" />
        </template>
      </menu-item>
      <menu-item icon="credit-card-icon-o" text="Cards" />
      <menu-item icon="users-icon-o" text="Contacts" />
      <menu-item icon="calculator-icon-o" text="Loan Calculator" />
      <menu-item icon="cog-icon-o" text="Settings">
        <template #sub-menu>
          <menu-item-sub text="Profile" />
          <menu-item-sub text="Security" />
        </template>
      </menu-item>

      <menu-header class="mt-10" text="Scheduled Payments" />
      <menu-item icon="check-circle-icon-o" icon-class="text-blue-400" text="Monthly Rent" />
      <menu-item icon="check-circle-icon-o" icon-class="text-red-400" text="Food Payment" />
      <menu-item icon="check-circle-icon-o" icon-class="text-green-400" text="Utility Bills" /> -->
    </div>
  </div>
</template>

<script>
import MenuHeader from '@/components/layouts/SidebarMenuHeader.vue'
import MenuItem from '@/components/layouts/SidebarMenuItem.vue'
import MenuItemSub from '@/components/layouts/SidebarMenuItemSub.vue'
import { vueWindowSizeMixin } from 'vue-window-size/option-api'
export default {
  name: 'Sidebar',
  mixins: [vueWindowSizeMixin()],
  components: {
    MenuHeader,
    MenuItem,
    MenuItemSub,
  },
  data() {
    return {
      widthBreakpoint: 1024, // Tailwind 'lg' breakpoint
      showSidebar: false
    }
  },
  watch: {
    $windowWidth(val) {
      if (val < this.widthBreakpoint) { 
        this.showSidebar = false
      }
    },
    $route() {
      this.showSidebar = false
    },
    showSidebar(val) {
      this.$emit('visibility-change', val)
    }
  },
  computed: {
    allowSidebarHide() {
      return this.$windowWidth < this.widthBreakpoint;
    }
  },
  methods: {
    toggleSidebar() {
      this.showSidebar = !this.showSidebar
    }
  }
}
</script>

