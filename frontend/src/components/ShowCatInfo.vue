<template>

{{ cat_info.name }}

</template>

<script lang="ts">

  import {
    defineComponent,
    // PropType,
    // computed,
    // ref,
    // toRef,
    // Ref,
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
