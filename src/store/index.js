import { createStore } from 'vuex'

export default createStore({
  state: {
    currLocation: 20
  },
  mutations: {
    setcurrLocation (state, payload) {
      state.currLocation = payload
    }
  },
  actions: {
  },
  modules: {
  }
})
