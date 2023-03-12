<template>
    <navigation-header
        class="nav"
        :index-active="indexActive"
    ></navigation-header>
    <div class="app">
        <router-view></router-view>
    </div>
</template>

<script>
import NavigationHeader from "@/components/NavigationHeader";
export default {
    name: "App",
    components: {NavigationHeader},

    data(){
        return{
            indexActive: 0
        }
    },
    mounted(){
        localStorage.setItem("color", "#000000")
        localStorage.setItem("backgroundColor", "#FFFFFF")
    }
}
</script>

<style lang="scss">
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
html, body {
    height: 100%;
}

#app{
    height: 100%;
    display: grid;
    grid-template-rows: 10% 90%;

}
.nav {
    height: 60px;
}
.app{
    margin-top: 80px;
    width: 100%;
    display: flex;
}

/*#region Scrollbar*/

/*Scrollbar for FireFox*/

html, body {
    scrollbar-width: thin;          /* "auto" или "thin" */
    scrollbar-color: #ff9000 #ffc77e;   /* цвет бегунка и зоны отслеживания */
}

/*Scrollbar for Chrome, Edge, Safari*/

body::-webkit-scrollbar {
    width: 8px;               /* ширина всей полосы прокрутки */
}
body::-webkit-scrollbar-track {
    background: #ffc77e;        /* цвет зоны отслеживания */
}

body::-webkit-scrollbar-thumb {
    background-color: #ff9000;    /* цвет бегунка */
}

/*#endregion Scrollbar */

</style>