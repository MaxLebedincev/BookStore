<template>
    <v-container class="fill-height">
        <v-row style="height: 100%">
            <v-col cols="2">
                <v-card>
                    <v-tabs
                        v-model="tabOpt"
                        direction="vertical"
                        color="primary"
                    >
                        <v-tab value="option-1">
                            <v-icon start>
                                mdi-account
                            </v-icon>
                            Добавить клиента
                        </v-tab>
                        <v-tab value="option-2">
                            <v-icon start>
                                mdi-lock
                            </v-icon>
                            Добавить книгу
                        </v-tab>
                        <v-tab value="option-3">
                            <v-icon start>
                                mdi-access-point
                            </v-icon>
                            Добавить жанр
                        </v-tab>
                        <v-tab value="option-4">
                            <v-icon start>
                                mdi-access-point
                            </v-icon>
                            Таблица пользователей
                        </v-tab>
                        <v-tab value="option-5">
                            <v-icon start>
                                mdi-access-point
                            </v-icon>
                            Таблица книг
                        </v-tab>
                        <v-tab value="option-6">
                            <v-icon start>
                                mdi-access-point
                            </v-icon>
                            Таблица жанров
                        </v-tab>
                    </v-tabs>
                </v-card>
            </v-col>
            <v-col cols="10">
                <v-card>
                    <v-window v-model="tabOpt">
                        <v-window-item value="option-1">
                            <v-card flat>
                                <template #title>
                                    Добавление пользователя
                                </template>
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
                            <v-card flat>
                                <template #title>
                                    Добавление книги
                                </template>
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
                            <v-card flat>
                                <template #title>
                                    Добавление жанра
                                </template>
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
                            <v-card flat>
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
                                            </td>
                                        </tr>
                                        </tbody>
                                    </v-table>
                                </template>
                            </v-card>
                        </v-window-item>
                        <v-window-item value="option-5">
                            <v-card flat>
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
                                            </td>
                                        </tr>
                                        </tbody>
                                    </v-table>
                                </template>
                            </v-card>
                        </v-window-item>
                        <v-window-item value="option-6">
                            <v-card flat>
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
                                            </td>
                                        </tr>
                                        </tbody>
                                    </v-table>
                                </template>
                            </v-card>
                        </v-window-item>
                    </v-window>
                </v-card>
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

<style scoped>
.card-button {
    margin-left: auto;
}
</style>