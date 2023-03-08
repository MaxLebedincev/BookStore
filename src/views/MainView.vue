<template>
    <div class="page">
        <div class="search">

        </div>
        <div class="filter">
            12321
        </div>
        <div class="products">
            <product-card
                v-for="product in products"
                :key="product.id"
                :product = product
            ></product-card>
        </div>
    </div>
</template>

<script>
import ProductCard from "@/components/ProductCard";
export default {
    name: "MainView",
    components: {ProductCard},
    data(){
        return {
            products: [
                {
                    id: Date.now(),
                    name: "Продукт 1",
                    price: 12000,
                    volume: 12,
                    img: "product.jpg"
                },
                {
                    id: Date.now(),
                    name: "Продукт 1",
                    price: 12000,
                    volume: 12,
                    img: "product.jpg"
                },
                {
                    id: Date.now(),
                    name: "Продукт 1",
                    price: 12000,
                    volume: 12,
                    img: "product.jpg"
                },
                {
                    id: Date.now(),
                    name: "Продукт 1",
                    price: 12000,
                    volume: 12,
                    img: "product.jpg"
                },
            ]
        }
    }
}
</script>

<style scoped>
.page {
    height: 100%;
    width: 1200px;
    display: grid;
    grid-template-areas: "search search"
                         "products filter";
    grid-template-columns: 1fr 300px;
    grid-template-rows: 100px 1fr;
    grid-gap: 15px;
    margin: auto;
}
.search {
    grid-area: search;
    border: 1px solid red;
}
.filter {
    grid-area: filter;
    border: 1px solid green;
}
.products {
    grid-area: products;
    display: grid;
    grid-template-columns: 900px;
    grid-auto-rows: 300px;
    grid-row-gap: 30px;
}
</style>