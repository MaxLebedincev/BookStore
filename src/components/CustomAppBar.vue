<template>
    <v-app-bar :elevation="2" class="px-3">
        <template #title>
            Императорская библеотека
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
        </template>
    </v-app-bar>
</template>

<script>
export default {
    name: "CustomAppBar",
    data: () => ({
        isDark: false,
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
</style>