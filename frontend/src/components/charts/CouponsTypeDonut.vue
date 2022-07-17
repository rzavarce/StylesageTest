<template>
  <apexchart height="300" type="donut" :options='options' :series='series' :tooltip="tooltip" ></apexchart>
</template>

<script>
import { defineComponent } from 'vue'


export default defineComponent({
  name: 'CouponsTypeDonut',
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
  data (){
    return {
      'tooltip': {'show': true},
    }
  }
  
})
</script>
