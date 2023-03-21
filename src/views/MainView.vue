<template>
    <div class="page">
        <div class="search">
            <div class="search-menu">
                <vs-input  icon-after="true" class="search-menu__input" color="#c52026" icon="search" placeholder="Поиск" v-model="input" size="large"/>
                <vs-button
                    class="search-menu__icon"
                    color="#c52026"
                    type="flat"
                    :icon="!reverseIcon ? 'trending_up' : 'trending_down'"
                    @click="click"
                ></vs-button>
            </div>
            <vs-select
                class="search-select"
                v-model="selectS"
            >
                <vs-select-group title="Сортировать по">
                    <vs-select-item
                        v-for="(item, index) in optionsS"
                        :modelValue="item.value"
                        :text="item.text"
                        :key="index"
                    />
                </vs-select-group>
            </vs-select>
        </div>
        <div class="filter">
            <div class="genre" >
                <vs-checkbox
                    class="genre__elem"
                    v-for="(tag, index) in tags"
                    :key="index"
                    v-model="form.regions"
                    :vs-value="tag"
                    :icon="tag.icon"
                    color="danger"
                >
                    {{ tag.name }}
                </vs-checkbox>
            </div>
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
            <vs-pagination color="#640064" :total="20" v-model="currentx" goto></vs-pagination>
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
                {text:'рейтингу ',value: '0'},
                {text:'цене',value: '1'},
                {text:'дате добавления',value: '2'},
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
            ],
            reverseIcon: false,
            form: {
                regions: []
            },
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
    },
    methods: {
        click() {
            this.reverseIcon = !this.reverseIcon;
        }
    }
}
</script>

<style lang="scss">
.search {
    .search-menu {
        &__input {
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

        &__icon{
            box-shadow: 1px 4px 25px 0 rgba(0,0,0,.1);
            height: 48px !important;
            width: 48px !important;
        }
    }
    .search-select{
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
    .genre{
        &__elem {
            .material-icons{
                font-size: 16px;
            }
        }
    }
}
.pagination {
    .vs-row{
        height: 100%;
    }
    .vs-pagination--mb {
        margin-bottom: 0px;
        height: 100%;
        justify-content: center !important;
    }
    .vs-pagination--li .effect{
        background-image: linear-gradient(30deg,rgba(249, 31, 67,1),rgba(249, 31, 67,.5)) !important;
    }
    .vs-pagination--buttons:hover{
        background-image: linear-gradient(30deg,rgba(249, 31, 67,1),rgba(249, 31, 67,.5)) !important;
    }
}
.vs-select--options{
    .vs-select--item span{
        font-size: 16px;
        color: rgba(0,0,0,.8)
    }
}
</style>
<style lang="scss" scoped>
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

    .search-menu {
        width: 80%;
        display: inline-flex;
        justify-content: center;
        margin-right: 15px;


        &__input {
            width: 95%;
            background-color: rgba(255,255,255,0);
            box-shadow: 1px 4px 25px 0 rgba(0,0,0,.1);
            margin-right: 15px;

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

        &__icon{
            box-shadow: 1px 4px 25px 0 rgba(0,0,0,.1);
            height: 48px !important;
            width: 48px !important;
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

    .genre{
        width: 100%;

        &__elem {
            margin: 15px 15px;
            display: inline-flex;

            .material-icons{
                font-size: 16px;
            }
        }
    }
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
    .vs-pagination--li .effect{
        background-image: linear-gradient(30deg,rgba(249, 31, 67,1),rgba(249, 31, 67,.5)) !important;
    }
    .vs-pagination--buttons:hover{
        background-image: linear-gradient(30deg,rgba(249, 31, 67,1),rgba(249, 31, 67,.5)) !important;
    }
}
.vs-select--options{
    .vs-select--item span{
        font-size: 16px;
        color: rgba(0,0,0,.8)
    }
}
</style>