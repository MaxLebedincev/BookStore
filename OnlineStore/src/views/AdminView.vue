<template>
    <v-container>
        <v-row>
            <v-col cols="2">
                <v-card class="card-menu">
                    <template #title>
                        Добавление
                    </template>
                    <v-tabs
                        v-model="tabOpt"
                        direction="vertical"
                        color="#dd0000"
                    >
                        <v-tab value="option-1">
                            <v-icon start>
                                mdi-account-plus
                            </v-icon>
                            <div class="tab-title">
                                клиента
                            </div>
                        </v-tab>
                        <v-tab value="option-2">
                            <v-icon start>
                                mdi-book-plus
                            </v-icon>
                            книг
                        </v-tab>
                        <v-tab value="option-3">
                            <v-icon start>
                                mdi-bookmark-plus
                            </v-icon>
                            жанра
                        </v-tab>
                    </v-tabs>
                </v-card>
                <v-card class="card-menu">
                    <template #title>
                        Таблицы
                    </template>
                    <v-tabs
                        v-model="tabOpt"
                        direction="vertical"
                        color="#dd0000"
                    >
                        <v-tab value="option-4">
                            <v-icon start>
                                mdi-account
                            </v-icon>
                            клиентов
                        </v-tab>
                        <v-tab value="option-5">
                            <v-icon start>
                                mdi-book
                            </v-icon>
                            книг
                        </v-tab>
                        <v-tab value="option-6">
                            <v-icon start>
                                mdi-bookmark
                            </v-icon>
                            жанров
                        </v-tab>
                    </v-tabs>
                </v-card>
            </v-col>
            <v-col cols="10">
                <div>
                    <v-card class="info">
                        <v-window v-model="tabOpt">
                            <v-window-item value="option-1">
                                <v-card elevation="8">
                                    <template #title>
                                        Добавление пользователя
                                    </template>
                                </v-card>
                            </v-window-item>
                            <v-window-item value="option-2">
                                <v-card elevation="4">
                                    <template #title>
                                        Добавление книги
                                    </template>
                                </v-card>
                            </v-window-item>
                            <v-window-item value="option-3">
                                <v-card elevation="4">
                                    <template #title>
                                        Добавление жанра
                                    </template>
                                </v-card>
                            </v-window-item>
                            <v-window-item value="option-4">
                                <v-card elevation="4" class="card-table">
                                    <template #title>
                                        Таблица пользователей
                                    </template>
                                    <template #text>
                                        <v-table>
                                            <thead>
                                            <tr>
                                                <th>
                                                    Имя
                                                </th>
                                                <th>
                                                    Пароль
                                                </th>
                                                <th>
                                                    Дата добавления
                                                </th>
                                                <th
                                                    class="text-right"
                                                ></th>
                                            </tr>
                                            </thead>
                                        </v-table>
                                    </template>
                                </v-card>
                            </v-window-item>
                            <v-window-item value="option-5">
                                <v-card elevation="4" class="card-table">
                                    <template #title>
                                        Таблица книг
                                    </template>
                                    <template #text>
                                        <v-table>
                                            <thead>
                                            <tr>
                                                <th>
                                                    Имя
                                                </th>
                                                <th>
                                                    Цена
                                                </th>
                                                <th>
                                                    Автор
                                                </th>
                                                <th>
                                                    Описания
                                                </th>
                                                <th>
                                                    Дата добавления
                                                </th>
                                                <th
                                                    class="text-right"
                                                ></th>
                                            </tr>
                                            </thead>
                                        </v-table>
                                    </template>
                                </v-card>
                            </v-window-item>
                            <v-window-item value="option-6">
                                <v-card elevation="4" class="card-table">
                                    <template #title>
                                        Таблица жанров
                                    </template>
                                    <template #text>
                                        <v-table>
                                            <thead>
                                            <tr>
                                                <th>
                                                    Имя
                                                </th>
                                                <th>
                                                    Картинка
                                                </th>
                                                <th
                                                    class="text-right"
                                                ></th>
                                            </tr>
                                            </thead>
                                        </v-table>
                                    </template>
                                </v-card>
                            </v-window-item>
                        </v-window>
                    </v-card>
                    <v-card class="content">
                        <v-window v-model="tabOpt">
                            <v-window-item value="option-1">
                                <v-card elevation="4" class="card-input">
                                    <template #text>
                                        <v-text-field
                                            label="Имя"
                                            hide-details="auto"
                                        ></v-text-field>
                                        <v-text-field
                                            label="Пароль"
                                            hide-details="auto"
                                        ></v-text-field>
                                        <v-text-field
                                            label="Email"
                                            hide-details="auto"
                                        ></v-text-field>
                                    </template>
                                    <template #actions>
                                        <v-btn variant="outlined" class="card-button">
                                            Добавить
                                        </v-btn>
                                    </template>
                                </v-card>
                            </v-window-item>
                            <v-window-item value="option-2">
                                <v-card elevation="4" class="card-input">
                                    <template #text>
                                        <v-text-field
                                            label="Наименование"
                                            hide-details="auto"
                                        ></v-text-field>
                                        <v-text-field
                                            label="Цена"
                                            hide-details="auto"
                                        ></v-text-field>
                                        <v-select
                                            :modelValue="favorites"
                                            :items="states"
                                            label="Жанры"
                                            multiple
                                            persistent-hint
                                            hide-details="auto"
                                        ></v-select>
                                        <v-text-field
                                            label="Автор"
                                            hide-details="auto"
                                        ></v-text-field>
                                        <v-textarea
                                            label="Описание"
                                            hide-details="auto"
                                        ></v-textarea>
                                        <v-file-input
                                            label="Изображение"
                                        ></v-file-input>
                                    </template>
                                    <template #actions>
                                        <v-btn variant="outlined" class="card-button">
                                            Добавить
                                        </v-btn>
                                    </template>
                                </v-card>
                            </v-window-item>
                            <v-window-item value="option-3">
                                <v-card elevation="4" class="card-input">
                                    <template #text>
                                        <v-text-field
                                            label="Наименование"
                                            hide-details="auto"
                                        ></v-text-field>
                                        <v-select
                                            :modelValue="favorites"
                                            :items="states"
                                            label="Картинки"
                                            multiple
                                            persistent-hint
                                            hide-details="auto"
                                        ></v-select>
                                    </template>
                                    <template #actions>
                                        <v-btn variant="outlined" class="card-button">
                                            Добавить
                                        </v-btn>
                                    </template>
                                </v-card>
                            </v-window-item>
                            <v-window-item value="option-4">
                                <v-card elevation="4" class="card-table">
                                    <template #text>
                                        <v-table>
                                            <tbody>
                                            <tr
                                                v-for="item in desserts"
                                                :key="item.name"
                                            >
                                                <td>{{ item.name }}</td>
                                                <td>{{ item.calories }}</td>
                                                <td>{{ item.calories }}</td>
                                                <td  class="text-right">
                                                    <v-btn variant="text">
                                                        Редактировать
                                                    </v-btn>
                                                    <v-btn variant="text">
                                                        Удалить
                                                    </v-btn>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </v-table>
                                    </template>
                                </v-card>
                            </v-window-item>
                            <v-window-item value="option-5">
                                <v-card elevation="4" class="card-table">
                                    <template #text>
                                        <v-table>
                                            <tbody>
                                            <tr
                                                v-for="item in desserts"
                                                :key="item.name"
                                            >
                                                <td>{{ item.name }}</td>
                                                <td>{{ item.calories }}</td>
                                                <td>{{ item.name }}</td>
                                                <td>{{ item.name }}</td>
                                                <td>{{ item.name }}</td>
                                                <td  class="text-right">
                                                    <v-btn variant="text">
                                                        Редактировать
                                                    </v-btn>
                                                    <v-btn variant="text">
                                                        Удалить
                                                    </v-btn>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </v-table>
                                    </template>
                                </v-card>
                            </v-window-item>
                            <v-window-item value="option-6">
                                <v-card elevation="4" class="card-table">
                                    <template #text>
                                        <v-table>
                                            <tbody>
                                            <tr
                                                v-for="item in desserts"
                                                :key="item.name"
                                            >
                                                <td>{{ item.name }}</td>
                                                <td>{{ item.name }}</td>
                                                <td  class="text-right">
                                                    <v-btn variant="text">
                                                        Редактировать
                                                    </v-btn>
                                                    <v-btn variant="text">
                                                        Удалить
                                                    </v-btn>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </v-table>
                                    </template>
                                </v-card>
                            </v-window-item>
                        </v-window>
                    </v-card>
                </div>
            </v-col>
        </v-row>
    </v-container>
