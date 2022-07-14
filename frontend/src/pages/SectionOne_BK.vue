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
                xxxxxxxxxxxxxxx


               
              </div>
            </div>
        </div>
      </q-card-section>

      <q-card-actions align="left">
        <q-btn label="Go Somewhere" class="text-capitalize q-ma-sm" color="indigo-7"/>
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

  let cat_info={}

  export default {
    data() {

      return {
        cats_data: cats_data,
        // cat_info: null,

        

      }
    },

    components: { BadgeCounter },
    methods: {   

      onCatClick: function(cat: object) {

        console.log(cat['name'])

        cat_info = cat

        console.log(cat_info['name'])
          

      }


   },
 }


</script>
