<template>
  <q-layout>
    <q-page-container>
      <q-page class="flex bg-image flex-center">
        <q-card v-bind:style="$q.screen.lt.sm?{'width': '80%'}:{'width':'30%'}">
          <q-card-section>
            <q-avatar size="103px" class="absolute-center shadow-10">
              <img src="profile.svg">
            </q-avatar>
          </q-card-section>
          <q-card-section>
            <div class="text-center q-pt-lg">
              <div class="col text-h6 ellipsis">
                Log in
              </div>
            </div>
          </q-card-section>
          <q-card-section>
            <q-form
              class="q-gutter-md"
            >
              <q-input
                filled
                v-model="username"
                label="Email"
                lazy-rules
              />

              <q-input
                type="password"
                filled
                v-model="password"
                label="Password"
                lazy-rules

              />

              <div>
                <q-btn label="Login" type="button" color="primary" @click.prevent="authenticate"/>

              </div>
            </q-form>
          </q-card-section>
        </q-card>
      </q-page>
    </q-page-container>
  </q-layout>
</template>

<script lang="ts">
import {defineComponent} from 'vue'
import {ref} from 'vue'


import axios from 'axios' 
import { Loading } from 'quasar';


export default defineComponent({
  setup() {
    return {
      username: ref('admin'),
      password: ref('admin.2022')
    }
  },
  data () {
    return {

    }
  },
  methods: {

    authenticate() {

        console.log('pasooooooooooooo');

        Loading.show();

        const payload = {
          'key':'qqqqq',
          'resource':'yyy',
          'mode': 'sha256',
          'nonce': '{{nonce}}',
          'payload': {
            'username': this.username,
            'password': this.password
          }
        }

        console.log(process.env.ENV_API_URL);

        axios
          .post(process.env.ENV_API_URL + '/login/', payload)
          .then((response) => {
              

            console.log(response)

            localStorage.isAuthenticated = true
            localStorage.token = response.data.token
            localStorage.username = response.data.username
            localStorage.email = response.data.email
            
            /*
            this.$store.state.isAuthenticated = true;
            this.$store.state.token = response.data.token;
            this.$store.state.username = response.data.username;
            this.$store.state.email = response.data.email;

            */


            Loading.hide()

            this.$router.push({ name: 'dashboard' })
              


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



      },

  },
})
</script>

<style>

.bg-image {
  background-image: linear-gradient(135deg, #7028e4 0%, #e5b2ca 100%);
}
</style>