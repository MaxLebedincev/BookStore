<template>
    <div class="navigation-menu">
        <router-link to="/">ЛОГО</router-link>
        <router-link to="/home">ДОМ</router-link>
    </div>
</template>

<script>
export default {
    name: "NavigationHeader"
}
</script>

<style scoped>
.navigation-menu{
    display: grid;
    grid-template-columns: 300px auto;
    grid-template-rows: 100px;
    text-align: center;
}
</style>