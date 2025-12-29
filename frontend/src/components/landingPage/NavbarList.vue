<script setup>
</script>

<template>
    <nav class="fixed w-full bg-white/80 backdrop-blur-md z-50 shadow-sm">
        <div class="container mx-auto px-4 py-3 flex justify-between items-center">
                <span class="text-xl font-bold text-gray-900 ml-20">Kampung Kendung</span>
            <nav class="hidden md:block">
                <ul class="flex space-x-10">
                    <li><a href="#home" class="nav-link font-medium text-gray-700 hover:text-primary-600">Beranda</a></li>
                    <li><a href="#about" class="nav-link font-medium text-gray-700 hover:text-primary-600">Tentang</a></li>
                    <li><a href="#features" class="nav-link font-medium text-gray-700 hover:text-primary-600">Keunggulan</a></li>
                    <li><a href="#gallery" class="nav-link font-medium text-gray-700 hover:text-primary-600">Galeri</a></li>
                    <li><a href="#contact" class="nav-link font-medium text-gray-700 hover:text-primary-600">Kontak</a></li>
                </ul>
            </nav>

            <button class="md:hidden text-gray-700 focus:outline-none" id="menu-toggle">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
                </svg>
            </button>
        </div>

        <!-- Mobile Menu -->
        <div class="md:hidden hidden bg-white border-t" id="mobile-menu">
            <div class="container mx-auto px-4 py-4 flex flex-col space-y-4">
                <a href="#home" class="py-2 font-medium text-gray-700 hover:text-primary-600 border-b border-gray-100">Beranda</a>
                <a href="#about" class="py-2 font-medium text-gray-700 hover:text-primary-600 border-b border-gray-100">Tentang</a>
                <a href="#features" class="py-2 font-medium text-gray-700 hover:text-primary-600 border-b border-gray-100">Keunggulan</a>
                <a href="#gallery" class="py-2 font-medium text-gray-700 hover:text-primary-600 border-b border-gray-100">Galeri</a>
                <a href="#contact" class="py-2 font-medium text-gray-700 hover:text-primary-600">Kontak</a>
            </div>
        </div>
    </nav>
</template>