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

const hoveredItem = ref('')
</script>

<template>
  <nav class="absolute w-full z-10 h-15 text-white">
    <div class="container mx-auto px-4 py-3 flex justify-between items-center">
      <div class="flex mt-1">
        <img src="../../img/tasik.png" alt="Tasik" class="h-10 w-10">
        <span class="text-2xl font-bold text-white ml-2">Kampung Kendung</span>
      </div>
      <div class="hidden md:block">
        <ul class="flex space-x-10">
          <li>
            <a
              href="#"
              class="nav-link font-medium text-white transition-colors duration-300"
              :style="{ color: hoveredItem === 'beranda' ? color.primary[600] : '' }"
              @mouseenter="hoveredItem = 'beranda'"
              @mouseleave="hoveredItem = ''"
              >Beranda</a
            >
          </li>
          <li>
            <a
              href="#"
              class="nav-link font-medium text-white transition-colors duration-300"
              :style="{ color: hoveredItem === 'tentang' ? color.primary[600] : '' }"
              @mouseenter="hoveredItem = 'tentang'"
              @mouseleave="hoveredItem = ''"
              >Tentang</a
            >
          </li>
          <li>
            <a
              href="#"
              class="nav-link font-medium text-white transition-colors duration-300"
              :style="{ color: hoveredItem === 'keunggulan' ? color.primary[600] : '' }"
              @mouseenter="hoveredItem = 'keunggulan'"
              @mouseleave="hoveredItem = ''"
              >Keunggulan</a
            >
          </li>
          <li>
            <a
              href="#"
              class="nav-link font-medium text-white transition-colors duration-300"
              :style="{ color: hoveredItem === 'galeri' ? color.primary[600] : '' }"
              @mouseenter="hoveredItem = 'galeri'"
              @mouseleave="hoveredItem = ''"
              >Galeri</a
            >
          </li>
          <li>
            <a
              href="#"
              class="nav-link font-medium text-white transition-colors duration-300"
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
