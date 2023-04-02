<template>
    <v-app-bar :elevation="2" class="px-3 custom-header">
        <template #title>
            <span style="color: #FFFFFF">
                Императорская библеотека
            </span>
        </template>
        <template #default>
            <v-tabs
                centered
                v-model="activeRoute"
                color="grey-darken-2"
            >
                <v-tab
                    v-for="link in routes"
                    :key="link"
                    @click="$router.push(link.link)"
                >
                    {{link.name}}
                </v-tab>
            </v-tabs>
        </template>
        <template #append>
            <v-switch
                v-model="isNotification"
                true-icon="mdi-bell-ring"
                false-icon="mdi-bell-off"
                width="50px"
                hide-details
                inset
            ></v-switch>
            <v-btn
                :icon="this.theme.global.current.value.dark ? 'mdi-weather-sunny-off' : 'mdi-weather-sunny'"
                false-icon="mdi-weather-sunny-off"
                hide-details
                inset
                @click="toggleTheme"
            ></v-btn>
            <v-avatar
                class="hidden-sm-and-down"
                color="grey-darken-1"
                size="48"
            ></v-avatar>
        </template>
        <template #image>
        </template>
    </v-app-bar>
</template>

<script>
import {useTheme} from "vuetify";

export default {
    name: "CustomAppBar",
    setup () {
        const theme = useTheme()
        theme.global.name.value = localStorage.getItem("inverse")
        return {
            theme,
            toggleTheme: () => {
                theme.global.name.value = theme.global.current.value.dark ? 'light' : 'dark'
                localStorage.setItem("inverse", theme.global.name.value)
            }
        }
    },
    data: () => ({
        isNotification: false,
        routes: [
            {
                id: 0,
                link: '/about',
                name: 'О нас'
            },
            {
                id: 1,
                link: '/',
                name: 'Товары'
            },
            {
                id: 2,
                link: '/admin',
                name: 'Админ панель'
            },
            {
                id: 3,
                link: '/home',
                name: 'Личный кабинет'
            }
        ],
        activeRoute: 1,
    }),
}
</script>

<style lang="scss" scoped>
.v-toolbar__append {
    div {
        margin: 0px 10px;
    }
}
.v-theme--dark .custom-header {
    background: rgb(255,0,0);
    background: linear-gradient(90deg, rgba(255,0,0,1) 6%, rgba(43,43,43,1) 47%);
}
.custom-header {
    background: rgb(255,0,0);
    background: linear-gradient(90deg, rgba(255,0,0,1) 6%, rgba(43,43,43,0) 47%);
}
.custom-header .text-grey-darken-2 {
    color: #dd0000 !important;
}
</style>