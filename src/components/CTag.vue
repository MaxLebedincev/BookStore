<template>
    <div class="tag">
        <vs-icon class="tag__icon" :icon="icon" size="17px"></vs-icon>
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
    mounted() {
        this.color = !this.inverse ? localStorage.getItem('color') : localStorage.getItem('backgroundColor');
        this.backgroundColor = this.inverse ? localStorage.getItem('color') : localStorage.getItem('backgroundColor');
    }
}
</script>

<style lang="scss" scoped>
.tag {
    display: inline-flex;
    border: 1px solid;
    border-color: v-bind('color');
    color: v-bind('color');
    background-color: v-bind('backgroundColor');
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