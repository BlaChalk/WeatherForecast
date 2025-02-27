<template lang="pug">
#app
  h1 氣象預報觀測資料
  WeatherBox.weatherBox
</template>
<script>
import WeatherBox from './components/WeatherBox.vue'

export default {
  name: 'App',
  components: {
    WeatherBox
  },
}
</script>

<style lang="sass">

html, body
  margin: 0

h1
  margin-top: 15px
  margin-bottom: 15px

#app
  font-family: Avenir, Helvetica, Arial, sans-serif
  -webkit-font-smoothing: antialiased
  -moz-osx-font-smoothing: grayscale
  text-align: center
  color: #2c3e50

.weatherBox
  left: 50%
  transform: translateX(-50%)
  
</style>
