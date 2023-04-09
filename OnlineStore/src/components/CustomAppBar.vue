<template>
    <v-app-bar :elevation="2" class="px-3 custom-header">
        <template #title>
            <span style="color: #FFFFFF">
                Императорская библиотека
            </span>
        </template>
        <template #default>
            <v-tabs
                centered
                v-model="activeRoute"
                color="grey-darken-2"
            >
                <div v-for="link in routes"
                     :key="link">
                    <v-tab
                        @click="$router.push(link.link)"
                        v-if="link.role.includes(role)"
                    >
                        {{link.name}}
                    </v-tab>
                </div>
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
                :icon="this.$store.state.inverse ? 'mdi-weather-sunny-off' : 'mdi-weather-sunny'"
                hide-details
                inset
                @click="toggleTheme"
            ></v-btn>
            <v-btn
                v-if="placeholderLogin === ''"
                class="custom-button"
                color="#dd0000"
                @click="dialog = true"
            >Войти</v-btn>
            <v-btn
                v-if="placeholderLogin !== ''"
                class="custom-button"
                color="#dd0000"
                @click="logout"
            >{{placeholderLogin}} | выход</v-btn>
            <v-avatar
                class="hidden-sm-and-down"
                color="grey-darken-1"
                size="48"
            ></v-avatar>
        </template>
        <template #image>
        </template>
    </v-app-bar>
    <v-dialog
        v-model="dialog"
        width="auto"
    >
        <v-card class="card-dialog" >
            <template #title>
                <v-tabs
                    v-model="dialogTabs"
                    fixed-tabs
                    color="#dd0000"
                >
                    <v-tab value="auth">
                        Авторизация
                    </v-tab>
                    <v-tab value="reg">
                        Регистрация
                    </v-tab>
                </v-tabs>
            </template>
            <template #text>
                <v-window v-model="dialogTabs">
                    <v-window-item value="auth">
                        <v-text-field
                            label="Логин"
                            v-model="login"
                            hide-details="auto"
                        ></v-text-field>
                        <v-text-field
                            label="Пароль"
                            v-model="password"
                            hide-details="auto"
                        ></v-text-field>
                    </v-window-item>
                    <v-window-item value="reg">
                        <v-text-field
                            label="Логин"
                            v-model="login"
                            hide-details="auto"
                        ></v-text-field>
                        <v-text-field
                            label="Пароль"
                            v-model="password"
                            hide-details="auto"
                        ></v-text-field>
                        <v-text-field
                            label="Email"
                            v-model="email"
                            hide-details="auto"
                        ></v-text-field>
                    </v-window-item>
                </v-window>
            </template>
            <template #actions>
                <v-window v-model="dialogTabs">
                    <v-window-item value="auth">
                        <v-btn
                            color="#dd0000"
                            @click="auth"
                        >Авторизироваться</v-btn>
                    </v-window-item>
                    <v-window-item value="reg">
                        <v-btn color="#dd0000">Зарегистрироваться</v-btn>
                    </v-window-item>
                </v-window>
            </template>
        </v-card>
    </v-dialog>
</template>

<script>
import {useTheme} from "vuetify";
import {UseAuthorization} from "@/hooks/access/useAuthorization";
import {UseLogout} from "@/hooks/access/useLogout";

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
        dialog: false,
        dialogTabs: 'auth',
        login: '',
        password: '',
        email: '',
        role: localStorage.getItem('role'),
        placeholderLogin: localStorage.getItem('login'),
        routes: [
            {
                id: 0,
                link: '/about',
                name: 'О нас',
                role: ['admin', 'moder', 'client', '']
            },
            {
                id: 1,
                link: '/',
                name: 'Товары',
                role: ['admin', 'moder', 'client', '']
            },
            {
                id: 2,
                link: '/admin',
                name: 'Админ панель',
                role: ['admin', 'moder']
            },
            {
                id: 3,
                link: '/home',
                name: 'Личный кабинет',
                role: ['admin', 'moder', 'client', '']
            }
        ],
        activeRoute: 1,
    }),
    methods: {
        async auth() {
            let {userinfo, answer} = await UseAuthorization(this.login, this.password);
            if (answer.value) {
                this.dialog = false;
                this.login = userinfo.value.login;
                this.placeholderLogin = this.login;
                this.password = '';
                this.role = userinfo.value.role;
                localStorage.setItem("role", userinfo.value.role)
                localStorage.setItem("login", userinfo.value.login)
                localStorage.setItem("email", userinfo.value.email)
            }
        },
        async logout() {
            await UseLogout();
            localStorage.setItem("role", '')
            localStorage.setItem("login", '')
            localStorage.setItem("email", '')
            this.login = ''
            this.placeholderLogin = ''
            this.role= ''
        }
    }
}
</script>

<style lang="scss">
.card-dialog {
    .v-field__overlay {
        background-color: #FFFFFF;
    }
    .v-card-actions{
        justify-content: center
    }
}
</style>

<style lang="scss" scoped>
.v-toolbar__append {
    div {
        margin: 0px 10px;
    }
}
.v-btn .custom-button {
    color: #dd0000 !important;
}
.card-dialog {
    height: 500px;
    width: 500px;
}
.v-theme--dark .custom-header {
    background: rgb(255,0,0);
    background: linear-gradient(90deg, rgba(255,0,0,1) 6%, rgba(43,43,43,1) 47%);
}
.custom-header {
    background: rgb(255,0,0);
    background: linear-gradient(90deg, rgba(255,0,0,1) 6%, rgba(255, 255, 255, 1) 47%);
}
.custom-header .text-grey-darken-2 {
    color: #dd0000 !important;
}
</style>