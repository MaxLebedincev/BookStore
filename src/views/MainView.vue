<template>
    <div class="page">
        <div class="search">
            <input name="Поиск">
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
                    volume: 12
                },
                {
                    id: Date.now(),
                    name: "Продукт 1",
                    price: 12000,
                    volume: 12
                },
                {
                    id: Date.now(),
                    name: "Продукт 1",
                    price: 12000,
                    volume: 12
                },
                {
                    id: Date.now(),
                    name: "Продукт 1",
                    price: 12000,
                    volume: 12
                },
            ]
        }
    }
}
</script>

<style scoped>
.page {
    display: grid;
    grid-template-areas: "search search"
                         "filter products";
    grid-template-columns: 250px 1fr;
    grid-template-rows: 100px 1fr;
    grid-gap: 15px;
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
    border: 1px solid blue;
    display: grid;
    grid-template-columns: repeat(6, minmax(100px, 1fr));
    grid-template-rows: minmax(400px, 1fr);
}
</style>