<template>
<swiper 
  :slideToClickedSlide="true"
  :centeredSlides="true"
  :slidesPerView="7"
  :mousewheel="true"
  :pagination='{
    "clickable": true
  }' 
  :scrollbar='{
    "hide": true
  }'
class="mySwiper">
  <swiper-slide v-for="(weatherData, key) in weatherDatas" @click="sendLocation(key)" @wheel="mousewheel">
    <div class="city-name">
      {{ weatherData.locationName }}
    </div>
  </swiper-slide>
  </swiper>
</template>
<script>
// Import Swiper Vue.js components
import { Swiper, SwiperSlide } from 'swiper/vue';

// Import Swiper styles
import 'swiper/swiper.scss';

import "swiper/components/scrollbar/scrollbar.min.css"



// import Swiper core and required modules
import SwiperCore, {
  Scrollbar, Pagination, Navigation, Mousewheel
} from 'swiper/core';

// install Swiper modules
SwiperCore.use([Scrollbar, Pagination, Navigation, Mousewheel]);


export default {
  components: {
    Swiper,
    SwiperSlide,
  },
  props: {
    weatherDatas: null,
    userSelectLocation: null
  },
  data() {
    return {
        
        
    };
  },
  methods: {
    sendLocation (locationNumber) {
      this.$emit('selectLocation', locationNumber)
    },
    mousewheel (event) {
      let direction = event.deltaY/150
      let swiper = document.querySelector('.mySwiper').swiper

      if (this.userSelectLocation>=0 && this.userSelectLocation<=this.weatherDatas.length) {
        swiper.slideTo(this.userSelectLocation+direction)
        this.$emit('changeLocation', direction)
      }
    }
  },
}
</script>

<style lang="sass">

.swiper-container
  width: 100%
  height: 80px

.swiper-slide
  text-align: center
  font-size: 18px
  background: none

  // Center slide text vertically
  display: -webkit-box
  display: -ms-flexbox
  display: -webkit-flex
  display: flex
  -webkit-box-pack: center
  -ms-flex-pack: center
  -webkit-justify-content: center
  justify-content: center
  -webkit-box-align: center
  -ms-flex-align: center
  -webkit-align-items: center
  align-items: center

  &:hover > .city-name
    background-color: rgba(80, 80, 80, 0.1)
    border-radius: 15px
    cursor: pointer
    padding: 10px

  img
    display: block
    width: 100%
    height: 100%
    object-fit: cover

.swiper-slide-active
  font-weight: bold
  font-size: 22px

@media screen and (max-width: 600px)
  .swiper-container
    height: 105px
  .city-name
    writing-mode: vertical-lr
</style>