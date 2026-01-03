<script setup>
import { ref, onMounted, onUnmounted } from 'vue'
import { RouterLink } from 'vue-router'

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

const scrollToSection = (e, sectionId) => {
  e.preventDefault()
  const element = document.getElementById(sectionId)
  if (element) {
    const headerOffset = 80 // Adjust this value based on your header height
    const elementPosition = element.getBoundingClientRect().top
    const offsetPosition = elementPosition + window.pageYOffset - headerOffset

    window.scrollTo({
      top: offsetPosition,
      behavior: 'smooth'
    })
  }
}

onMounted(() => {
  window.addEventListener('scroll', handleScroll)
  
  // Add smooth scrolling for anchor links
  const links = document.querySelectorAll('a[href^="#"]')
  links.forEach(link => {
    link.addEventListener('click', (e) => {
      const href = link.getAttribute('href')
      if (href !== '#') {
        e.preventDefault()
        const sectionId = href.substring(1)
        scrollToSection(e, sectionId)
      }
    })
  })
})

onUnmounted(() => {
  window.removeEventListener('scroll', handleScroll)
})

const styleLogin = ref('cursor-pointer nav-link font-medium transition-colors duration-300 px-2 py-1 rounded-md bg-blue-500 text-white hover:bg-blue-600')
</script>

<template>
  <nav 
  class="fixed w-full z-50 transition-all duration-300 h-15"
  :class="isScrolled ? 'bg-white shadow-md text-gray-800' : 'text-white'"
>
    <div class="container mx-auto px-4 py-3 flex justify-between items-center h-full">
      <div class="flex items-center">
        <img src="../../img/tasik.png" alt="Tasik" class="h-10 w-10">
        <span class="text-2xl font-bold ml-2 whitespace-nowrap" :class="{ 'text-blue-500': isScrolled, 'text-white': !isScrolled }">Kampung Kendung</span>
      </div>
      <div class="hidden md:flex items-center h-full">
        <ul class="flex space-x-8 h-full items-center">
          <li>
            <a
              href="#beranda"
              @click="(e) => scrollToSection(e, 'beranda')"
              class="nav-link font-medium transition-colors duration-300 px-2 py-1 rounded-md hover:bg-opacity-10 "
              :class="{ 'text-gray-800': isScrolled, 'text-white': !isScrolled }"
              :style="{ color: hoveredItem === 'beranda' ? color.primary[600] : '' }"
              @mouseenter="hoveredItem = 'beranda'"
              @mouseleave="hoveredItem = ''"
              >Beranda</a
            >
          </li>
          <li>
            <a
              href="#tentang"
              @click="(e) => scrollToSection(e, 'tentang')"
              class="nav-link font-medium transition-colors duration-300 px-2 py-1 rounded-md hover:bg-opacity-10 "
              :class="{ 'text-gray-800': isScrolled, 'text-white': !isScrolled }"
              :style="{ color: hoveredItem === 'tentang' ? color.primary[600] : '' }"
              @mouseenter="hoveredItem = 'tentang'"
              @mouseleave="hoveredItem = ''"
              >Tentang</a
            >
          </li>
          <li>
            <a
              href="#lembaga"
              @click="(e) => scrollToSection(e, 'lembaga')"
              class="nav-link font-medium transition-colors duration-300 px-2 py-1 rounded-md hover:bg-opacity-10 "
              :class="{ 'text-gray-800': isScrolled, 'text-white': !isScrolled }"
              :style="{ color: hoveredItem === 'lembaga' ? color.primary[600] : '' }"
              @mouseenter="hoveredItem = 'lembaga'"
              @mouseleave="hoveredItem = ''"
              >Lembaga</a
            >
          </li>
          <li>
            <a
              href="#galeri"
              @click="(e) => scrollToSection(e, 'galeri')"
              class="nav-link font-medium transition-colors duration-300 px-2 py-1 rounded-md hover:bg-opacity-10"
              :class="{ 'text-gray-800': isScrolled, 'text-white': !isScrolled }"
              :style="{ color: hoveredItem === 'galeri' ? color.primary[600] : '' }"
              @mouseenter="hoveredItem = 'galeri'"
              @mouseleave="hoveredItem = ''"
              >Galeri</a
            >
          </li>
          <li>
            <a
              href="#kontak"
              @click="(e) => scrollToSection(e, 'kontak')"
              class="nav-link font-medium transition-colors duration-300 px-2 py-1 rounded-md hover:bg-opacity-10"
              :class="{ 'text-gray-800': isScrolled, 'text-white': !isScrolled }"
              :style="{ color: hoveredItem === 'kontak' ? color.primary[600] : '' }"
              @mouseenter="hoveredItem = 'kontak'"
              @mouseleave="hoveredItem = ''"
              >Kontak</a
            >
          </li>
          <li>
            <RouterLink to="/login" :class="styleLogin">Login</RouterLink>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</template>
