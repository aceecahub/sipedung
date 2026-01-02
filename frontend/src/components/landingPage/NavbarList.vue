<script setup>
import { ref, onMounted, onUnmounted } from 'vue'

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

const hoveredItem = ref('')
const isScrolled = ref(false)

const handleScroll = () => {
  isScrolled.value = window.scrollY > 50
}

onMounted(() => {
  window.addEventListener('scroll', handleScroll)
})

onUnmounted(() => {
  window.removeEventListener('scroll', handleScroll)
})
</script>

<template>
  <nav 
  class="fixed w-full z-50 transition-all duration-300 h-15"
  :class="isScrolled ? 'bg-white shadow-md text-gray-800' : 'text-white'"
>
    <div class="container mx-auto px-4 py-3 flex justify-between items-center">
      <div class="flex mt-1">
        <img src="../../img/tasik.png" alt="Tasik" class="h-10 w-10">
        <span class="text-2xl font-bold ml-2" :class="{ 'text-blue-500': isScrolled, 'text-white': !isScrolled }">Kampung Kendung</span>
      </div>
      <div class="hidden md:block">
        <ul class="flex space-x-10">
          <li>
            <a
              href="#"
              class="nav-link font-medium transition-colors duration-300"
              :class="{ 'text-gray-800': isScrolled, 'text-white': !isScrolled }"
              :style="{ color: hoveredItem === 'beranda' ? color.primary[600] : '' }"
              @mouseenter="hoveredItem = 'beranda'"
              @mouseleave="hoveredItem = ''"
              >Beranda</a
            >
          </li>
          <li>
            <a
              href="#"
              class="nav-link font-medium transition-colors duration-300"
              :class="{ 'text-gray-800': isScrolled, 'text-white': !isScrolled }"
              :style="{ color: hoveredItem === 'tentang' ? color.primary[600] : '' }"
              @mouseenter="hoveredItem = 'tentang'"
              @mouseleave="hoveredItem = ''"
              >Tentang</a
            >
          </li>
          <li>
            <a
              href="#"
              class="nav-link font-medium transition-colors duration-300"
              :class="{ 'text-gray-800': isScrolled, 'text-white': !isScrolled }"
              :style="{ color: hoveredItem === 'keunggulan' ? color.primary[600] : '' }"
              @mouseenter="hoveredItem = 'keunggulan'"
              @mouseleave="hoveredItem = ''"
              >Keunggulan</a
            >
          </li>
          <li>
            <a
              href="#"
              class="nav-link font-medium transition-colors duration-300"
              :class="{ 'text-gray-800': isScrolled, 'text-white': !isScrolled }"
              :style="{ color: hoveredItem === 'galeri' ? color.primary[600] : '' }"
              @mouseenter="hoveredItem = 'galeri'"
              @mouseleave="hoveredItem = ''"
              >Galeri</a
            >
          </li>
          <li>
            <a
              href="#"
              class="nav-link font-medium transition-colors duration-300"
              :class="{ 'text-gray-800': isScrolled, 'text-white': !isScrolled }"
              :style="{ color: hoveredItem === 'kontak' ? color.primary[600] : '' }"
              @mouseenter="hoveredItem = 'kontak'"
              @mouseleave="hoveredItem = ''"
              >Kontak</a
            >
          </li>
        </ul>
      </div>
    </div>
  </nav>
</template>
