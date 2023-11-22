<template>
  <div>
    <h1>Posts</h1>
    <!-- Create or Post -->
    <form @submit.prevent="createPost">
      <input type="text" placeholder="Title" v-model="newPost.title" />
      <br />
      <input type="text" placeholder="Content" v-model="newPost.content" />
      <br />
      <button class="btn btn-primary" type="submit">Create</button>
    </form>

    <div v-for="post in posts" :key="post.id">
      <h3>{{ post.title }}</h3>
      <p>{{ post.content }}</p>
    </div>
  </div>
</template>

<script setup>
  import axios from 'axios'
  import { ref, onMounted } from 'vue'

  const newPost = ref({
    title: '',
    content: ''
  });

  var posts = ref([]);

  const loadPosts = async () => {
    try{
      const res = await axios.get('http://localhost:3000/posts');
      posts.value = res.data;
    } catch(error){
      console.log(error.message);
    }
  };

  const createPost = async () => {
    try{
      const res = await axios.post('http://localhost:3000/posts', newPost.value);
      posts.value.push(res.data);
      newPost.value.title = '';
      newPost.value.content = '';
    } catch(error){
      console.log(error.message);
    }
  };

  onMounted(() => {
    loadPosts();
  });
</script>

<style scoped>
</style>