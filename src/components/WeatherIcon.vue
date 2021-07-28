<template lang="pug">
.weatherIcon(v-if="weatherIconValue == 1")
	svg(viewBox="-50 -50 100 100")
		circle.sun(cx=0 cy=0 r=25)
.weatherIcon(v-else-if="weatherIconValue <= 4 && weatherIconValue >= 2")
	svg(viewBox="-60 -50 100 120")
		circle.sun(cx=0 cy=0 r=20)
		circle.cloud(cx=0 cy=30 r=20)
		circle.cloud(cx=-15 cy=30 r=20)
		circle.cloud(cx=-30 cy=30 r=20)
		circle.cloud(cx=-20 cy=10 r=15)
		circle.cloud(cx=-7 cy=15 r=15)
.weatherIcon(v-else-if="weatherIconValue == 5")
	svg(viewBox="-60 -50 100 120")
		circle.cloud.dark(cx=20 cy=15 r=15)
		circle.cloud.dark(cx=5 cy=15 r=15)
		circle.cloud.dark(cx=-10 cy=15 r=15)
		circle.cloud.dark(cx=0 cy=-5 r=10)
		circle.cloud.dark(cx=13 cy=0 r=10)
		circle.cloud(cx=0 cy=30 r=20)
		circle.cloud(cx=-15 cy=30 r=20)
		circle.cloud(cx=-30 cy=30 r=20)
		circle.cloud(cx=-20 cy=10 r=15)
		circle.cloud(cx=-7 cy=15 r=15)
.weatherIcon(v-else-if="weatherIconValue == 6")
	svg(viewBox="-60 -50 100 120")
		circle.cloud(cx=20 cy=15 r=15)
		circle.cloud(cx=5 cy=15 r=15)
		circle.cloud(cx=-10 cy=15 r=15)
		circle.cloud(cx=0 cy=-5 r=10)
		circle.cloud(cx=13 cy=0 r=10)
		circle.cloud.dark(cx=0 cy=30 r=20)
		circle.cloud.dark(cx=-15 cy=30 r=20)
		circle.cloud.dark(cx=-30 cy=30 r=20)
		circle.cloud.dark(cx=-20 cy=10 r=15)
		circle.cloud.dark(cx=-7 cy=15 r=15)
.weatherIcon(v-else-if="weatherIconValue == 7")
	svg(viewBox="-50 -50 100 100")
		circle.cloud.dark(cx=15 cy=15 r=20)
		circle.cloud.dark(cx=0 cy=15 r=20)
		circle.cloud.dark(cx=-15 cy=15 r=20)
		circle.cloud.dark(cx=-5 cy=-5 r=15)
		circle.cloud.dark(cx=8 cy=0 r=15)
.weatherIcon(v-else-if="weatherIconValue == 8")
	svg(viewBox="-50 -20 100 100")
		line.rain(x1=-20 y1=5 x2=-20 y2=25)
		line.rain.rain2(x1=-10 y1=25 x2=-10 y2=35)
		line.rain.rain3(x1=4 y1=5 x2=4 y2=25)
		circle.cloud(cx=10 cy=30 r=20)
		circle.cloud(cx=-5 cy=30 r=20)
		circle.cloud(cx=-20 cy=30 r=20)
		circle.cloud(cx=-10 cy=10 r=15)
		circle.cloud(cx=-3 cy=15 r=15)
.weatherIcon(v-else-if="weatherIconValue == 9")
	svg(viewBox="-60 -40 100 120")
		line.rain(x1=-25 y1=5 x2=-25 y2=25)
		line.rain.rain2(x1=-15 y1=25 x2=-15 y2=35)
		line.rain.rain3(x1=-1 y1=5 x2=-1 y2=25)
		circle.cloud.dark(cx=20 cy=15 r=15)
		circle.cloud.dark(cx=5 cy=15 r=15)
		circle.cloud.dark(cx=-10 cy=15 r=15)
		circle.cloud.dark(cx=0 cy=-5 r=10)
		circle.cloud.dark(cx=13 cy=0 r=10)
		circle.cloud(cx=0 cy=30 r=20)
		circle.cloud(cx=-15 cy=30 r=20)
		circle.cloud(cx=-30 cy=30 r=20)
		circle.cloud(cx=-20 cy=10 r=15)
		circle.cloud(cx=-7 cy=15 r=15)
