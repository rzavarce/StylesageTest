<template>

    <q-item clickable v-ripple v-on:click="count++">

      <q-badge color="red" text-color="black" floating class="q-pa-sm">
        {{ count }}
      </q-badge>


      <q-item-section>{{ cat_name }}</q-item-section>

    </q-item>

</template>

<script lang="ts">

  import {
    defineComponent,
  } from 'vue';


  export default defineComponent({
    name: 'BadgeCounter',
    props: {
      cat_name: {
        type: String,
        required: true
      },
    },
    data: function () {
      return {
        count: 0
      }
    },
  });
  
</script>
