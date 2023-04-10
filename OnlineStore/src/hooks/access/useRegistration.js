import axios from "axios";
import {ref} from 'vue';

export async function UseRegistration(login, password, email) {
    const userinfo = ref({})
    const answer = ref(false)
    const fetching = async () => {
        try {
            const response = await axios.post(
                '/register',
                {
                    login: login,
                    password: password,
                    email: email
                });
            userinfo.value = response.data;
            answer.value = userinfo.value.errorText  ? false: true;
        } catch (e) {
            answer.value = false;
        }
    }
    await fetching();
    return {
        userinfo, answer
    }
}