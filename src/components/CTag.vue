<template>
    <div class="tag">
        <v-icon class="tag__icon" :icon="icon" size="17px"></v-icon>
        <div class="tag__name">{{name}}</div>
    </div>
</template>

<script>
export default {
    name: "CTag",
    props: {
        name: {
            type: String,
            required: true
        },
        icon: {
            type: String,
            required: false
        },
        inverse: {
            type: Boolean,
            required: false
        }
    },
    data(){
        return {
            color: null,
            backgroundColor: null
        }
    },
    methods: {

    },
}
</script>

<style lang="scss" scoped>
.tag {
    display: inline-flex;
    border: 1px solid;
    border-color: white;
    color: white;
    background-color: black;
    border-radius: 5px;
    margin: 1px;
    &__icon {
        display: inline-block;
        padding: 2px;
    }
    &__name {
        display: inline-block;
        padding: 2px 12px;
    }
}
</style>