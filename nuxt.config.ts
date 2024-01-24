export default defineNuxtConfig({
  runtimeConfig: {
    APPLE: process.env.APPLE,
    NUXT_APPLE: process.env.NUXT_APPLE,
    public: {
      TOMATO: process.env.TOMATO,
      NUXT_TOMATO: process.env.NUXT_TOMATO,
    }
  }
})
