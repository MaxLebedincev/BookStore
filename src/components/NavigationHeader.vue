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
    grid-template-columns: minmax(100px, 200px) auto;
    grid-template-rows: auto;
    text-align: center;
}
</style>