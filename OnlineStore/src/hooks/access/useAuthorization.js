import axios from "axios";
import {ref} from 'vue';

export async function UseAuthorization(login, password) {
    const userinfo = ref({})
    const answer = ref(false)
    const fetching = async () => {
        try {
            const response = await axios.post(
            '/token',
            {
                    login: login,
                    password: password
            });
            userinfo.value = response.data;
            answer.value = true;
        } catch (e) {
            answer.value = false;
        }
    }
    await fetching();
    return {
        userinfo, answer
    }
}