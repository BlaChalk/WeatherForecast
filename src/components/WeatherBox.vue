<template lang="pug">
#weatherBox
  .cityList(v-for="weatherData in weatherDatas" v-show="weatherData.locationName === '臺中市'")
    .top
      .background
      .weather-measures
        .UVI 紫外線指數：{{ weatherData.weatherElement[9].time[0].elementValue[0].value }}
        .RH 平均濕度：{{ weatherData.weatherElement[2].time[0].elementValue[0].value }}%
        .PoP12h 降雨機率：{{ weatherData.weatherElement[0].time[0].elementValue[0].value }}%(12小時內)
      .text-area
        .temperature {{ weatherData.weatherElement[1].time[0].elementValue[0].value }}°C
        .infos
          .date {{ getDate() }}
          .time {{ getTimePerSecond() }}
          .address {{ weatherData.locationName }}
    .bottom
      .dayweather
        h4 MON
        svg(viewBox="-50 -50 100 100")
          circle.sun(cx=0 cy=0 r=25)
      .dayweather
        h4 TUE
        svg(viewBox="-60 -50 100 120")
          circle.sun(cx=0 cy=0 r=20)
          circle.cloud(cx=0 cy=30 r=20)
          circle.cloud(cx=-15 cy=30 r=20)
          circle.cloud(cx=-30 cy=30 r=20)
          circle.cloud(cx=-20 cy=10 r=15)
          circle.cloud(cx=-7 cy=15 r=15)
      .dayweather
        h4 WED
        svg(viewBox="-50 -20 100 100")
          line.rain(x1=-20 y1=5 x2=-20 y2=25)
          line.rain.rain2(x1=-10 y1=25 x2=-10 y2=35)
          line.rain.rain3(x1=4 y1=5 x2=4 y2=25)
          circle.cloud(cx=10 cy=30 r=20)
          circle.cloud(cx=-5 cy=30 r=20)
          circle.cloud(cx=-20 cy=30 r=20)
          circle.cloud(cx=-10 cy=10 r=15)
          circle.cloud(cx=-3 cy=15 r=15)
      .dayweather
        h4 THU
        svg(viewBox="-50 -50 100 100")
          circle.sun(cx=0 cy=0 r=25)
      .dayweather
        h4 FRI
        svg(viewBox="-50 -50 100 100")
          circle.sun(cx=0 cy=0 r=25)
      .dayweather
        h4 SAT
        svg(viewBox="-50 -50 100 100")
          circle.sun(cx=0 cy=0 r=25)
      .dayweather
        h4 SUN
        svg(viewBox="-50 -50 100 100")
          circle.sun(cx=0 cy=0 r=25)

          
</template>

<script>
import axios from 'axios'
import moment from 'moment'

export default {
  data() {
    return {
      weatherDatas: null,
      time: null
    }
  },
  methods: {
    getDate () {
      return moment().format('MMMM D') 
    },
    getTimePerSecond () {
      this.time = moment().format('ddd HH:mm') 
      setInterval(() => {
        this.time = moment().format('ddd HH:mm') 
      }, 1000);
      return this.time
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
  },
}
</script>

<style lang="sass" scoped>
$font_size: 18px 
$color_white: #fdfbfc
$color_gray: #ccc
$coler_yellow: #FFD633
$color_rain: #4DACFF

*
  font-family: monospace, 微軟正黑體
  // border: solid 1px
  position: relative
  user-select: none

#weatherBox
  width: 100%
  max-width: 700px
  overflow: hidden
  border-radius: 20px
  box-shadow: 5px 10px 20px rgba(black,0.4)

  &:hover
    .top
      height: 450px
      .background
        top: 30px
      .weather-measures
        opacity: 1
    .bottom
      height: 75px
      opacity: 1

.top
  height: 400px
  transition: 1s
  .background
    height: 350px
    top: 0px
    background-image: url('~@/assets/extra_large.jpg')
    background-size: cover
    transition: 1s
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
    margin: 0px 10px 0px 10px
    align-items: center
    h4
      margin: 5px 0px 10px 0px
    svg
        width: 100%
        max-width: 40px
        height: 100px
        .sun
          fill: rgba($coler_yellow, 0.9)
          animation: sun-breath 3s infinite
        .cloud
          fill: $color_gray
          animation: cloud-drift 4s infinite
        .rain
          stroke: rgba($color_rain, 0.8)
          animation: rain-drop 1.5s infinite linear
        .rain2
          animation-delay: -0.7s
        .rain3
          animation-delay: -0.3s
        @keyframes sun-breath
          0%
            transform: scale(0.8)
          50%
            transform: scale(1)
          100%
            transform: scale(0.8)
        @keyframes cloud-drift
          0%
            transform: translateY(0px)
          50%
            transform: translateY(-10px)
          100%
            transform: translateY(0px)
        @keyframes rain-drop
          0%
            transform: translateY(0px)
          85%
            opacity: 1
          100%
            transform: translateY(45px)
            opacity: 0
</style>