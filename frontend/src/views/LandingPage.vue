<script setup>
import NavbarList from "../components/landingPage/NavbarList.vue"
import WelcomeSection from "../components/landingPage/WelcomeSection.vue"
import AboutSection from "../components/landingPage/AboutSection.vue"
import GalerySection from "../components/landingPage/GalerySection.vue"
import ContactSection from "../components/landingPage/ContactSection.vue"
import FooterSection from "../components/landingPage/FooterSection.vue"
</script>
 <template>
   <div style="font-family: playfair-display">
    <NavbarList />
    <WelcomeSection id="beranda" />
    <AboutSection id="tentang" />
    <GalerySection id="galeri" />
    <ContactSection id="kontak" />
    <FooterSection />
   </div>
 </template>