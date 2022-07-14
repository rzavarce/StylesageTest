<template>
  <q-page class="q-pa-sm">
    <q-card class="fit">
      <q-card-section>
        <div class="text-h4 text-grey-8">
          Section Two 
        </div>

      </q-card-section>
      <q-separator/>
      <q-card-section>
        <div class="q-pa-sm">
            <div class="row">
              
              
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
import { Todo, Meta } from 'components/models';
// import ExampleComponent from 'components/ExampleComponent.vue';
import { defineComponent, ref } from 'vue';

export default defineComponent({
  name: 'IndexPage',
  components: {  },
  setup() {
    const todos = ref<Todo[]>([
      {
        id: 1,
        content: 'ct1'
      },
      {
        id: 2,
        content: 'ct2'
      },
      {
        id: 3,
        content: 'ct3'
      },
      {
        id: 4,
        content: 'ct4'
      },
      {
        id: 5,
        content: 'ct5'
      }
    ]);
    const meta = ref<Meta>({
      totalCount: 1200
    });
    return { todos, meta };
  }
});
</script>
