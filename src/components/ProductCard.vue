<template>
    <div class="wrapper">
        <vs-card class="block__card" actionable @mouseover="upHere = true"  @mouseleave="upHere = false" >
            <template #header>
                <h3>
                    Hello world !
                </h3>
            </template>
            <template #media>
                <img
                    :src="getImg(product.img)"
                    class="image"
                >
            </template>
            <template #footer>
                <vs-row vs-justify="flex-end">
                    <vs-button type="gradient" color="danger" icon="favorite"></vs-button>
                    <vs-button color="primary" icon="turned_in_not"></vs-button>
                    <vs-button color="rgb(230,230,230)" color-text="rgb(50,50,50)" icon="settings"></vs-button>
                </vs-row>
            </template>
        </vs-card>
        <div v-if="upHere" class="block__popup">
            asdsadfsadfsdadsfsadfsdgwwqr
        </div>
    </div>
</template>

<script>
export default {
    name: "ProductCard",
    props: {
        product: {
            type: Object,
            required: true
        }
    },
    data(){
        return {
            upHere: false
        }
    },
    methods: {
        getImg(path){
            return require(`@/assets/image/${path}`);
        }
    }
}
</script>
<style lang="scss" scoped>
.image{
    width: 180px;
    height: 250px;
}
.wrapper {
    display: flex;
}
.block {
    display: inline-block;
    &__card {

    }
    &__popup {
        margin-top: 15px;
        margin-left: 10px;
        opacity: 0.8;
        border-radius: 5px;
        min-width: 300px;
        max-width: 300px;
        min-height: 400px;
        max-height: 400px;

        color: #FFF;

        z-index: 100;
        background-color: #000;
    }
}
</style>