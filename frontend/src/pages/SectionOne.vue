<template>
  <q-page class="q-pa-sm">
    <q-card class="fit">
      <q-card-section>
        <div class="text-h4 text-grey-8">
          Section One 
        </div>

      </q-card-section>
      <q-separator/>
      <q-card-section>
        <div class="q-pa-sm">
            <div class="row">
              <div class="col-2 q-mb-md">
                <q-list bordered separator>

                  <badge-counter
                    v-for="cat in cats_data"
                    v-bind:key="cat.id"
                    :cat_name="cat.name"
                    @click="onCatClick(cat)"
                  ></badge-counter>

                </q-list>

              </div>
              <div class="col-10 q-pa-md">

                <div v-if="show">
                  <q-img
                    :src="cat_info.url"
                    style="width: 100%"
                  >
                    <div class="absolute-bottom text-subtitle1 text-center">

                      Hello my name is <b>{{ cat_info.name }}</b> and my breeds is <b>{{ cat_info.breeds }}</b>
                      
                    </div>
                  </q-img>
                </div>
                <div v-if="!show">

                  <p class="cat_empty_msg">Please click on a cat from the list.</p>

                </div>

              </div>
            </div>
        </div>
      </q-card-section>
            <q-card-actions align="left">
        <q-btn label="Clean panel" class="text-capitalize q-ma-sm" color="indigo-7" @click="show=false" />
      </q-card-actions>
    </q-card>
  </q-page>
</template>

<script lang="ts">
  // import { Cats, Meta } from 'components/models';
  // import SectionOneComponent from 'components/SectionOneComponent.vue';
  import BadgeCounter from 'components/BadgeCounter.vue'
  // import { defineComponent } from 'vue';

  import cats_data from '../assets/json/cats_data.json';

  console.log(cats_data);


  export default {
    data() {

      return {
        cats_data: cats_data,
        // cat_info: null,
        cat_info: {
          'id': '',
          'name': '',
          'url': '',
          'breeds':'',
        },
        show: false
        

      }
    },

    components: { BadgeCounter },
    methods: {   

      onCatClick: function(cat: object) {

        this.show = true
        this.cat_info.id = cat['id']
        this.cat_info.name = cat['name']
        this.cat_info.url = cat['url']
        this.cat_info.breeds = cat['breeds'][0]['name']     

      }


   },
 }


</script>

<style type="text/css">
  
  .cat_empty_msg {

    font-size: 24px;
    margin: 20px;

  }



</style>


