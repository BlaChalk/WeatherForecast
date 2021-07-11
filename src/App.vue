<template lang="pug">
#app
  //- <img alt="Vue logo" src="./assets/logo.png">
  //- <HelloWorld msg="Welcome to Your Vue.js App"/>
  h1 氣象據報觀測資料
  cityList(v-for="weatherData in weatherDatas") 
    city {{ weatherData.locationName }}
</template>

<script>
import HelloWorld from './components/HelloWorld.vue'
import axios from 'axios'

export default {
  name: 'App',
  components: {
    HelloWorld
  },
  data() {
    return {
      weatherDatas: null
    }
  },
  mounted () {
    axios
      .get('https://opendata.cwb.gov.tw/api/v1/rest/datastore/F-C0032-001?Authorization=CWB-262367AE-AD07-4CEB-88B6-3D6237F6A839&format=JSON&locationName=')
      .then(response => {
      // console.log(response.data)
      this.weatherDatas = response.data.records.location
    })
  }
}
</script>

<style lang="scss">
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
