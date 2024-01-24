export default defineNuxtConfig({
  runtimeConfig: {
    public: {
      NUXT_TOMATO: process.env.NUXT_TOMATO,
      TOMATO: process.env.TOMATO
    }
  }
})
