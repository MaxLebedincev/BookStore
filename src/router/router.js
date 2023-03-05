import MainView from "@/views/MainView.vue"
import {createRouter, createWebHistory} from "vue-router"
import PersonalView from "@/views/PersonalView";

const routes = [
    {
        path: '/',
        component: MainView
    },
    {
        path:'/home',
        component: PersonalView
    }
]

const router = createRouter({
    routes,
    history: createWebHistory(process.env.BASE_URL)
})

export default router;
