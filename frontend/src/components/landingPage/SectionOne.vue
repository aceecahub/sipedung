<script setup>
import { ref } from 'vue'
import kendungImage from '../../img/kendung.jpg'

const bgStyle = {
  backgroundImage: `url(${kendungImage})`,
  backgroundSize: 'cover',
  backgroundPosition: 'center',
  backgroundRepeat: 'no-repeat',
  backgroundColor: 'rgba(0, 0, 0, 0.3)',
backgroundBlendMode: 'multiply'
}

const color = ref({
  primary: {
    50: '#f0f9ff',
    100: '#e0f2fe',
    200: '#bae6fd',
    300: '#7dd3fc',
    400: '#38bdf8',
    500: '#0ea5e9',
    600: '#0284c7',
    700: '#0369a1',
    800: '#075985',
    900: '#0c4a6e',
  },
})

const isHovered = ref(false)

const styleBtn1 = ref(
  'cursor-pointer hover:bg-blue-600 h-13 text-white font-semibold py-2 px-4 rounded-xl mt-7 shadow-lg',
)
const styleBtn2 = ref(
  'cursor-pointer bg-white/50 border border-white h-13 hover:bg-white/70 font-semibold py-2 px-4 rounded-xl mt-7 shadow-lg',
)
const styleSection = ref('h-137 w-full')
</script>

<template>
  <section
    :class="styleSection"
    :style="bgStyle"
    style="font-family: playfair-display"
  >
    <div class="container py-3 flex justify-center mx-auto">
      <div class="mt-25 text-center">
        <h1 class="text-6xl font-bold text-white">
          Selamat Datang di <br class="m-1" />
          <span :style="{ color: color.primary[600] }">Kampung Kendung</span>
        </h1>
        <p class="text-xl mt-10 text-gray-100">
          Kampung Kendung adalah tempat yang ideal untuk <br />menikmati suasana alam yang indah dan
          sehat.
        </p>
        <div class="flex gap-5 justify-center">
          <button
            :class="styleBtn1"
            :style="{
              backgroundColor: isHovered ? color.primary[700] : color.primary[600],
              transition: 'background-color 0.3s ease',
            }"
            @mouseenter="isHovered = true"
            @mouseleave="isHovered = false"
          >
            Hubungi Kami
          </button>
          <button :class="styleBtn2" :style="{ color: color.primary[600] }">
            Jelajahi Kampung
          </button>
        </div>
      </div>
    </div>
  </section>
</template>
