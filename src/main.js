import { createApp } from 'vue'
import App from './App.vue'
import './registerServiceWorker'
import store from './store'
// import './plugins/axios'
import axios from 'axios'

createApp(App).use(store).mount('#app')

