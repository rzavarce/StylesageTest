<template>
  <apexchart height="300" type="area" :options="options" :series="series"></apexchart>
</template>

<script>
  import { defineComponent } from 'vue'


  export default defineComponent({
    name: 'CouponDatesArea',
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
