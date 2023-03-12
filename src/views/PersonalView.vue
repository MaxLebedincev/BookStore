<template>
    <div class="main">
        <vs-pagination :total="20" v-model="currentx" goto ></vs-pagination>
    </div>
</template>

<script>
export default {
    name: "PersonalView"
}
</script>

<style scoped>
.main {
    height: 100%;
}
</style>