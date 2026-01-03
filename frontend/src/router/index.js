import { createRouter, createWebHistory } from 'vue-router'
import LandingPage from '../views/LandingPage.vue'
import LoginPage from '../views/LoginPage.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    { path: '/', name: 'landing-page', component: LandingPage, meta: { title: 'Kampung Kendung' } },
    { path: '/login', name: 'login', component: LoginPage, meta: { title: 'Login - Kampung Kendung' } },
  ],
})

router.beforeEach((to, from, next) => {
  document.title = to.meta.title
  next()
})

export default router
