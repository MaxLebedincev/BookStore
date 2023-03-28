<template>
    <div class="wrapper">
        <v-card
            class="card"
            @mouseover="upHere = true"
            @mouseleave="upHere = false"
            height="300px"
            width="200px"
            :image="getImg(modelValue.img)"
        ></v-card>
        <div class="popup" type="flex" v-if="upHere">
            <div class="popup__header">
                <h3 class="popup__header__name">{{modelValue.name}}</h3>
                <hr>
                <div class="popup__header__tag">
                    <c-tag
                        v-for="tag in [].concat(modelValue.tags).slice(0, 3)" :key="tag.id"
                        :name="tag.name"
                        :icon="tag.icon"
                        :inverse="false"
                    ></c-tag>
                </div>
            </div>
            <div class="popup__body">
                {{modelValue.description}}
            </div>
            <div class="popup__footer">
                <div>
                </div>
                <div>
                    {{modelValue.star}}%
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import CTag from "@/components/CTag";
export default {
    name: "CustomCard",
    components: {
        CTag
    },
    props: {
        modelValue:{
            type: Object,
            required: true
        }
    },
    data: () => ({
        upHere: false,
    }),
    methods: {
        getImg(path) {
            return require(`@/assets/image/${path}`);
        },
    }
}
</script>

<style lang="scss" scoped>
.wrapper {
    display: flex;
    .card {
        display: inline-block;
    }
    .popup {
        position: absolute;
        transform: translate(180px, -105px);
        opacity: 0.9;
        max-width: 300px;
        align-content: flex-end;

        color: white;
        z-index: 100;
        display: grid;
        grid-template-rows: 25% auto 10%;

        &__header{
            border-radius: 5px 5px 0 0;
            background-color: black;
            z-index: 102;
            &__name {
                padding: 5px;
            }
            &__tag {
                padding: 5px;
            }
        }
        &__body{
            background-color: black;
            z-index: 100;
            padding: 10px;
            padding-top: 15px;
        }
        &__footer{
            z-index: 101;
            border-radius: 0 0 5px 5px;
            background-color: black;
            align-items: center;
            padding: 0 10px;
        }
    }
}
</style>