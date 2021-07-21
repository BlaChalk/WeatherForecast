<template lang="pug">
#weatherBox
  .top
    .background
    .text-area
      .temperature 27°C
      .infos
        .time WEN. 11:50PM
        .address 台中市
</template>

<script>
import axios from 'axios'

export default {
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

<style lang="sass" scoped>
$font_size: 18px 
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

.top
  .background
    height: 350px
    background-image: url('~@/assets/extra_large.jpg')
    background-size: cover
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
</style>