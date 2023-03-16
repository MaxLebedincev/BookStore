import { createApp, h } from 'vue'
import App from './App.vue'
import router from "@/router/router";

import Vuesax from 'vuesax3'
import 'vuesax3/dist/vuesax.css'
import 'material-icons/iconfont/material-icons.css';

import { createStore } from 'vuex'

export const store = createStore({
    state () {
        return {
            inverse: false
        }
    }
})

const app = createApp({
    render: ()=>h(App)
});

app
    .use(store)
    .use(router)
    .use(Vuesax)
    .mount('#app')
