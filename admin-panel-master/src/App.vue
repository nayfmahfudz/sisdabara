<template>
 
    <router-view name="header"></router-view>
    <div id="app">
    <main>
  <router-view />
  </main>
  <router-view name="footer"></router-view>
</div>
</template>

<script>
export default {
  name: 'App'
}
</script>