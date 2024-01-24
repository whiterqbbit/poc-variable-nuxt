export default defineEventHandler(async () => {
  return {
    statusCode: 200,
    body: {
      message: useRuntimeConfig()
    },
  }
})
