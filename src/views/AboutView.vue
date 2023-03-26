<template>
    <v-container class="fill-height">
        <v-row class="c-border" align-content="center" justify="center">
            <v-col>
                <v-card
                    title="О нас"
                    elevation="4"
                    :text="text"
                ></v-card>
            </v-col>
            <v-col>
                <v-card
                    title="Наши партнеры"
                    elevation="4"
                    :text="text"
                ></v-card>
            </v-col>
        </v-row>
        <v-row class="c-border" align="center" justify="center">
            <v-col>
                <v-card
                    title="Работайте вместе с нами"
                    elevation="4"
                    :text="text"
                ></v-card>
            </v-col>
            <v-col>
                <v-card
                    title="Выйдите с нами на связь"
                    elevation="4"
                    :text="text"
                ></v-card>
            </v-col>
            <v-col>
                <v-card
                    title="Авторское право"
                    elevation="4"
                    :text="text"
                ></v-card>
            </v-col>
        </v-row>
    </v-container>
</template>

<script>
export default {
    name: "AboutView",
    data: () => ({
        text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n' +
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n',
     })
}
</script>

<style lang="scss" scoped>
.c-border {
    height: 50%;
    .v-col , .v-card {
        height: 100%;
    }

}
</style>