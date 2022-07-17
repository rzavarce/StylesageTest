<template>
  <q-page padding>


  </q-page>
</template>

<script lang="ts">
  import { defineComponent } from 'vue'


  import axios from 'axios';
  import { Loading } from 'quasar';
  import '../router/axiosInterceptor';

 

  export default defineComponent({
    name: 'SectionTwo',
    components: {
      
    },
    data(){
      return{
        
      }
    },
    mounted () {

      console.log('pasoooooooooooo');

      Loading.show();

      let payload = {
        'key':'qqqqq',
        'resource':'yyy',
        'mode': 'sha256',
        'nonce': '{{nonce}}',
        'payload': {

        }
      }


      axios
      .post(process.env.ENV_API_URL + '/coupons/stats/', payload)
      .then((response) => {      


        console.log(response.data);


        Loading.hide()


      })
      .catch((error) => {

        Loading.hide();

        this.$q.notify({
          color: 'red-5',
          textColor: 'white',
          icon: 'warning',
          message: 'Error: Somethings has been bad.' + error
        });

      });

    }

  })
</script>

