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
</script>

<template>
  <section class="my-10" style="font-family: playfair-display">
    <div class="container mx-auto px-4">
      <div class="flex flex-col items-center">
        <h2 class="text-3xl font-bold text-center text-gray-900">Tentang Kampung Kendung</h2>
        <hr
          class="w-20 h-1 mt-1 border-0 rounded-full mr-83"
          :style="{ backgroundColor: color.primary[400] }"
        />
      </div>
      <p class="text-xl mt-7 text-gray-600 text-center">Sejarah Kampung Kendung</p>
    </div>

    <!-- image and sejarah -->
     <div class="container mx-auto">
       <div class="flex mt-15 gap-5">
         <div class="relative ml-1 p-4 rounded-2xl w-190 h-105 bg-blue-50 shadow-xl" >
           <div class="relative">
             <img
               src="../../img/kendung.jpg"
               alt="Kampung Kendung"
               class="h-96 object-cover rounded-2xl w-full"
             />
             <div class="container absolute -bottom-9 -right-8 h-25 bg-blue-500 p-4 rounded-xl shadow-lg backdrop-blur-sm w-48">
               <div class="flex items-center justify-center h-full">
                 <div>
                   <p class="font-medium text-lg text-white">Sejak Berdiri</p>
                   <p class="text-xl font-bold text-white">Tahun 1952</p>
                 </div>
               </div>
             </div>
           </div>
         </div>
         <div class="w-1/2 text-gray-600 text-md">
           <p>
             Kampung Kendung telah menjadi saksi bisu perjalanan panjang sejak tahun 1952. Dengan
             komitmen kuat pada pengembangan berkelanjutan, kami telah menemukan keseimbangan sempurna
             antara melestarikan budaya lokal dan mengadopsi kemajuan teknologi modern.
           </p>
           <p class="my-8">
             Hari ini, Kampung Kendung dikenal sebagai salah satu desa percontohan di Indonesia yang
             berhasil menggabungkan kenyamanan hidup modern dengan kelestarian lingkungan. Setiap sudut
             desa dirancang dengan penuh perhatian untuk menciptakan ruang hidup yang nyaman, aman, dan
             penuh makna.
           </p>
           <div class="grid grid-cols-2 gap-4 mt-4">
             <div class="bg-blue-50 p-4 rounded-lg shadow">
               <h3 class="font-semibold text-lg text-blue-500">Jumlah Warga</h3>
               <p class="text-sm text-gray-600">Populasi yang stabil dan berkembang</p>
             </div>
             <div class="bg-blue-50 p-4 rounded-lg shadow">
               <h3 class="font-semibold text-lg text-blue-500">Jumlah Keluarga</h3>
               <p class="text-sm text-gray-600">Keluarga yang solid dan harmonis</p>
             </div>
           </div>
         </div>
       </div>
     </div>
  </section>
</template>
