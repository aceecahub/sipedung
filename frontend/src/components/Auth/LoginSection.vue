<script setup>
import { ref } from 'vue';
import kendungImage from '../../img/kendung.jpg'

const bgStyle = {
  backgroundImage: `url(${kendungImage})`,
  backgroundSize: 'cover',
  backgroundPosition: 'center',
  backgroundRepeat: 'no-repeat',
  backgroundColor: 'rgba(0, 0, 0, 0.6)',
  backgroundBlendMode: 'multiply',
  borderRadius: '0px 0px 10px 10px',
}

const username = ref('');
const password = ref('');

const handleLogin = () => {
  // Handle login logic here
  console.log('Logging in with:', username.value, password.value);
};

const styleSection = ref('min-h-screen flex items-center justify-center bg-linear-to-br from-blue-50 to-blue-100 p-4')
const styleBtn = ref('cursor-pointer w-full flex justify-center py-2 px-4 border border-transparent rounded-lg shadow-sm text-sm font-medium text-white bg-blue-500 hover:bg-blue-600 focus:outline-none focus:ring-2 focus:ring-offset-0 focus:ring-blue-400 transition duration-300 transform hover:scale-101')
</script>


<template>
  <section :class="styleSection" :style="bgStyle">
    <div class="bg-white rounded-xl shadow-2xl p-8 w-full max-w-md transform transition-all duration-300 hover:shadow-2xl">
      <!-- Header with Village Theme -->
      <div class="text-center mb-8">
        <div class="flex justify-center mb-4">
          <div class="w-16 h-16 rounded-full flex items-center justify-center text-white">
           <img src="../../img/tasik.png" alt="">
          </div>
        </div>
        <h1 class="text-3xl font-bold text-blue-600 mb-2">Kampung Kendung</h1>
        <p class="text-gray-600">Masuk ke akun Anda</p>
      </div>

      <!-- Login Form -->
      <form @submit.prevent="handleLogin" class="space-y-6">
        <div>
          <label for="username" class="block text-sm font-medium text-gray-700 mb-1">Username</label>
          <div class="relative">
            <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-gray-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z" />
              </svg>
            </div>
            <input
              id="username"
              v-model="username"
              type="text"
              inputmode="numeric"
              required
              class="block w-full pl-10 pr-3 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-blue-500"
              placeholder="Masukkan username"
            >
          </div>
        </div>

        <div>
          <label for="password" class="block text-sm font-medium text-gray-700 mb-1">Password</label>
          <div class="relative">
            <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-gray-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z" />
              </svg>
            </div>
            <input
              id="password"
              v-model="password"
              type="password"
              required
              class="block w-full pl-10 pr-3 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-blue-500"
              placeholder="Masukkan password"
            >
          </div>
        </div>

        <div>
          <button
            type="submit"
            :class="styleBtn"
          >
            Masuk
          </button>
        </div>
      </form>

      <!-- Decorative Elements -->
      <!-- <div class="mt-8 text-center">
        <div class="flex justify-center space-x-4">
          <div class="w-3 h-3 bg-blue-300 rounded-full animate-bounce" style="animation-delay: 0.1s"></div>
          <div class="w-3 h-3 bg-blue-400 rounded-full animate-bounce" style="animation-delay: 0.2s"></div>
          <div class="w-3 h-3 bg-blue-500 rounded-full animate-bounce" style="animation-delay: 0.3s"></div>
        </div>
      </div> -->
    </div>
  </section>
</template>

<style scoped>
.animate-bounce {
  animation: bounce 1.5s infinite;
}

@keyframes bounce {
  0%, 100% {
    transform: translateY(-25%);
    animation-timing-function: cubic-bezier(0.8, 0, 1, 1);
  }
  50% {
    transform: translateY(0);
    animation-timing-function: cubic-bezier(0, 0, 0.2, 1);
  }
}
</style>