<template>
  <div>
    <AlertBox :success_message="success_message" :error_messages="error_messages" />
  </div>
</template>
<script setup>
import { onMounted, ref } from 'vue';
import { useRoute } from 'vue-router';
import AlertBox from '@/components/common/AlertBox.vue';

const success_message = ref('');
const error_messages = ref([]);
const route = useRoute();
const queryParams = route.query;

const confirmRegistration = async (confirmationToken) => {
  try{
    const response = await fetch(`/api/merchant_users/confirmation?confirmation_token=${confirmationToken}`, {
      method: 'GET',
      headers: {
        'Content-Type': 'application/json'
      }
    });
    const data = await response.json()
    error_messages.value = data.errors ? data.errors : [];
    success_message.value = data.message ? data.message : '';
  }catch(error){
    error_messages.value = [error.message.toString()];
  }
}

onMounted(() => {
  confirmRegistration(queryParams.confirmation_token)
});
</script>