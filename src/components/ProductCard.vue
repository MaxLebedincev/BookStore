<template>
    <div class="wrapper">
        <vs-card class="card" actionable @mouseover="upHere = true"  @mouseleave="upHere = false" >
            <template #header>
                <h4>{{product.name}}</h4>
            </template>
            <template #media>
                <img
                    :src="getImg(product.img)"
                    class="image"
                >
            </template>
            <template #footer>
                <vs-row>
                    <vs-col vs-w="7">
                        <vs-row vs-justify="center" class="price">
                            {{product.price}} руб.
                        </vs-row>
                    </vs-col>
                    <vs-col vs-w="5">
                        <vs-row vs-justify="space-around">
                            <vs-button
                                type="gradient"
                                color="danger"
                                icon="add"
                            ></vs-button>
                            <vs-button
                                type="gradient"
                                color="danger"
                                icon="star_border"
                            ></vs-button>
                        </vs-row>
                    </vs-col>
                </vs-row>
            </template>
        </vs-card>
        <div class="popup" type="flex" v-if="upHere">
            <div class="popup__header">
                <h3 class="popup__header__name">{{product.name}}</h3>
                <hr>
                <div class="popup__header__tag">
                    <c-tag
                        v-for="tag in [].concat(product.tags).slice(0, 3)" :key="tag.id"
                        :name="tag.name"
                        :icon="tag.icon"
                        :inverse="false"
                    ></c-tag>
                </div>
            </div>
            <div class="popup__body">
                {{product.description}}
            </div>
            <vs-row class="popup__footer">
                <vs-col vs-type="flex" vs-justify="center" vs-w="8">
                    <vs-progress :height="4" :percent="getStarPercent(product.star)" color="#cc2026">warning</vs-progress>
                </vs-col>
                <vs-col vs-type="flex" vs-justify="center" vs-w="4">
                    {{product.star}}%
                </vs-col>
            </vs-row>
        </div>
    </div>
</template>

<script>
import CTag from "@/components/CTag";
export default {
    name: "ProductCard",
    components: {CTag},
    props: {
        product: {
            type: Object,
            required: true
        },
        inverse: {
            type: Boolean,
            required: false
        }
    },
    data(){
        return {
            upHere: false,
            color: null,
            backgroundColor: null
        }
    },
    methods: {
        getImg(path){
            return require(`@/assets/image/${path}`);
        },
        getStarPercent(star) {
            return star/5 * 100;
        }
    },
    mounted() {
        console.log(this.inverse)
        this.color = !this.inverse ? localStorage.getItem('color') : localStorage.getItem('backgroundColor');
        this.backgroundColor = this.inverse ? localStorage.getItem('color') : localStorage.getItem('backgroundColor');
    }
}
</script>
<style lang="scss" scoped>
.image{
    width: 170px;
    height: 250px;
    margin: 0px 25px 0px;
}
.price {
    font-size: 18px;
}
.wrapper {
    display: flex;
}
.con-vs-card {
    background-color: v-bind('backgroundColor');
}
.card {
    display: inline-block;
}
.popup {
    margin-top: 15px;
    margin-left: 10px;
    opacity: 0.9;
    min-width: 300px;
    align-content: flex-end;

    color: v-bind('backgroundColor');
    z-index: 100;
    display: grid;
    grid-template-rows: 25% auto 10%;

    &__header{
        border-radius: 5px 5px 0 0;
        background-color: v-bind('color');
        z-index: 102;
        &__name {
            padding: 5px;
        }
        &__tag {
            padding: 5px;
        }
    }
    &__body{
        background-color: v-bind('color');
        z-index: 100;
        padding: 10px;
        padding-top: 15px;
    }
    &__footer{
        z-index: 101;
        border-radius: 0 0 5px 5px;
        background-color: v-bind('color');
        align-items: center;
        padding: 0 10px;
    }
}
</style>