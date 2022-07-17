<template>
  <apexchart height='300' type='bar' :options='options' :series='series'></apexchart>
</template>

<script>
import { defineComponent } from 'vue'


export default defineComponent({
  name: 'CouponsTypeColumns',
  props: {
    series: {
      type: Object,
      required: true
    },
    options: {
      type: Object,
      required: true
    },
  },

})


</script>
