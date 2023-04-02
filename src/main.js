import { createApp, h } from 'vue'
import App from './App.vue'
import router from "@/router/router";

import './plugins/vuetify'
import { loadFonts } from './plugins/webfontloader'

import 'material-icons/iconfont/material-icons.css';

import { createStore } from 'vuex'
import {createVuetify} from "vuetify";

export const store = createStore({
    state () {
        return {
            inverse: false
        }
    }
})

loadFonts()

const vuetify = createVuetify({
    theme: {
        defaultTheme: 'light'
    }
})

const app = createApp({
    render: ()=>h(App)
});

app
    .use(store)
    .use(router)
    .use(vuetify)
    .mount('#app')