<template>
    <v-card class="product-item">
        <v-img
            class="image-item"
            :src="getImg(product.img)"
        ></v-img>
        <v-card-title
            class="name"
        >
            {{product.name}}
        </v-card-title>
        <v-card-subtitle
            class="price"
        >
            Цена: {{product.price}}
        </v-card-subtitle>
        <v-card-subtitle
            class="volume"
        >
            Количество: {{product.volume}}
        </v-card-subtitle>
    </v-card>
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
            localImg: new URL('@/assets/image/product.jpg', import.meta.url).href
        }
    },
    methods: {
        getImg(path){
            return new URL(path, import.meta.url).href;
        }
    }
}
</script>

<style scoped>
.product-item {
    display: grid;
    grid-template-areas: "image-item image-item"
                         "name name"
                         "price volume";
    grid-template-columns: 1fr;
    grid-template-rows: 2fr 0.5fr 0.5fr;
    border: 2px solid orange;
    border-radius: 15px;
    margin: 5px;

}
.image-item {
    grid-area: image-item;
}
.name {
    grid-area: name;
}
.price {
    grid-area: price;
}
.volume{
    grid-area: volume
}
</style>