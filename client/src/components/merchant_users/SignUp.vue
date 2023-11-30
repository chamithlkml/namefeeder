<template>
  <div class="container">
    <div class="row">
      <div class="col-md-2">
      </div>
      <div class="col-md-8">
        <h1 class="text-center">Merchant SignUp</h1>
        <div v-if="success_message!=''" class="alert alert-success" role="alert">
          {{ success_message }}
        </div>
        <form v-if="show_signup_form" @submit.prevent="submitForm">
          <div class="mb-3">
            <label for="first_name" class="form-label">First Name</label>
            <input type="text" id="first_name" class="form-control" v-model="first_name" placeholder="Your First Name">
          </div>
          <div class="mb-3">
            <label for="last_name" class="form-label">Last Name</label>
            <input type="text" id="last_name" class="form-control" v-model="last_name" placeholder="Your Last Name">
          </div>
          <div class="mb-3">
            <label for="email" class="form-label">Email address</label>
            <input type="text" id="email" class="form-control" v-model="email">
          </div>
          <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" id="password" class="form-control" v-model="password">
          </div>
          <div class="mb-3">
            <label for="password_confirmation" class="form-label">Password Confirmation</label>
            <input type="password" id="password_confirmation" class="form-control" v-model="password_confirmation">
          </div>
          <button type="submit" class="btn btn-primary align-right">Submit</button>
        </form>
      </div>
      <div class="col-md-2">
      </div>
    </div>
  </div>
</template>
<script setup>
  import { ref } from 'vue';

  const show_signup_form = ref(true);
  const first_name = ref('');
  const last_name = ref('');
  const email = ref('');
  const password = ref('');
  const password_confirmation = ref('');
  const errors = ref([]);
  const success_message = ref('');

  // Method to handle form submission.
  const submitForm = async () => {
    
    const merchantUser = {
      first_name: first_name.value,
      last_name: last_name.value,
      email: email.value,
      password: password.value,
      password_confirmation: password_confirmation.value
    };

    try{
      const response = await fetch('http://localhost:3000/merchant_users/signup', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify(merchantUser)
      });
      const data = await response.json();

      show_signup_form.value = false;
      success_message.value = data.message;
    }catch(error){
      console.log(error);
    }
  };
</script>