<template lang="pug">
#app
  h1 氣象預報觀測資料
  WeatherBox.weatherBox
  //- .cityList(v-for="weatherData in weatherDatas") {{ weatherData.locationName }} 

</template>
<script>
import axios from 'axios'
import WeatherBox from './components/WeatherBox.vue'

export default {
  name: 'App',
  components: {
    WeatherBox
  },
  data() {
    return {
      weatherDatas: null
    }
  },
  mounted () {
    // 臺灣各縣市鄉鎮未來1週逐12小時天氣預報
    axios
    .get('https://opendata.cwb.gov.tw/api/v1/rest/datastore/F-D0047-093?Authorization=CWB-262367AE-AD07-4CEB-88B6-3D6237F6A839&locationId=F-D0047-091')
    .then(response => {
      // console.log(response.data)
      this.weatherDatas = response.data.records.locations[0].location
    })
    .catch((error) => {
      if (error.response) {
        // When response status code is out of 2xx range 
        console.log(error.response.data)
        console.log(error.response.status)
        console.log(error.response.headers)
      } else if (error.request) {
        // When no response was recieved after request was made
        console.log(error.request)
      } else {
        // Error
        console.log(error.message)
      }
    })
  }
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
