<template>
    <vs-card actionable fixed-height class="card-main">
        <template #header>
            <div class="wrapper">
                <h3 class="block__name">
                    Hello world !
                </h3>
                <vs-progress
                    class="block__star"
                    :percent="56"
                    color="#ff6200"
                ></vs-progress>
            </div>
        </template>
        <template #media>
            <div class="wrapper">
                <img
                    class="block__img"
                    :src="getImg(product.img)"

                >
                <div class="block__text">
                    <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </span>
                </div>
            </div>
        </template>
        <template #footer>
            <vs-row vs-justify="flex-end">
                <vs-button color="primary" type="gradient" >View</vs-button>
                <vs-button color="danger" type="gradient">Delete</vs-button>
            </vs-row>
        </template>
    </vs-card>
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
.card-main {
    background: linear-gradient(to bottom left, #FFF 59%, #ff9000);
}
.con-vs-card.fixedHeight:hover {
    background: linear-gradient(to bottom left, #FFF 49%, #ff9000);
    animation: gradient 15s ease infinite;
}
.wrapper {
    display: flex;
}
.block {
    display: inline-block;
    border: 1px solid blue;
    margin: 2px;
    &__name{
        width: 600px;
    }
    &__star{
        margin: auto;
    }
    &__img {
        width: 150px;
        height: 200px;
        margin: 15px;
    }
    &__text {
        margin: 10px 10px 0 30px;
    }
}
</style>