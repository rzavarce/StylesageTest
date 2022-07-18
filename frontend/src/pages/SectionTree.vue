<template>
  <q-page padding>
    <div class="row q-col-gutter-sm">
      <div class="col-xs-12">
        <q-card class="my-card">
          <q-card-section class="bg-teal text-white">
            <div class="text-h6">Coupons Number By Promotion Type </div>
            <div class="text-subtitle2">from Coupons Dataframe</div>
          </q-card-section>
          <q-card-section class="">
            <div class="col">

            </div>
            <div class="row">
              <div class="col">
                <q-circular-progress
                show-value
                reverse
                :value="((group_by_promotion_type['percent-off']/totals)*100).toFixed(2)"
                size="200px"
                :thickness="0.2"
                color="light-blue"
                center-color="grey-9"
                track-color="transparent"
                class="text-white q-ma-md"
                />

                <p style="text-align: center; font-weight: bold;">% Percent Off</p>
              </div>
              <div class="col">
                <q-circular-progress
                show-value
                reverse
                :value="((group_by_promotion_type['buy-one-get-one']/totals)*100).toFixed(2)"
                size="200px"
                :thickness="0.2"
                color="light-blue"
                center-color="grey-9"
                track-color="transparent"
                class="text-white q-ma-md"
                />

                <p style="text-align: center; font-weight: bold;">% Buy One Get One</p>
              </div>
              <div class="col">
                <q-circular-progress
                show-value
                reverse
                :value="((group_by_promotion_type['dollar-off']/totals)*100).toFixed(2)"
                size="200px"
                :thickness="0.2"
                color="light-blue"
                center-color="grey-9"
                track-color="transparent"
                class="text-white q-ma-md"
                />

                <p style="text-align: center; font-weight: bold;">% Dollar Off</p>
              </div>
              <div class="col">
                <q-circular-progress
                show-value
                reverse
                :value="((group_by_promotion_type['free-gift']/totals)*100).toFixed(2)"
                size="200px"
                :thickness="0.2"
                color="light-blue"
                center-color="grey-9"
                track-color="transparent"
                class="text-white q-ma-md"
                />

                <p style="text-align: center; font-weight: bold;">% Free Gift</p>
              </div>
              <div class="col">
                <q-circular-progress
                show-value
                reverse
                :value="((group_by_promotion_type['free-shipping']/totals)*100).toFixed(2)"
                size="200px"
                :thickness="0.2"
                color="light-blue"
                center-color="grey-9"
                track-color="transparent"
                class="text-white q-ma-md"
                />

                <p style="text-align: center; font-weight: bold;">% Free Shipping</p>
              </div>
            </div>
          </q-card-section>
        </q-card>
      </div>
      <div class="col-xs-12">
        <q-card class="my-card">
          <q-card-section class="bg-teal text-white">
            <div class="text-h6">Percent Off Stats</div>
            <div class="text-subtitle2">from Coupons Dataframe</div>
          </q-card-section>
          <q-card-section class="">

            <q-chip square class="big_chip_label">
              <q-avatar color="blue" text-color="white">{{percent_off_stats.counts}}</q-avatar>
              Counts
            </q-chip>
            <q-chip square class="big_chip_label">
              <q-avatar color="blue" text-color="white">{{percent_off_stats.min}}</q-avatar>
              Minimal
            </q-chip>
            <q-chip square class="big_chip_label">
              <q-avatar color="blue" text-color="white">{{percent_off_stats.max}}</q-avatar>
              Maximal
            </q-chip>
            <q-chip square class="big_chip_label" color="green">
              {{percent_off_stats.mean}}% Mean
            </q-chip>
          </q-card-section>          
        </q-card>
      </div>
      <div class="col-xs-12">
        <q-card class="my-card">
          <q-card-section class="bg-teal text-white">
            <div class="text-h6">Dollar Off Stats</div>
            <div class="text-subtitle2">from Coupons Dataframe</div>
          </q-card-section>
          <q-card-section class="">
           <q-chip square class="big_chip_label">
            <q-avatar color="blue" text-color="white">{{dollar_off_stats.counts}}</q-avatar>
            Counts
          </q-chip>
          <q-chip square class="big_chip_label">
            <q-avatar color="blue" text-color="white">{{dollar_off_stats.min}}</q-avatar>
            Minimal
          </q-chip>
          <q-chip square class="big_chip_label">
            <q-avatar color="blue" text-color="white">{{dollar_off_stats.max}}</q-avatar>
            Maximal
          </q-chip>
          <q-chip square class="big_chip_label" color="green">
            {{dollar_off_stats.mean}}% Mean
          </q-chip>
        </q-card-section>
      </q-card>
    </div>
    <div class="col-xs-12">
      <q-card class="my-card">
        <q-card-section class="bg-teal text-white">
          <div class="text-h6">Retails Grouped Stats</div>
          <div class="text-subtitle2">from Coupons Dataframe</div>
        </q-card-section>
        <q-card-section class="">
          <div class="row">
            <div class="col">                
              <div ><b>Retail</b></div>                
            </div>
            <div class="col">
              <div ><b>Counts</b></div>
            </div>
            <div class="col">
              <div ><b>Min</b></div>
            </div>
            <div class="col">
              <div ><b>Max</b></div>
            </div>
            <div class="col">
              <div ><b>Mean</b></div>
            </div>
          </div>

          <div class="row">
            <div class="col">                
              <div v-for="(key) in grouped_keys" :key="key" ><b>{{ key }}</b></div>                
            </div>
            <div class="col">
              <div v-for="counts in this.grouped_stats_list.counts" :key="counts" >{{ counts }}</div>
            </div>
            <div class="col">
              <div v-for="min in this.grouped_stats_list.min" :key="min" >{{ min }}</div>
            </div>
            <div class="col">
              <div v-for="max in this.grouped_stats_list.max" :key="max" >{{ max }}</div>
            </div>
            <div class="col">
              <div v-for="mean in this.grouped_stats_list.mean" :key="mean" >{{ mean }}</div>
            </div>
          </div>

        </q-card-section>
      </q-card>
    </div>
    <div class="col-xs-12">
      <q-card class="my-card">
        <q-card-section class="bg-teal text-white">
          <div class="text-h6">Coupons Words Key List</div>
          <div class="text-subtitle2">Words Key: <b>10 Off|10% Off | 20 Off|20% Off</b></div>
        </q-card-section>
        <q-card-section class="">
          <h6>Coupon with term "10 Off|10% Off | 20 Off|20% Off" in Title</h6>

          <div class="row">
            <div class="col-2">
              <b>ID</b>
            </div>
            <div class="col-10">
             Title
           </div>
         </div>                
         <div v-for="(word_key) in title_words_keys_stats" :key="word_key[0]" >
          <div class="row">
            <div class="col-2">
              <b>{{ word_key.id }}</b>
            </div>
            <div class="col-10">
              {{ word_key.title }}
            </div>
          </div>
        </div>
      </q-card-section>
      <q-card-section class="">
          <h6>Coupon with term "10 Off|10% Off | 20 Off|20% Off" in Description</h6>

          <div class="row">
            <div class="col-2">
              <b>ID</b>
            </div>
            <div class="col-10">
             Description
           </div>
         </div>                
         <div v-for="(word_key) in description_words_keys_stats" :key="word_key[0]" >
          <div class="row">
            <div class="col-2">
              <b>{{ word_key.id }}</b>
            </div>
            <div class="col-10">
              {{ word_key.description }}
            </div>
          </div>
        </div>
      </q-card-section>
    </q-card>
  </div>

</div>
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
        'totals': 0,
        'group_by_promotion_type': {},
        'dollar_off_stats': {},
        'percent_off_stats': {},
        'grouped_stats_list': {},
        'grouped_keys': {},
        'title_words_keys_stats':[],
        'description_words_keys_stats':[],

      }
    },
    mounted () {

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

        this.totals = response.data.payload.totals
        this.group_by_promotion_type = response.data.payload.group_by_promotion_type
        this.percent_off_stats = response.data.payload.percent_off_stats
        this.dollar_off_stats = response.data.payload.dollar_off_stats
        this.grouped_stats_list = response.data.payload.grouped_stats_list

        const grouped_keys_list : string[] = Object.keys(this.grouped_stats_list['counts']);

        this.grouped_keys = grouped_keys_list
        this.title_words_keys_stats = response.data.payload.words_keys_stats.title
        this.description_words_keys_stats = response.data.payload.words_keys_stats.description

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
<style type="text/css">

  .big_chip_label{

    width: 24%;
    font-size: 35px;

  }


</style>