.weatherIcon(v-else-if="weatherIconValue == 10")
	svg(viewBox="-60 -40 100 120")
		line.rain(x1=-25 y1=5 x2=-25 y2=25)
		line.rain.rain2(x1=-15 y1=25 x2=-15 y2=35)
		line.rain.rain3(x1=-1 y1=5 x2=-1 y2=25)
		circle.cloud(cx=20 cy=15 r=15)
		circle.cloud(cx=5 cy=15 r=15)
		circle.cloud(cx=-10 cy=15 r=15)
		circle.cloud(cx=0 cy=-5 r=10)
		circle.cloud(cx=13 cy=0 r=10)
		circle.cloud.dark(cx=-15 cy=30 r=20)
		circle.cloud.dark(cx=0 cy=30 r=20)
		circle.cloud.dark(cx=-30 cy=30 r=20)
		circle.cloud.dark(cx=-20 cy=10 r=15)
		circle.cloud.dark(cx=-7 cy=15 r=15)
.weatherIcon(v-else-if="weatherIconValue == 11")
	svg(viewBox="-50 -20 100 100")
		line.rain(x1=-20 y1=5 x2=-20 y2=25)
		line.rain.rain2(x1=-10 y1=25 x2=-10 y2=35)
		line.rain.rain3(x1=4 y1=5 x2=4 y2=25)
		circle.cloud.dark(cx=10 cy=30 r=20)
		circle.cloud.dark(cx=-5 cy=30 r=20)
		circle.cloud.dark(cx=-20 cy=30 r=20)
		circle.cloud.dark(cx=-10 cy=10 r=15)
		circle.cloud.dark(cx=-3 cy=15 r=15)
.weatherIcon(v-else-if="weatherIconValue == 12")
	svg(viewBox="-60 -40 100 120")
		line.rain.bold(x1=-25 y1=5 x2=-25 y2=20)
		line.rain.rain2.bold(x1=-15 y1=25 x2=-15 y2=35)
		line.rain.rain3.bold(x1=-1 y1=10 x2=-1 y2=25)
		line.rain.bold(x1=5 y1=0 x2=5 y2=25)
		line.rain.rain2.bold(x1=-35 y1=0 x2=-35 y2=10)
		line.rain.rain3.bold(x1=-10 y1=7 x2=-10 y2=27)
		circle.cloud.dark(cx=20 cy=15 r=15)
		circle.cloud.dark(cx=5 cy=15 r=15)
		circle.cloud.dark(cx=-10 cy=15 r=15)
		circle.cloud.dark(cx=0 cy=-5 r=10)
		circle.cloud.dark(cx=13 cy=0 r=10)
		circle.cloud(cx=-15 cy=30 r=20)
		circle.cloud(cx=0 cy=30 r=20)
		circle.cloud(cx=-30 cy=30 r=20)
		circle.cloud(cx=-20 cy=10 r=15)
		circle.cloud(cx=-7 cy=15 r=15)
.weatherIcon(v-else-if="weatherIconValue == 13")
	svg(viewBox="-60 -40 100 120")
		line.rain.bold(x1=-25 y1=5 x2=-25 y2=20)
		line.rain.rain2.bold(x1=-15 y1=25 x2=-15 y2=35)
		line.rain.rain3.bold(x1=-1 y1=10 x2=-1 y2=25)
		line.rain.bold(x1=5 y1=0 x2=5 y2=25)
		line.rain.rain2.bold(x1=-35 y1=0 x2=-35 y2=10)
		line.rain.rain3.bold(x1=-10 y1=7 x2=-10 y2=27)
		circle.cloud(cx=20 cy=15 r=15)
		circle.cloud(cx=5 cy=15 r=15)
		circle.cloud(cx=-10 cy=15 r=15)
		circle.cloud(cx=0 cy=-5 r=10)
		circle.cloud(cx=13 cy=0 r=10)
		circle.cloud.dark(cx=-15 cy=30 r=20)
		circle.cloud.dark(cx=0 cy=30 r=20)
		circle.cloud.dark(cx=-30 cy=30 r=20)
		circle.cloud.dark(cx=-20 cy=10 r=15)
		circle.cloud.dark(cx=-7 cy=15 r=15)
