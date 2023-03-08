<template>
    <navigation-header class="nav"></navigation-header>
    <div class="app">
        <router-view></router-view>
    </div>
</template>

<script>
import NavigationHeader from "@/components/NavigationHeader";
export default {
    name: "App",
    components: {NavigationHeader}
}
</script>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
html, body {
    height: 100%;
    /*overflow: hidden !important;*/
}
#app{
    height: 100%;
    display: grid;
    grid-template-rows: 10% 90%;
}
.nav{
    position: fixed;
    top: 0;
    z-index: 100;
}
.app{
    margin-top: 50px;
    width: 100%;
    display: flex;
 }
</style>