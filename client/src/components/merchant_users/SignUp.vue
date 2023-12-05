<script setup>
  import { ref } from 'vue';
  import { useForm } from 'vee-validate';
  import * as yup from 'yup';

  const { values, errors, defineField } = useForm({
    validationSchema: yup.object({
      first_name: yup.string().required('First Name is required'),
      last_name: yup.string().required('Last Name is required'),
      email: yup.string().email('Email must be valid').required('Email is required'),
      password: yup.string().required('Password is required').min(8, 'Password must be at least 8 characters long'),
      password_confirmation: yup.string().oneOf([yup.ref('password'), null], 'Passwords must match').required('Password Confirmation is required'),
    }),
  });

  const show_signup_form = ref(true);

  const [first_name, first_name_attrs] = defineField('first_name');
  const [last_name, last_name_attrs] = defineField('last_name');
  const [email, email_attrs] = defineField('email');
  const [password, password_attrs] = defineField('password');
  const [password_confirmation, password_confirmation_attrs] = defineField('password_confirmation');

  const wasValidated = ref(false);
  const success_message = ref('');

  const submitForm = async () => {
    try{
      wasValidated.value = true;

      console.log(Object.keys(errors.value).length);
    }catch(error){
      console.log(error);
    }
  };
</script>
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
        <form v-if="show_signup_form" :class="{'was-validated': wasValidated}" @submit.prevent="submitForm" class="needs-validation" novalidate>
          <div class="mb-3">
            <label for="first_name" class="form-label">First Name</label>
            <input type="text" id="first_name" class="form-control" :class="{'is-invalid': errors.hasOwnProperty('first_name')}" v-model="first_name" v-bind="first_name_attrs" placeholder="Your First Name" required>
            <div v-if="errors.hasOwnProperty('first_name')" class="invalid-feedback">
              {{ errors['first_name'] }}
            </div>
          </div>
          <div class="mb-3">
            <label for="last_name" class="form-label">Last Name</label>
            <input type="text" id="last_name" class="form-control" :class="{'is-invalid': errors.hasOwnProperty('last_name')}" v-model="last_name" v-bind="last_name_attrs" placeholder="Your Last Name" required>
            <div v-if="errors.hasOwnProperty('last_name')" class="invalid-feedback">
              {{ errors['last_name'] }}
            </div>
          </div>
          <div class="mb-3">
            <label for="email" class="form-label">Email address</label>
            <input type="email" id="email" class="form-control" :class="{'is-invalid': errors.hasOwnProperty('email')}" v-model="email" v-bind="email_attrs" placeholder="Your Email Address" required>
            <div v-if="errors.hasOwnProperty('email')" class="invalid-feedback">
              {{ errors['email'] }}
            </div>
          </div>
          <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" id="password" class="form-control" :class="{'is-invalid': errors.hasOwnProperty('password')}" v-model="password" v-bind="password_attrs" required>
            <div v-if="errors.hasOwnProperty('password')" class="invalid-feedback">
              {{ errors['password'] }}
            </div>
          </div>
          <div class="mb-3">
            <label for="password_confirmation" class="form-label">Password Confirmation</label>
            <input type="password" id="password_confirmation" :class="{'is-invalid': errors.hasOwnProperty('password_confirmation')}" class="form-control" v-model="password_confirmation" v-bind="password_confirmation_attrs" required>
            <div v-if="errors.hasOwnProperty('password_confirmation')" class="invalid-feedback">
              {{ errors['password_confirmation'] }}
            </div>
          </div>
          <button type="submit" :class="{disabled: Object.keys(errors).length > 0}" class="btn btn-primary align-right">Submit</button>
        </form>
      </div>
      <div class="col-md-2">
      </div>
    </div>
    <pre>{{ values }}</pre>
    <pre>{{ errors }}</pre>
    <pre>{{ errors.hasOwnProperty('password') }}</pre>
  </div>
</template>