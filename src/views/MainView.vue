<template>
    <v-container class="page fill-height">
        <v-row class="search" align="start">
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
        <v-row class="product" align-self="center">
            <v-col cols="9">
                <div class="container">
                    <v-container class="content max-width">
                        <v-card
                            class="content-card"
                            v-for="book in books"
                            :key="book.id"
                            height="300px"
                            width="200px"
                        >
                            <v-img
                                src="https://cdn.vuetifyjs.com/images/cards/sunshine.jpg"
                                height="200px"
                                cover
                            ></v-img>
                        </v-card>
                    </v-container>
                    <div class="container-pagination">
                        <v-pagination
                            class="pagination"
                            v-model="page"
                            :length="15"
                        ></v-pagination>
                    </div>
                </div>
            </v-col>
            <v-col cols="3">
                <v-card
                    class="filter"
                    elevation="4"
                    :text="text"
                ></v-card>
            </v-col>
        </v-row>
    </v-container>
</template>

<script>
export default {
    name: "MainView",
    data: ()=> ({
        inputSearch: '',
        isPopularity: true,
        page: 1,
        filterOptions: ['рейтингу', 'дате добавления'],
        books: [
            {
                id: Date.now(),
                elem: ''
            },
            {
                id: Date.now(),
                elem: ''
            },
            {
                id: Date.now(),
                elem: ''
            },
            {
                id: Date.now(),
                elem: ''
            },
            {
                id: Date.now(),
                elem: ''
            },
            {
                id: Date.now(),
                elem: ''
            },
            {
                id: Date.now(),
                elem: ''
            },
            {
                id: Date.now(),
                elem: ''
            },
            {
                id: Date.now(),
                elem: ''
            },
            {
                id: Date.now(),
                elem: ''
            },
            {
                id: Date.now(),
                elem: ''
            },
            {
                id: Date.now(),
                elem: ''
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
    .v-row + .v-row {
        margin-top: 0px;
    }
    .search{
        .search-input {
            display: flex;
            .switch-popularity {
                margin: 0px 0px 0px 25px;
            }
        }
    }
    .product {
        .container{
            display: flex;
            flex-direction: column;
            width: 100%;
            .container-pagination{
            }
        }
        .content{
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: flex-start;
            &-card{
                margin-bottom: 10px;
            }
        }
        .pagination {
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0px 1px 4px -1px;
        }
        .filter{
            height: 100%;
        }
    }
}
</style>
