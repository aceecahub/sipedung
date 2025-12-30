<script setup>
import { ref } from 'vue'

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
const styleSection = ref('absolute mt-15 h-137 w-full')
</script>

<template>
  <section
    :class="styleSection"
    :style="{
      background:
        'linear-gradient(to top right, ' + color.primary[200] + ', ' + color.primary[50] + ')',
    }"
    style="font-family: playfair-display"
  >
    <div class="container mx-auto px-4 py-3 flex justify-between">
      <div class="mt-25">
        <h1 class="text-6xl font-bold">
          Selamat Datang di <br class="m-1" />
          Kampung Kendung
        </h1>
        <p class="text-xl mt-10 text-gray-600">
          Kampung Kendung adalah tempat yang ideal untuk <br />menikmati suasana alam yang indah dan
          sehat.
        </p>
        <div class="flex gap-5">
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

      <!-- Image -->
      <div class="lg:w-1/2 relative animate-fade-in animation-delay-500 mt-6">
        <div class="bg-white/50 rounded-2xl p-4 shadow-2xl transform rotate-2">
          <div class="bg-white rounded-xl">
            <img
              src="../../img/kendung.jpg"
              alt="Kampung Kendung"
              class="w-full h-96 object-cover rounded-2xl"
            />
          </div>
        </div>

        <!-- Icon -->
        <div
          class="absolute -bottom-4 -right-4 bg-white p-4 rounded-xl shadow-lg w-48 transform -rotate-3"
        >
          <div class="flex items-center">
            <div class="p-2 rounded-lg mr-3" :style="{ backgroundColor: color.primary[100] }">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-5 w-5" :style="{ color: color.primary[600] }"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M5 13l4 4L19 7"
                />
              </svg>
            </div>
            <div>
              <p class="font-medium text-sm text-gray-700">100+ Keluarga</p>
              <p class="text-xs" :style="{ color: color.primary[600] }">Sejahtera & Harmonis</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
