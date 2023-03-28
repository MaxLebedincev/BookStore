import MainView from "@/views/MainView.vue"
import {createRouter, createWebHistory} from "vue-router"
import PersonalView from "@/views/PersonalView";
import AboutView from "@/views/AboutView";
import AdminView from "@/views/AdminView";

const routes = [
    {
        path: '/',
        component: MainView
    },
    {
        path:'/home',
        component: PersonalView
    },
    {
        path:'/about',
        component: AboutView
    },
    {
        path:'/admin',
        component: AdminView
    }
]

const router = createRouter({
    routes,
    history: createWebHistory(process.env.BASE_URL)
})

export default router;
