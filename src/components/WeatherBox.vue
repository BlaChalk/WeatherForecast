<template lang="pug">
#weatherBox
  .top
    .background

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

*
  font-family: 'Inconsolata', monospace, 微軟正黑體
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
    height: 400px
    background-image: url('~@/assets/extra_large.jpg')
    background-size: cover
</style>