</template>

<script>
export default {
    name: "AdminView",
    data: ()=> ({
        tabOpt: 'option-1',
        favorites: [],
        states: [
            'Alabama', 'Alaska', 'American Samoa', 'Arizona',
            'Arkansas', 'California', 'Colorado', 'Connecticut',
            'Delaware', 'District of Columbia', 'Federated States of Micronesia',
            'Florida', 'Georgia', 'Guam', 'Hawaii', 'Idaho',
            'Illinois', 'Indiana', 'Iowa', 'Kansas', 'Kentucky',
            'Louisiana', 'Maine', 'Marshall Islands', 'Maryland',
            'Massachusetts', 'Michigan', 'Minnesota', 'Mississippi',
            'Missouri', 'Montana', 'Nebraska', 'Nevada',
            'New Hampshire', 'New Jersey', 'New Mexico', 'New York',
            'North Carolina', 'North Dakota', 'Northern Mariana Islands', 'Ohio',
            'Oklahoma', 'Oregon', 'Palau', 'Pennsylvania', 'Puerto Rico',
            'Rhode Island', 'South Carolina', 'South Dakota', 'Tennessee',
            'Texas', 'Utah', 'Vermont', 'Virgin Island', 'Virginia',
            'Washington', 'West Virginia', 'Wisconsin', 'Wyoming',
        ],
        desserts: [
            {
                name: 'Frozen Yogurt',
                calories: 159,
            },
            {
                name: 'Frozen Yogurt',
                calories: 159,
            },
            {
                name: 'Frozen Yogurt',
                calories: 159,
            },
            {
                name: 'Frozen Yogurt',
                calories: 159,
            },{
                name: 'Frozen Yogurt',
                calories: 159,
            },
            {
                name: 'Frozen Yogurt',
                calories: 159,
            },
            {
                name: 'Ice cream sandwich',
                calories: 237,
            },
            {
                name: 'Eclair',
                calories: 262,
            },
            {
                name: 'Cupcake',
                calories: 305,
            },
            {
                name: 'Gingerbread',
                calories: 356,
            },
            {
                name: 'Jelly bean',
                calories: 375,
            },
            {
                name: 'Lollipop',
                calories: 392,
            },
            {
                name: 'Honeycomb',
                calories: 408,
            },
            {
                name: 'Donut',
                calories: 452,
            },
            {
                name: 'KitKat',
                calories: 518,
            },
        ],
    })
}
</script>

<style lang="scss">
.card-menu .v-btn {
    text-overflow: ellipsis;
}
.info {
    .card-table .v-card-text{
        padding: 0 ;
    }
}
.content  {
    .card-input .v-field__overlay {
        background-color: #FFFFFF;
    }
}
</style>
<style lang="scss" scoped>
.card-menu {
    margin-bottom: 25px;
}
.info {
    margin-bottom: 25px;
    .v-card-text{
        padding: 0 ;
    }
}
.content  {
    .card-button {
        margin-left: auto;
    }
    .card-table {
        height: 70vh !important;
        overflow-y: auto;
    }
}
</style>