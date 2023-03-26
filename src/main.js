import { createApp, h } from 'vue'
import App from './App.vue'
import router from "@/router/router";

import vuetify from './plugins/vuetify'
import { loadFonts } from './plugins/webfontloader'

import 'material-icons/iconfont/material-icons.css';

import { createStore } from 'vuex'

export const store = createStore({
    state () {
        return {
            inverse: false
        }
    }
})

loadFonts()

const app = createApp({
    render: ()=>h(App)
});

app
    .use(store)
    .use(router)
    .use(vuetify)
    .mount('#app')