<template>
    <div class="page">
        <div class="search">
            <vs-input  icon-after="true" class="search-input" icon="search" placeholder="Поиск" v-model="input" size="large"/>
            <vs-select
                model-value="selectS"
            >
                <vs-select-item
                    value="0"
                    text="Что-то"
                />
                <vs-select-item
                    value="2"
                    text="Rто-то"
                />
            </vs-select>
        </div>
        <div class="filter">
        </div>
        <div class="products">
            <product-card
                v-for="product in products"
                :key="product.id"
                :product = product
                :inverse="inverse"
            ></product-card>
        </div>
        <div class="pagination">
            <div class="wrapper-pagination">
                <vs-pagination color="#ffc000"  :total="20" v-model="currentx" goto></vs-pagination>
            </div>
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
            inverse: localStorage.getItem('inverse'),
            currentx: 8,
            input: null,
            selectS: '0',
            optionsS:[
                {text:'IT',value: '0'},
                {text:'Blade Runner',value: '1'},
                {text:'Thor Ragnarok',value: '2'},
            ],
            products: [
                {
                    id: Date.now(),
                    name: "Продукт 1",
                    price: 12000,
                    img: "product.jpg",
                    star: 2.56,
                    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    tags: [
                        {
                            name: "Боевик",
                            icon: "shield",
                            id: Date.now()
                        },
                        {
                            name: "Комедия",
                            icon: "sentiment_satisfied_alt",
                            id: Date.now()
                        },
                        {
                            name: "Романтика",
                            icon: "favorite",
                            id: Date.now()
                        }
                    ]
                },
                {
                    id: Date.now(),
                    name: "Продукт 1",
                    price: 12000,
                    img: "product.jpg",
                    star: 2.56,
                    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    tags: [
                        {
                            name: "Боевик",
                            icon: "shield",
                            id: Date.now()
                        },
                        {
                            name: "Комедия",
                            icon: "sentiment_satisfied_alt",
                            id: Date.now()
                        },
                        {
                            name: "Романтика",
                            icon: "favorite",
                            id: Date.now()
                        }
                    ]
                }
            ]
        }
    },
    methods: {
    }
}
</script>

<style lang="scss">
.page {
    height: 100%;
    width: 1500px;
    display: grid;
    grid-template-areas: "search search"
                         "products filter"
                         "pagination filter";
    grid-template-columns: 1fr 300px;
    grid-template-rows: 50px 1fr 60px;
    grid-gap: 15px;
    margin: auto;
}
.search {
    grid-area: search;
    height: 100%;
    width: 100%;
    display: flex;
    box-shadow: 0 4px 25px 0 rgba(0,0,0,.1);
}
.search-input{
    align-items: center;
    display: inline-flex;
    height: 100%;
    width: 80% !important;
    font-size: 18px;
}
.vs-con-input-label .vs-con-input{
    width: 100%;
}

.filter {
    grid-area: filter;
    border-radius: 5px;
    margin-bottom: 15px;
    box-shadow: 0 4px 25px 0 rgba(0,0,0,.1);
}
.products {
    grid-area: products;
    display: grid;
    grid-template-columns: repeat(5, 220px);
    grid-template-rows: repeat(2, 340px);
    grid-column-gap: 25px;
    grid-row-gap: 15px;
}
.pagination {
    grid-area: pagination;
    border-radius: 5px;
    margin-bottom: 15px;
    box-shadow: 0 4px 25px 0 rgba(0,0,0,.1);
}
.wrapper-pagination {
    width: 80%;
    height: 100%;
    display: flex;
    margin-top: 2px;

}
</style>