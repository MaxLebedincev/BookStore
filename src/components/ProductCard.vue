<template>
    <div class="product-item">
        <div class="image-item">картикна</div>
        <div class="name">{{product.name}}</div>
        <div class="price">Цена: {{product.price}}</div>
        <div class="volume">Количество: {{product.volume}}</div>
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
    grid-template-rows: 2fr 0.3fr 0.3fr;
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