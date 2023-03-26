<template>
    <v-app>
        <v-app-bar :elevation="8" class="px-3">
            <template #title>
                Императорская библеотека
            </template>
            <template #default>
                <v-tabs
                    centered
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
                <v-switch
                    v-model="isDark"
                    true-icon="mdi-weather-sunny"
                    false-icon="mdi-weather-sunny-off"
                    hide-details
                    inset
                ></v-switch>
                <v-avatar
                    class="hidden-sm-and-down"
                    color="grey-darken-1"
                    size="48"
                ></v-avatar>
            </template>
            <template #image>
                <v-img
                    cover
                    src="https://cdn.vuetifyjs.com/images/parallax/material.jpg"
                ></v-img>
            </template>
        </v-app-bar>
        <v-main>
            <router-view></router-view>
        </v-main>
    </v-app>
</template>

<script>
export default {
    name: 'App',

    components: {
    },

    data: () => ({
        isDark: false,
        isNotification: false,
        routes: [
            {
                link: '/about',
                name: 'О нас'
            },
            {
                link: '/',
                name: 'Товары'
            },
            {
                link: '/home',
                name: 'Админ панель'
            },
            {
                link: '/home',
                name: 'Личный кабинет'
            }
        ]
    }),
    methods: {
    }
}
</script>

<style lang="scss">
html {   overflow-y: auto !important; }
</style>
<style lang="scss" scoped>
.v-toolbar__append {
    div {
        margin: 0px 10px;
    }
}
</style>