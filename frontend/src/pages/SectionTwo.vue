<template>
  <q-page padding>
    <div class="row q-col-gutter-sm">
      <div class="col-xs-12">

        <coupons-type-cards :items="coupons_cards_data" />
        
      </div>
      <div class="col-xs-12">
        <q-card>
          <coupons-type-dates-area :series="area_series" :options="area_options" />
        </q-card>
      </div>
      <div class="col-md-6 col-xs-12">
        <q-card>
          <coupons-type-columns :series="columns_series" :options="columns_options"/>
        </q-card>
      </div>
      <div class="col-md-6 col-xs-12">
        <q-card>
          <coupons-type-donut :series="donut_series" :options="donut_options" />          
        </q-card>
      </div>
      <div class="col-md-12" >
        <q-card>
          <list-pagination :coupons_data="coupons_data" />
        </q-card>
      </div>

    </div>
  </q-page>
</template>

<script lang="ts">
  import { defineComponent, defineAsyncComponent } from 'vue'


  import axios from 'axios';
  import { Loading } from 'quasar';
  import '../router/axiosInterceptor';

  import { getCssVar } from 'quasar'


  import _ from 'lodash';


  const ListPagination = defineAsyncComponent(() =>
    import('components/ListPagination.vue')
    )

  const CouponsTypeColumns = defineAsyncComponent(() =>
    import('components/charts/CouponsTypeColumns.vue')
    )

  const CouponsTypeDonut = defineAsyncComponent(() =>
    import('components/charts/CouponsTypeDonut.vue')
    )

  const CouponsTypeDatesArea = defineAsyncComponent(() =>
    import('components/charts/CouponsTypeDatesArea.vue')
    )

  const CouponsTypeCards = defineAsyncComponent(() =>
    import('components/charts/CouponsTypeCards.vue')
    )



  export default defineComponent({
    name: 'SectionTwo',
    components: {
      CouponsTypeCards,
      ListPagination,
      CouponsTypeColumns,
      CouponsTypeDonut,
      CouponsTypeDatesArea
    },
    data(){
      return{
        'coupons_cards_data': {},
        'coupons_data': {},
        'columns_series': {},
        'columns_options': {},
        'donut_series': {},
        'donut_options': {},
        'area_series': {},
        'area_options': {},
      }
    },
    mounted () {

      Loading.show();
      axios
      .get(process.env.ENV_API_URL + '/coupons/')
      .then((response) => {      

        this.coupons_data = response

        const types_counts = _.countBy(response.data, 'promotion_type')

        this.setCardsData(types_counts, response.data.length)

        this.setBarChartData(types_counts)

        this.setDonutsChartData(types_counts, response.data.length)

        this.setAreaChartData(response.data)

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

    },

    methods: {
      setCardsData(types_counts, total) {

        let aux = {}

        type MyType = {
          arr: object[];
        };

        const obj: MyType = {
          arr: [],
        };

        for (const type in types_counts) {

          aux = {}
          aux['title'] = `${type}`
          aux['value'] = `${types_counts[type]}`
          aux['icon'] = 'local_offer',
          aux['color1'] = '#5064b5'
          aux['color2'] = '#3e51b5'
          obj.arr.push(aux);

        }

        aux = {}
        aux['title'] = 'Total'
        aux['value'] = total
        aux['icon'] = 'local_offer',
        aux['color1'] = '#5064b5'
        aux['color2'] = '#3e51b5'

        obj.arr.push(aux);

        this.coupons_cards_data = obj['arr']

      },
      setBarChartData(types_counts) {

        this.columns_series = [{
          name: 'Nº Coupons',
          data: Object.values(types_counts)
        }]

        this.columns_options = {
          title: {
            text: 'CouponsTypeColumns',
            align: 'left'
          },
          chart: {
            id: 'apex-column'
          },
          colors: [getCssVar('primary'), getCssVar('secondary'), getCssVar('negative')],
          xaxis: {
            categories: Object.keys(types_counts),
            tickPlacement: 'on',
          },
          plotOptions: {
            bar: {
              horizontal: false,
              columnWidth: '55%',
              endingShape: 'rounded'
            }
          }
        }
      },
      setDonutsChartData(types_counts, total) {

        const f = function (e) {
          return  Math.round(((e*100)/total))
        }

        this.donut_series = Object.values(types_counts).map((e) => f(e))      

        this.donut_options = {
          title: {
            text: 'ApexDonut',
            align: 'left'
          },
          chart: {
            id: 'apex-donut',
          },
          colors: [getCssVar('primary'), getCssVar('secondary'), getCssVar('negative'), getCssVar('accent')],
          xaxis: {
            categories: Object.keys(types_counts),
            tickPlacement: 'on',
          },
          markers: {
            size: 4,
            hover: {
              sizeOffset: 6
            }
          },
          labels: Object.keys(types_counts)

        }

      },
      setAreaChartData(coupons_data){

        let months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']


        var re=_.groupBy(coupons_data,function(item){

          return (new Date(item.first_seen).getMonth());

        })

        let keys = Object.keys(re);

        let categories : string[] = [];
        let series1 : number[] = [];

        for(let i=0; i< keys.length; i++){

          let key = keys[i];

          categories.push(
            months[new Date(re[key][0].first_seen).getMonth()]         
            )

          series1.push(
            re[key].length
            
            )

        }

        console.log(series1)

        this.area_options = {
          title: {
            text: 'CouponDatesArea',
            align: 'left'
          },
          chart: {
            height: 300,
            type: 'area'
          },
          colors: [getCssVar('primary'), getCssVar('secondary'), getCssVar('negative')],
          markers: {
            size: 4,
            hover: {
              sizeOffset: 6
            }
          },
          xaxis: {
            categories: months
          }
        }

        this.area_series = [{
          name: 'series1',
          data: series1
        },]

        console.log(this.area_series, this.area_options)





      }
    }



  })
</script>

