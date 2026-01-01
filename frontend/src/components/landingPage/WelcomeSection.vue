<script setup>
import { ref } from 'vue'
import kendungImage from '../../img/kendung2.jpg'

const bgStyle = {
  backgroundImage: `url(${kendungImage})`,
  backgroundSize: 'cover',
  backgroundPosition: 'center',
  backgroundRepeat: 'no-repeat',
  backgroundColor: 'rgba(0, 0, 0, 0.5)',
  backgroundBlendMode: 'multiply',
  borderRadius: '0px 0px 10px 10px',
}

const styleBtn1 = ref(
  'cursor-pointer bg-blue-500 transition-colors duration-300 hover:bg-blue-600 h-13 text-white font-semibold py-2 px-4 rounded-xl mt-7 shadow-lg',
)
const styleBtn2 = ref(
  'cursor-pointer bg-white/50 text-blue-600 border border-white transition-colors duration-300 hover:bg-white/70 h-13 font-semibold py-2 px-4 rounded-xl mt-7 shadow-lg',
)
const styleSection = ref('h-137 w-full')
</script>

<template>
  <section :class="styleSection" :style="bgStyle" style="font-family: playfair-display">
    <div class="container py-3 flex justify-center mx-auto">
      <div class="mt-25 text-center">
        <h1 class="text-6xl font-bold text-white">
          Selamat Datang di <br class="m-1" />
          <span class="text-blue-400">Kampung Kendung</span>
        </h1>
        <p class="text-xl mt-10 text-gray-100">
          Kampung Kendung adalah tempat yang ideal untuk <br />menikmati suasana alam yang indah dan
          sehat.
        </p>
        <div class="flex gap-5 justify-center">
          <button :class="styleBtn1">Hubungi Kami</button>
          <button :class="styleBtn2">Jelajahi Kampung</button>
        </div>
      </div>
    </div>
  </section>
</template>
