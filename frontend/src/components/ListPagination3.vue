1<template>
  <div class="q-pa-md">
    <q-table
      title="Coupons List"
      :loading="loading"
      :rows="coupons_data.results"
      :columns="columns"
      row-key="name"
      v-model:pagination="pagination"
      @request="onRequest"
    />
  </div>
</template>

<script lang="ts">

import { ref } from 'vue'
import axios from 'axios';

const columns = [
  { name: 'webshop_id', align: 'center', label: 'Webshop Id', field: 'webshop_id', required: true, sortable: true },
  { name: 'title', align: 'center', label: 'Title', field: 'title', sortable: true,  },
  // { name: 'title', align: 'center', label: 'Title', field: 'title', sortable: true, style: 'max-width: 400px; height: auto;', },
  { name: 'promotion_type', label: 'Promotion Type', field: 'promotion_type', sortable: true },
  { name: 'coupon_webshop_name', label: 'Webshop Name', field: 'coupon_webshop_name', sortable: true },
  { name: 'value', label: 'Value', field: 'value', sortable: true },
  { name: 'first_seen', label: 'First Seen', field: 'first_seen', sortable: true },
  { name: 'last_seen', label: 'Last Seen', field: 'last_seen', sortable: true },
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
    // ...
    const loading = ref(true)
    const coupons = ref([])

    const pagination = ref({
      sortBy: 'name',
      descending: false,
      page: 0,
      rowsPerPage: 10,
      rowsNumber: 10

    })

    // Fetch coupons
    const fetchCoupons = (page = 0) => { // we can specify the "page" to jump to
      loading.value = true

      
      return axios.get(process.env.ENV_API_URL + '/coupons/', {
        params: { page: page } // here, we tell the api what "page" to jump to
      })
        .then(response => {

          console.log(response.data)
          

          coupons.value = response.data.results
          // The api gives us "meta data".
          // this meta data gives us everything we
          // need to get pagination working!
          const meta = response.data.meta

          // We now update "pagination" with our meta data
          // from the server. This is where the magic happens 🪄
          pagination.value.page = meta.current_page
          pagination.value.rowsPerPage = meta.per_page
          pagination.value.rowsNumber = meta.total


        })
        .finally(() => {
          loading.value = false
        })



    }

    const onRequest = (props) => {
      fetchCoupons(props.pagination.page)
    }

    // The initial fetch
    fetchCoupons()

    return {
      // ...
      onRequest,
      columns,
      loading,
      coupons,
      pagination
    }
  }

}
</script>
