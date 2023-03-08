<template>
    <vs-navbar
        class="navigator"
        v-model="indexActives"
        color="orange"
        text-color="rgba(255,255,255,.6)"
        active-text-color="rgba(255,255,255,1)"
    >
        <template #title>
            <vs-navbar-title>
                Navbar Color
            </vs-navbar-title>
        </template>

        <vs-navbar-item index="0" >
            <router-link to="/">ЛОГО</router-link>
        </vs-navbar-item>
        <vs-navbar-item index="1">
            <router-link to="/home">ДОМ</router-link>
        </vs-navbar-item>
        <vs-icon
            icon="home"
            size="large"
            bg="#FFF"
        ></vs-icon>

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
        }
    }
}
</script>

<style lang="scss" scoped>
.navigator {
    position: fixed;
    background-color: #FFF;
    z-index: 100;

}
.vs-con-items{
    width: 80%;
}

</style>