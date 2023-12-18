<template>
  <div id="app">

    <HelloWorld />
  </div>
</template>

<script>
import HelloWorld from './views/HomePage.vue'

export default {
  name: 'App',
  components: {
    HelloWorld
  }
}
</script>

<style>
html, body {
  height: 100vh;
  width: 100vw;
  margin: 0;
  padding: 0;
}
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  overflow: hidden;
  height:100%;
}
</style>
