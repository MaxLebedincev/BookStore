<template>
    <v-app>
        <custom-app-bar></custom-app-bar>
        <v-main>
            <router-view></router-view>
        </v-main>
    </v-app>
</template>

<script>
import CustomAppBar from "@/components/CustomAppBar";
export default {
    name: 'App',

    components: {
        CustomAppBar
    },

    data: () => ({
    }),
    create() {
        localStorage.setItem("inverse", 'light')
    },
    methods: {
    }
}
</script>

<style lang="scss">
html {   overflow-y: auto !important; }
</style>
