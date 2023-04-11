import axios from "axios";
import {ref} from 'vue';

export async function UseSelectGenres() {
    const genres = ref([])
    const answer = ref(false)
    const fetching = async () => {
        try {
            const response = await axios.post('/moderator/selectGenres');
            genres.value = response.data;
            answer.value = true;
        } catch (e) {
            answer.value = false;
        }
    }
    await fetching();
    return {
        genres, answer
    }
}