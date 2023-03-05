<template>
    <navigation-header></navigation-header>
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
.app{
    margin: 15px;
}
</style>