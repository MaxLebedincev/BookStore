<template>
    <div class="page">
        <div class="search">
            <vs-input  icon-after="true" class="search-input" color="#c52026" icon="search" placeholder="Поиск" v-model="input" size="large"/>
            <vs-select
                class="search-select"
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
            <vs-pagination color="#c52026" :total="20" v-model="currentx" goto></vs-pagination>
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
    margin-bottom: 15px;
    display: flex;
    background-color: rgba(255,255,255,0);

    .search-input{
        width: 80%;
        display: inline-flex;
        justify-content: center;
        margin-right: 15px;
        background-color: rgba(255,255,255,0);
        box-shadow: 1px 4px 25px 0 rgba(0,0,0,.1);

        .vs-con-input {
            width: 100%;
            height: 100%;
            .vs-input--placeholder {
                color: rgba(0,0,0,.4) !important;
            }
            input, span {
                width: 100%;
                height: 100%;
                font-size: 22px;
                color: rgba(0,0,0,.8);
            }
        }
        .material-icons{
            font-size: 32px;
        }
    }
    .search-select{
        display: inline-flex;
        justify-content: flex-end;
        width: 20%;
        box-shadow: 0 4px 25px 0 rgba(0,0,0,.1);
        .input-select-con{
            width: 100%;
        }
        .vs-select--input{
            height: 100%;
            font-size: 16px;
            color: rgba(0,0,0,.8);
        }
        .vs-select--input:hover{
            border-color: #c52026
        }
    }
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

    .vs-row{
        height: 100%;
    }
    .vs-pagination--mb {
        margin-bottom: 0px;
        height: 100%;
        justify-content: center !important;
    }
}
.vs-select--options{
    .vs-select--item span{
        font-size: 16px;
        color: rgba(0,0,0,.8)
    }
}
</style>