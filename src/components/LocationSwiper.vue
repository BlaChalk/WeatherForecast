<template>
<swiper :slidesPerView="7" 
  :pagination='{
    "clickable": true
  }' 
  :scrollbar='{
    "hide": true
  }'
class="mySwiper">
  <swiper-slide v-for="weatherData in weatherDatas" :key="weatherData.id">
    {{ weatherData.locationName }}
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
  Scrollbar, Pagination, Navigation
} from 'swiper/core';

// install Swiper modules
SwiperCore.use([Scrollbar]);


export default {
  components: {
    Swiper,
    SwiperSlide,
  },
  props: {
    weatherDatas: null
  },
  data() {
    return {
        
        
    };
  },
  methods: {
    
  }
  
}
</script>

<style>

.swiper-container {
  width: 100%;
  height: 80px;
}

.swiper-slide {
  text-align: center;
  font-size: 18px;
  background: none;

  /* Center slide text vertically */
  display: -webkit-box;
  display: -ms-flexbox;
  display: -webkit-flex;
  display: flex;
  -webkit-box-pack: center;
  -ms-flex-pack: center;
  -webkit-justify-content: center;
  justify-content: center;
  -webkit-box-align: center;
  -ms-flex-align: center;
  -webkit-align-items: center;
  align-items: center;
}

.swiper-slide img {
  display: block;
  width: 100%;
  height: 100%;
  object-fit: cover;
}
</style>