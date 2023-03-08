<template>
    <div class="navigator">
        <vs-tabs
            alignment="fixed"
            hover-line
            color="#000"
        >
            <vs-tab
                label="Logo"
                @click="$router.push('/')"
            ></vs-tab>
            <vs-tab
                label="Home"
                @click="$router.push('/home')"
            ></vs-tab>
        </vs-tabs>
    </div>
</template>

<script>
export default {
    name: "NavigationHeader"
}
</script>

<style lang="scss">
.navigator .con-vs-tabs .con-ul-tabs, .vs-tabs--ul {
    width: 100%;
    position: fixed;
    background: #FFF;
    z-index: 100;
}
</style>