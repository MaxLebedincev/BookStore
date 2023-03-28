<template>
    <v-container class="fill-height">
        <v-row>
            <v-col cols="4">
                <v-card
                    elevation="4"
                    height="100%"
                >
                    <template #title>
                        <div class="user-title">
                            {{profileName}}
                        </div>
                    </template>
                    <template #image>
                        <v-avatar
                            class="user-avatar"
                            color="grey-darken-1"
                            size="200px"
                        ></v-avatar>
                    </template>
                </v-card>
            </v-col>
            <v-col cols="8">
                <v-card
                    title="Информация о вас"
                    elevation="4"
                >
                    <template #text>
                        <div class="description">
                            <ul>
                                <li>Ваш e-mail: {{profileEmail}}</li>
                                <li>Способ оплаты: {{profileEmail}}</li>
                            </ul>
                            <div class="description-text">
                                {{text}}
                            </div>
                        </div>
                    </template>
                </v-card>
            </v-col>
        </v-row>
    </v-container>
</template>

<script>
export default {
    name: "PersonalView",
    data: () => ({
        profileName: 'User',
        profileEmail: 'test@mail.ru',
        text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n' +
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n',
    })
}
</script>

<style lang="scss" scoped>
.user-title{
    text-align: center;
}
.user-avatar{
    margin: auto;
}
.description {
    padding: 15px;
    li {
        padding-top: 5px;
    }
    &-text{
        padding-top: 20px;
    }
}
</style>