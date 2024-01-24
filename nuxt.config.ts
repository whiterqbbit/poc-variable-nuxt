export default defineNuxtConfig({
  devtools: { enabled: true },
  runtimeConfig: {
    public: {
      yolo: process.env.YOLO
    }
  }
})
