<template>

  <q-img
  :src="cat_info.url"
  style="width: 100%"
  >
  <div class="absolute-bottom text-subtitle1 text-center">

    Hello, my name is <b>{{ cat_info.name }}</b> and my breed is <b>{{ cat_info.breeds[0].name }}</b>, {{ cat_info.breeds[0].description }}.
    
  </div>
</q-img>

</template>

<script lang="ts">

  import {
    defineComponent,
  } from 'vue';


  export default defineComponent({
    name: 'ShowCatInfo',
    props: {
      cat_info: {
        type: Object,
        required: true
      },
    },

  });
  
</script>
