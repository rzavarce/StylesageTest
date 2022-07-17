1<template>
  <div class="q-pa-md">
    <q-table
      title="Coupons List"
      :rows="coupons_data.results"
      :columns="columns"
      row-key="name"
    />
  </div>
</template>

<script lang="ts">
  
const columns = [
  { name: 'webshop_id', align: 'center', label: 'Title', field: 'webshop_id', required: true, sortable: true },
  { name: 'title', align: 'center', label: 'Title', field: 'title', sortable: true,  },
  // { name: 'title', align: 'center', label: 'Title', field: 'title', sortable: true, style: 'max-width: 400px', },
  { name: 'promotion_type', label: 'Promotion Type', field: 'promotion_type', sortable: true },
  { name: 'coupon_webshop_name', label: 'Webshop Name', field: 'coupon_webshop_name', sortable: true },
  { name: 'value', label: 'Value', field: 'value', sortable: true },
  { name: 'first_seen', label: 'First Seen', field: 'first_seen', sortable: true },
  { name: 'second_seen', label: 'Second Seen', field: 'second_seen', sortable: true },
]


export default {
  name: 'ListPagination',
  props: {
    coupons_data: {
      type: Array,
      required: true
    },
  },
  created(){

    // console.log(this.coupons_data)
    // console.log(this.coupons_data[3])


  },
  setup () {
    return {
      columns,
      
    }
  },

}
</script>