.weatherIcon(v-else-if="weatherIconValue == 14")
	svg(viewBox="-50 -20 100 100")
		line.rain.bold(x1=-20 y1=5 x2=-20 y2=25)
		line.rain.rain2.bold(x1=-10 y1=25 x2=-10 y2=35)
		line.rain.rain3.bold(x1=4 y1=0 x2=4 y2=10)
		line.rain.bold(x1=10 y1=10 x2=10 y2=30)
		line.rain.rain2.bold(x1=-30 y1=10 x2=-30 y2=20)
		line.rain.rain3.bold(x1=-5 y1=2 x2=-5 y2=27)
		circle.cloud.dark(cx=10 cy=30 r=20)
		circle.cloud.dark(cx=-5 cy=30 r=20)
		circle.cloud.dark(cx=-20 cy=30 r=20)
		circle.cloud.dark(cx=-10 cy=10 r=15)
		circle.cloud.dark(cx=-3 cy=15 r=15)
.weatherIcon(v-else-if="weatherIconValue == 15")
	svg(viewBox="-50 -20 100 100")
		line.rain(x1=-20 y1=5 x2=-20 y2=25)
		line.rain.rain2(x1=-10 y1=25 x2=-10 y2=35)
		line.rain.rain3(x1=4 y1=0 x2=4 y2=10)
		svg.thunder(viewBox="75 -30 230 230")
			path(style='fill:#FBB03B;' d='M81.819,33.461h33.937c1.605,0,2.684,1.645,2.045,3.117L100.94,75.42\
			c-0.639,1.472,0.44,3.116,2.045,3.116h8.873c1.709,0,2.782,1.843,1.938,3.329l-39.063,68.836\
			c-0.841,1.483-3.11,0.612-2.743-1.053l11.149-50.57c0.307-1.391-0.752-2.709-2.177-2.709h-11.8c-1.421,0-2.479-1.312-2.179-2.701\
			l12.657-58.45C79.863,34.193,80.771,33.461,81.819,33.461z')
		circle.cloud(cx=10 cy=30 r=20)
		circle.cloud(cx=-5 cy=30 r=20)
		circle.cloud(cx=-20 cy=30 r=20)
		circle.cloud(cx=-10 cy=10 r=15)
		circle.cloud(cx=-3 cy=15 r=15)
.weatherIcon(v-else-if="weatherIconValue == 16")
	svg(viewBox="-60 -40 100 120")
		line.rain(x1=-25 y1=5 x2=-25 y2=25)
		line.rain.rain2(x1=-15 y1=25 x2=-15 y2=35)
		line.rain.rain3(x1=-5 y1=5 x2=-5 y2=25)
		svg.thunder(viewBox="75 0 230 230")
			path(style='fill:#FBB03B;' d='M81.819,33.461h33.937c1.605,0,2.684,1.645,2.045,3.117L100.94,75.42\
			c-0.639,1.472,0.44,3.116,2.045,3.116h8.873c1.709,0,2.782,1.843,1.938,3.329l-39.063,68.836\
			c-0.841,1.483-3.11,0.612-2.743-1.053l11.149-50.57c0.307-1.391-0.752-2.709-2.177-2.709h-11.8c-1.421,0-2.479-1.312-2.179-2.701\
			l12.657-58.45C79.863,34.193,80.771,33.461,81.819,33.461z')
		circle.cloud.dark(cx=20 cy=15 r=15)
		circle.cloud.dark(cx=5 cy=15 r=15)
		circle.cloud.dark(cx=-10 cy=15 r=15)
		circle.cloud.dark(cx=0 cy=-5 r=10)
		circle.cloud.dark(cx=13 cy=0 r=10)
		circle.cloud(cx=-15 cy=30 r=20)
		circle.cloud(cx=0 cy=30 r=20)
		circle.cloud(cx=-30 cy=30 r=20)
		circle.cloud(cx=-20 cy=10 r=15)
		circle.cloud(cx=-7 cy=15 r=15)
