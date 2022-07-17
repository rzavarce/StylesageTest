1<template>
  <div class="q-pa-md">
    <q-table
      title="Coupons List"      
      :rows="coupons_data.data"
      v-model:pagination="pagination"
      :columns="columns"
      row-key="name"
    />
  </div>
</template>

<script lang="ts">

import { ref } from 'vue'
  
const columns = [
  { name: 'webshop_id', align: 'center', label: 'Webshop Id', field: 'webshop_id', required: true, sortable: true },
  { name: 'title', align: 'center', label: 'Title', field: 'title', sortable: true,  },
  // { name: 'title', align: 'center', label: 'Title', field: 'title', sortable: true, style: 'max-width: 400px', },
  { name: 'promotion_type',  align: 'center', label: 'Promotion Type', field: 'promotion_type', sortable: true },
  { name: 'coupon_webshop_name',  align: 'center', label: 'Webshop Name', field: 'coupon_webshop_name', sortable: true },
  { name: 'value',  align: 'center', label: 'Value', field: 'value', sortable: true },
  { name: 'first_seen',  align: 'center', label: 'First Seen', field: 'first_seen', sortable: true },
  { name: 'last_seen',  align: 'center', label: 'Last Seen', field: 'last_seen', sortable: true },
]


export default {
  name: 'ListPagination',
  props: {
    coupons_data: {
      type: Array,
      required: true
    },
  },
  setup () {

    const pagination = ref({
      sortBy: 'name',
      descending: false,
      page: 0,
      rowsPerPage: 10,
    })

    return {
      columns,
      pagination
      
    }
  },

}
</script>
