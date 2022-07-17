<template>
  <q-page class="row items-center justify-evenly">

    <div class="column">
      <div class="col">
        <h2>Welcome <b>{{ username }}</b> to</h2>
      </div>
      <div class="col">
        <img src="stylesage_banner2.png">
      </div>
    </div>

  </q-page>
</template>

<script lang="ts">

import { defineComponent, } from 'vue';


export default defineComponent({
  name: 'IndexPage',
  data(){
    return{
      'username': localStorage.username,
    }
  },

  
});
</script>