.weatherIcon(v-else-if="weatherIconValue == 17")
	svg(viewBox="-60 -40 100 120")
		line.rain.bold(x1=-20 y1=5 x2=-20 y2=25)
		line.rain.rain2.bold(x1=-10 y1=25 x2=-10 y2=35)
		line.rain.rain2.bold(x1=-30 y1=10 x2=-30 y2=20)
		line.rain.rain3.bold(x1=-5 y1=2 x2=-5 y2=27)
		svg.thunder(viewBox="75 0 230 230")
			path(style='fill:#FBB03B;' d='M81.819,33.461h33.937c1.605,0,2.684,1.645,2.045,3.117L100.94,75.42\
			c-0.639,1.472,0.44,3.116,2.045,3.116h8.873c1.709,0,2.782,1.843,1.938,3.329l-39.063,68.836\
			c-0.841,1.483-3.11,0.612-2.743-1.053l11.149-50.57c0.307-1.391-0.752-2.709-2.177-2.709h-11.8c-1.421,0-2.479-1.312-2.179-2.701\
			l12.657-58.45C79.863,34.193,80.771,33.461,81.819,33.461z')
		circle.cloud(cx=20 cy=15 r=15)
		circle.cloud(cx=5 cy=15 r=15)
		circle.cloud(cx=-10 cy=15 r=15)
		circle.cloud(cx=0 cy=-5 r=10)
		circle.cloud(cx=13 cy=0 r=10)
		circle.cloud.dark(cx=-15 cy=30 r=20)
		circle.cloud.dark(cx=0 cy=30 r=20)
		circle.cloud.dark(cx=-30 cy=30 r=20)
		circle.cloud.dark(cx=-20 cy=10 r=15)
		circle.cloud.dark(cx=-7 cy=15 r=15)
.weatherIcon(v-else-if="weatherIconValue == 18")
	svg(viewBox="-50 -20 100 100")
		line.rain.bold(x1=-20 y1=5 x2=-20 y2=25)
		line.rain.rain2.bold(x1=-10 y1=25 x2=-10 y2=35)
		line.rain.rain2.bold(x1=-30 y1=10 x2=-30 y2=20)
		line.rain.rain3.bold(x1=-5 y1=2 x2=-5 y2=27)
		svg.thunder(viewBox="75 -30 230 230")
			path(style='fill:#FBB03B;' d='M81.819,33.461h33.937c1.605,0,2.684,1.645,2.045,3.117L100.94,75.42\
			c-0.639,1.472,0.44,3.116,2.045,3.116h8.873c1.709,0,2.782,1.843,1.938,3.329l-39.063,68.836\
			c-0.841,1.483-3.11,0.612-2.743-1.053l11.149-50.57c0.307-1.391-0.752-2.709-2.177-2.709h-11.8c-1.421,0-2.479-1.312-2.179-2.701\
			l12.657-58.45C79.863,34.193,80.771,33.461,81.819,33.461z')
		circle.cloud.dark(cx=10 cy=30 r=20)
		circle.cloud.dark(cx=-5 cy=30 r=20)
		circle.cloud.dark(cx=-20 cy=30 r=20)
		circle.cloud.dark(cx=-10 cy=10 r=15)
		circle.cloud.dark(cx=-3 cy=15 r=15)
.weatherIcon(v-else-if="weatherIconValue == 19")
	svg(viewBox="-60 -50 100 120")
		line.rain(x1=-15 y1=5 x2=-15 y2=25)
		line.rain.rain2(x1=-5 y1=25 x2=-5 y2=35)
		line.rain.rain3(x1=5 y1=5 x2=5 y2=25)
		circle.cloud(cx=10 cy=30 r=20)
		circle.cloud(cx=-5 cy=30 r=20)
		circle.cloud(cx=-20 cy=30 r=20)
		circle.cloud(cx=-10 cy=10 r=15)
		circle.cloud(cx=3 cy=15 r=15)
		circle.sun.sun-opacity1(cx=-20 cy=-5 r=23)
