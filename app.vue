<script setup lang="ts">
const apiRes = ref(null)

async function getConfigs() {
  apiRes.value = await fetch('/api/test', {
    method: 'GET',
  }).then(res => res.json())
}
</script>

<template>
  <div>
  TOMATO: {{ useRuntimeConfig().public.TOMATO }}
  <br>
  NUXT_TOMATO {{ useRuntimeConfig().public.NUXT_TOMATO }}
  </div>

  <br>
  <button @click="getConfigs">Get Configs</button>
  <div>
    apiRes: {{ apiRes }}
  </div>
</template>
