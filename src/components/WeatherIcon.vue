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
.weatherIcon(v-else-if="weatherIconValue <= 18 && weatherIconValue >= 8")
	svg(viewBox="-50 -20 100 100")
		line.rain(x1=-20 y1=5 x2=-20 y2=25)
		line.rain.rain2(x1=-10 y1=25 x2=-10 y2=35)
		line.rain.rain3(x1=4 y1=5 x2=4 y2=25)
		circle.cloud(cx=10 cy=30 r=20)
		circle.cloud(cx=-5 cy=30 r=20)
		circle.cloud(cx=-20 cy=30 r=20)
		circle.cloud(cx=-10 cy=10 r=15)
		circle.cloud(cx=-3 cy=15 r=15)
.weatherIcon(v-else)
	svg(viewBox="-50 -50 100 100")
		circle(cx=0 cy=0 r=25)
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
$coler_yellow: #FFD633
$color_dark_red: #C1666B
$color_dark_blue: #4281A4
$color_rain: #4DACFF

svg
	width: 100%
	max-width: 40px
	height: 40px
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