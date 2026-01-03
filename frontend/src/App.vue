<script setup>
// import { ref, onMounted } from "vue"
// import axios from "axios"

// const message = ref("")

// onMounted(async () => {
//   const res = await axios.get("http://127.0.0.1:5000/dashboard")
//   message.value = res.data.message
// })

import { RouterView } from "vue-router"
</script>

<template>
  <RouterView />
</template>
