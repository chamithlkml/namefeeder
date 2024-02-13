<template>
  <div class="container mt-3">
    <div class="row">
      <div class="col-md-2"></div>
      <div class="col-md-8">
        <div v-if="props.success_message!=''" class="alert alert-success text-center" role="alert">
          {{ props.success_message }}
        </div>
        <div v-for="(error_message, index) in props.error_messages" :key="index" class="alert alert-danger text-center" role="alert">
          {{ error_message }}
        </div>
      </div>
      <div class="col-md-2"></div>
    </div>
  </div>
</template>
<script setup>
const props = defineProps({
  success_message: String,
  error_messages: Array
})
</script>