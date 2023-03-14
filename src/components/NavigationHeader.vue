<template>
    <vs-navbar
        class="navigator"
        v-model="indexActives"
        color="#670067"
        text-color="rgba(255,255,255,.6)"
        active-text-color="rgba(255,255,255,1)"
    >
        <div class="navigator-title">
            Императорская библиотека
        </div>

        <div class="navigator-menu">
            <vs-navbar-item index="0" >
                <router-link to="/">
                    <div class="navigator-menu-text">Товары</div>
                </router-link>
            </vs-navbar-item>
            <vs-navbar-item index="1">
                <router-link to="/about">
                    <div class="navigator-menu-text">О нас</div>
                </router-link>
            </vs-navbar-item>
            <vs-navbar-item index="2">
                <router-link to="/home">
                    <div class="navigator-menu-text">Админ панель</div>
                </router-link>
            </vs-navbar-item>
            <vs-navbar-item index="3">
                <router-link to="/home">
                    <div class="navigator-menu-text">Личный кабинет</div>
                </router-link>
            </vs-navbar-item>
        </div>

        <div class="navigator-setting">
            <div class="navigator-setting-switch">
                <vs-switch
                    v-model="isNotice"
                    color="#670067"
                    vs-icon-off="notifications_none"
                    vs-icon-on="notifications_active"
                />
                <vs-switch
                    v-model="isDark"
                    color="#000"
                    vs-icon="wb_sunny"
                    vs-icon-on="nights_stay"
                    @change="click"
                />
            </div>
            <div class="navigator-setting-shop">
                <vs-avatar size="large"></vs-avatar>
            </div>
        </div>

    </vs-navbar>
</template>

<script>
export default {
    name: "NavigationHeader",
    props: {
        indexActive: {
            type: Number,
            required: true
        }
    },
    data() {
        return {
            indexActives: 0,
            isDark: false,
            isNotice: false
        }
    },
    methods: {
        click() {
            localStorage.setItem('inverse', this.isDark)
        }
    }
}
</script>

<style lang="scss">
.navigator {

    z-index: 100;
    background-image: linear-gradient(30deg,rgba(249, 31, 67,1),rgba(249, 31, 67,.5)) !important;
    box-shadow: 0 4px 25px 0 rgba(0,0,0,.1);

    .vs-con-items{
        width: 100%;
        justify-content: center;
    }
    .navigator-title{
        color: #FFFFFF;
        width: 20%;
        display: flex;
        justify-content: center;
        font-size: 22px;
    }
    .navigator-menu{
        width: 60%;
        display: flex;
        justify-content: center;
        .navigator-menu-text {
            font-size: 18px;
        }
    }
    .navigator-setting{
        width: 20%;
        display: flex;
        justify-content: center;

        .navigator-setting-switch{
            display: flex;
            margin: auto 20px auto 0;
            height: 100%;
            .material-icons{
                font-size: 18px;
                max-width: 20px;
            }
            .vs-switch{
                margin: 0 10px;
            }
        }
    }
}

</style>