.weatherIcon(v-else-if="weatherIconValue == 20")
	svg(viewBox="-60 -50 100 120")
		line.rain(x1=-25 y1=5 x2=-25 y2=25)
		line.rain.rain2(x1=-15 y1=25 x2=-15 y2=35)
		line.rain.rain3(x1=-5 y1=5 x2=-5 y2=25)
		circle.sun(cx=0 cy=0 r=20)
		circle.cloud(cx=0 cy=30 r=20)
		circle.cloud(cx=-15 cy=30 r=20)
		circle.cloud(cx=-30 cy=30 r=20)
		circle.cloud(cx=-20 cy=10 r=15)
		circle.cloud(cx=-7 cy=15 r=15)
.weatherIcon(v-else-if="weatherIconValue == 21")
	svg(viewBox="-60 -50 100 120")
		line.rain(x1=-25 y1=5 x2=-25 y2=25)
		line.rain.rain2(x1=-5 y1=25 x2=-5 y2=35)
		line.rain.rain3(x1=-15 y1=5 x2=-15 y2=25)
		svg.thunder(viewBox="75 0 230 230")
			path(style='fill:#FBB03B;' d='M81.819,33.461h33.937c1.605,0,2.684,1.645,2.045,3.117L100.94,75.42\
			c-0.639,1.472,0.44,3.116,2.045,3.116h8.873c1.709,0,2.782,1.843,1.938,3.329l-39.063,68.836\
			c-0.841,1.483-3.11,0.612-2.743-1.053l11.149-50.57c0.307-1.391-0.752-2.709-2.177-2.709h-11.8c-1.421,0-2.479-1.312-2.179-2.701\
			l12.657-58.45C79.863,34.193,80.771,33.461,81.819,33.461z')
		circle.cloud(cx=10 cy=30 r=20)
		circle.cloud(cx=-5 cy=30 r=20)
		circle.cloud(cx=-20 cy=30 r=20)
		circle.cloud(cx=-10 cy=10 r=15)
		circle.cloud(cx=3 cy=15 r=15)
		circle.sun.sun-opacity1(cx=-20 cy=-5 r=23)
.weatherIcon(v-else-if="weatherIconValue == 22")
	svg(viewBox="-60 -50 100 120")
		line.rain(x1=-25 y1=5 x2=-25 y2=25)
		line.rain.rain2(x1=-15 y1=25 x2=-15 y2=35)
		line.rain.rain3(x1=-5 y1=5 x2=-5 y2=25)
		svg.thunder(viewBox="75 0 230 230")
			path(style='fill:#FBB03B;' d='M81.819,33.461h33.937c1.605,0,2.684,1.645,2.045,3.117L100.94,75.42\
			c-0.639,1.472,0.44,3.116,2.045,3.116h8.873c1.709,0,2.782,1.843,1.938,3.329l-39.063,68.836\
			c-0.841,1.483-3.11,0.612-2.743-1.053l11.149-50.57c0.307-1.391-0.752-2.709-2.177-2.709h-11.8c-1.421,0-2.479-1.312-2.179-2.701\
			l12.657-58.45C79.863,34.193,80.771,33.461,81.819,33.461z')
		circle.sun(cx=0 cy=0 r=20)
		circle.cloud(cx=0 cy=30 r=20)
		circle.cloud(cx=-15 cy=30 r=20)
		circle.cloud(cx=-30 cy=30 r=20)
		circle.cloud(cx=-20 cy=10 r=15)
		circle.cloud(cx=-7 cy=15 r=15)
.weatherIcon(v-else)
	svg(viewBox="-50 -50 100 100")
		circle.dark(cx=0 cy=0 r=25)
</template>

<script>
export default {
	name: 'WeatherIcon',
	props: {
		weatherIconValue: null
	}
}
</script>

<style lang="sass" scoped>
$color_white: #fdfbfc
$color_gray: #ccc
$color__dark_gray: #888
$coler_yellow: #FFD633
$color_dark_red: #C1666B
$color_dark_blue: #4281A4
$color_rain: #4DACFF

svg
	// border: solid 1px
	width: 100%
	max-width: 40px
	height: 40px
	.sun
		fill: rgba($coler_yellow, 0.9)
		animation: sun-breath 3s infinite
	.sun-opacity1
		fill: rgba($coler_yellow, 1)
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
	.thunder
		animation: flashing 1.5s infinite
	.bold
		stroke-width: 3
	.dark
		fill: $color__dark_gray
	@keyframes flashing
		0%
			opacity: 0
		100%
			opacity: 1
			
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