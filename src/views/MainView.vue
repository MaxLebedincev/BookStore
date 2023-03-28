<template>
    <v-container class="page">
        <v-row class="search">
            <v-col cols="9">
                <div class="search-input">
                    <v-text-field
                        v-model="inputSearch"
                        density="default"
                    ></v-text-field>
                    <v-btn
                        size="56px"
                        prepend-icon="mdi-magnify"
                        variant="tonal"
                    ></v-btn>
                    <v-btn
                        class="switch-popularity"
                        size="56px"
                        variant="tonal"
                        :prepend-icon="getIcon(isPopularity)"
                        @click="setPopularity"
                    ></v-btn>
                </div>
            </v-col>
            <v-col cols="3">
                <v-select
                    label="Сортировка по"
                    :items="filterOptions"
                ></v-select>
            </v-col>
        </v-row>
        <v-row class="product">
            <v-col cols="9" class="container">
                <v-container class="content max-width">
                    <custom-card
                        v-for="book in books"
                        :key="book.id"
                        :modelValue="book"
                        height="300px"
                        width="200px"
                    >
                    </custom-card>
                </v-container>
                <div class="container-pagination">
                    <v-pagination
                        class="pagination"
                        v-model="page"
                        :length="15"
                    ></v-pagination>
                </div>
            </v-col>
            <v-col cols="3" class="filter">
                <v-card
                    class="filter-card"
                    elevation="4"
                    :text="text"
                ></v-card>
            </v-col>
        </v-row>
    </v-container>
</template>

<script>
import CustomCard from "@/components/CustomCard";
export default {
    name: "MainView",
    components: {CustomCard},
    data: ()=> ({
        inputSearch: '',
        isPopularity: true,
        page: 1,
        filterOptions: ['рейтингу', 'дате добавления'],
        books: [
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
                        icon: "mdi-bell-ring",
                        id: Date.now()
                    },
                    {
                        name: "Комедия",
                        icon: "mdi-bell-ring",
                        id: Date.now()
                    },
                    {
                        name: "Романтика",
                        icon: "mdi-bell-ring",
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
                        icon: "mdi-bell-ring",
                        id: Date.now()
                    },
                    {
                        name: "Комедия",
                        icon: "mdi-bell-ring",
                        id: Date.now()
                    },
                    {
                        name: "Романтика",
                        icon: "mdi-bell-ring",
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
                        icon: "mdi-bell-ring",
                        id: Date.now()
                    },
                    {
                        name: "Комедия",
                        icon: "mdi-bell-ring",
                        id: Date.now()
                    },
                    {
                        name: "Романтика",
                        icon: "mdi-bell-ring",
                        id: Date.now()
                    }
                ]
            },
        ],
        text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    }),
    methods: {
        getIcon(value) {
            return value ? 'mdi-trending-up' : 'mdi-trending-down';
        },
        setPopularity() {
            this.isPopularity = !this.isPopularity;
        }
    }
}
</script>

<style lang="scss" scoped>
.page{
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    height: 100%;
    .search{
        height: 10%;
        align-content: center;
        .search-input {
            display: flex;
            .switch-popularity {
                margin: 0px 0px 0px 25px;
            }
        }
    }
    .product {
        height: 90%;

        .container{
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            .content{
                display: grid;
                grid-template-columns: repeat(auto-fill, minmax(200px,auto));
                grid-row-gap: 10px;
                &-card{

                }
            }
            .pagination {
                box-shadow: 0px 1px 4px -1px;
            }
        }
        .filter{
            height: 100%;
            &-card{
            }
        }
    }
}
</style>
