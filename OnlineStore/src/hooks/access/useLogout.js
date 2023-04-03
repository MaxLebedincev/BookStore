import axios from "axios";
import {ref} from 'vue';

export async function UseLogout() {
    const message = ref({})
    const answer = ref(false)
    const fetching = async () => {
        try {
            const response = await axios.post(
                '/logout',
                {});
            message.value = response.data;
            answer.value = true;
        } catch (e) {
            answer.value = false;
        }
    }
    await fetching();
    return {
        message, answer
    }
}