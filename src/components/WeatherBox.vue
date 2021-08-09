<template lang="pug">
#weatherBox
  .weatherDetail(v-for="(weatherData, key) in weatherDatas" v-show="key === currLocation" @mouseleave="userSelectDay = 1")
    .top
      .background
      h3.weather-status {{ weatherData.weatherElement[6].time[getWeatherArrayNumber(userSelectDay, getHourOfTheDay(weatherData.weatherElement[1].time[0].endTime))].elementValue[0].value }}
      .weather-measures
        .UVI 紫外線指數：{{ weatherData.weatherElement[9].time[userSelectDay-1].elementValue[0].value }}
        .RH 平均濕度：{{ weatherData.weatherElement[2].time[getWeatherArrayNumber(userSelectDay, getHourOfTheDay(weatherData.weatherElement[1].time[0].endTime))].elementValue[0].value }}%
        .PoP12h 降雨機率：{{ weatherData.weatherElement[0].time[getWeatherArrayNumber(userSelectDay, getHourOfTheDay(weatherData.weatherElement[1].time[0].endTime))].elementValue[0].value }}%(12小時內)
      .text-area
        .temperature {{ weatherData.weatherElement[1].time[getWeatherArrayNumber(userSelectDay, getHourOfTheDay(weatherData.weatherElement[1].time[0].endTime))].elementValue[0].value }}°C
        .infos
          .date {{ getDate() }}
          .time {{ getTimePerSecond() }}
          .address {{ weatherData.locationName }}
    .bottom
      .dayweather(v-for="item in 7" :key="item.id" :class="{selected: item===userSelectDay}" @click="showThisDay(item)")
          h4 {{ getDayOfTheWeek(item) }}
          WeatherIcon(:weatherIconValue="weatherData.weatherElement[6].time[item-1].elementValue[1].value")
          .temperature
            h5.high {{ weatherData.weatherElement[12].time[getWeatherArrayNumber(item, getHourOfTheDay(weatherData.weatherElement[1].time[0].endTime))].elementValue[0].value }}°C
            h5.low {{ weatherData.weatherElement[8].time[getWeatherArrayNumber(item, getHourOfTheDay(weatherData.weatherElement[1].time[0].endTime))].elementValue[0].value }}°C
  LocationSwiper.locationSwiper(:weatherDatas="weatherDatas")
          
</template>

<script>
import axios from 'axios'
import moment from 'moment'
import WeatherIcon from '@/components/WeatherIcon.vue'
import LocationSwiper from '@/components/LocationSwiper.vue'

export default {
  name: 'WeatherBox',
  components: {
    WeatherIcon, LocationSwiper
  },
  data() {
    return {
      weatherDatas: null,
      time: null,
      userSelectDay: 1,
    }
  },
  computed: {
    currLocation: {
      get(){
        return this.$store.state.currLocation
      },
      set(value){
        this.$store.commit('setcurrLocation', value)
      }
    }
  },
  methods: {
    getDate () {
      return moment().add(this.userSelectDay-1, 'd').format('MMMM D') 
    },
    getTimePerSecond () {
      this.time = moment().add(this.userSelectDay-1, 'd').format('ddd HH:mm') 
      setInterval(() => {
        this.time = moment().add(this.userSelectDay-1, 'd').format('ddd HH:mm') 
      }, 1000);
      return this.time
    },
    getDayOfTheWeek (value) {
      return moment().add(value-1, 'd').format('ddd').toUpperCase() 
    },
    getHourOfTheDay (value) {
      return moment(value).format('H')
    },
    showThisDay (value) {
      this.userSelectDay = value
    },
    getWeatherArrayNumber (number, endTime) {
      if (endTime === '18') {
        return (number-1)*2
      } 
      else {
        return number*2-1
      }
    },
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
  },
}
</script>

<style lang="sass" scoped>
$font_size: 18px 
$color_white: #fdfbfc
$color_gray: #ccc
$coler_yellow: #FFD633
$color_dark_red: #C1666B
$color_dark_blue: #4281A4
$color_rain: #4DACFF

*
  font-family: monospace, 微軟正黑體
  // border: solid 1px
  position: relative
  user-select: none

#weatherBox
  width: 100%
  max-width: 700px
  display: flex
  flex-direction: column

.weatherDetail
  overflow: hidden
  border-radius: 20px
  box-shadow: 5px 10px 20px rgba(black,0.4)

  &:hover
    .top
      height: 430px
      .background
        top: 30px
      .weather-status
        opacity: 0
      .weather-measures
        opacity: 1
    .bottom
      height: 95px
      opacity: 1
      .dayweather
        .temperature
          opacity: 1  
    ~ .locationSwiper
      display: none

.top
  height: 400px
  transition: 1s
  .background
    height: 350px
    top: 0px
    background-image: url('~@/assets/extra_large.jpg')
    background-size: cover
    transition: 1s
  .weather-status
    position: absolute
    right: 20px
    top: 5px
    opacity: 1
    transition: 0.5s
  .weather-measures
    display: flex
    flex-direction: column
    opacity: 0
    position: absolute
    left: 20px
    top: 20px
    font-weight: normal
    font-size: $font_size
    text-align: left
    transition: 1s
  .text-area
    display: flex
    left: 20px
    bottom: 30px
    font-weight: normal
    font-size: $font_size
    .temperature
      font-size: $font_size*3
      font-weight: bold
      margin-right: 30px
    .infos
      display: flex
      flex-direction: column-reverse
      text-align: left
      margin-bottom: 5px
      .address
        font-size: $font_size*1.2
        letter-spacing: 2px

.bottom
  display: flex
  justify-content: center
  height: 10px
  top: -20px
  transition: 0.8s
  opacity: 0
  .dayweather
    display: flex
    flex-direction: column
    width: calc( 100%/7 )
    margin: 0px 10px
    align-items: center
    border-radius: 10px
    &:hover
      background-color: rgba($color_gray, 0.3)
      cursor: pointer
    h4
      margin: 5px 0px 5px 0px
    .temperature
      display: flex
      opacity: 0
      transition: 0.5s
      h5  
        margin: 2px
      .high
        color: rgba($color_dark_red, 0.8)
      .low
        color: rgba($color_dark_blue, 0.6)
  .selected
    background-color: rgba($color_gray, 0.3)
    cursor: pointer

@media screen and (max-width: 580px)
  #weatherBox
    box-sizing: border-box
    padding: 0px 12px
  .background
    background-position-x: center
  .weatherDetail
    &:hover
      .bottom
        height: 115px
  .bottom  
    height: 10px    
    .dayweather
      margin: 0px 5px
      .temperature
        flex-direction: column

</style>