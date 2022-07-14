<template>
  <q-layout view="hHh Lpr fFf">
    <q-header elevated>
      <q-toolbar>

        <div class="row no-wrap">
          <div style="min-width: 300px" >
        

        <q-toolbar-title>
          <q-avatar>
                <img src="https://cdn.quasar.dev/logo/svg/quasar-logo.svg">
              </q-avatar>
          StylesageTest
        </q-toolbar-title>

      </div>
        <q-btn
          flat
          dense
          round
          icon="menu"
          aria-label="Menu"

          @click="toggleLeftDrawer"
        />

        </div>        
      </q-toolbar>
    </q-header>

    <q-drawer
      v-model="leftDrawerOpen"
      show-if-above
      bordered
      class="bg-primary text-white"
    >
      <q-list>
        <q-item-label
          header
        >
          a Stylesage knownege test app
        </q-item-label>

        <q-separator class="bg-grey-1" />

        <EssentialLink
          v-for="link in essentialLinks"
          :key="link.title"
          v-bind="link"
        />
      </q-list>

    </q-drawer>

    <q-page-container
      class="bg-grey-3"
    >
      <router-view />
    </q-page-container>


  <q-footer class="bg-black-8 text-white">
    <div class="row" style="padding: 20px 20px 10px 20px;">
      <span class="text-body5 text-white text-weight-bold">
        Quasar v{{ $q.version }} © 2020 Workflow, Inc. All rights reserved.
      </span>
      <q-space></q-space>
      <div class="gt-xs">        
        <q-btn icon="fa-brands fa-github" flat dense color="white-8"></q-btn>
        <q-btn icon="fab fa-facebook" flat dense color="white-8"></q-btn>
        <q-btn icon="fab fa-twitter" flat dense color="white-8"></q-btn>
        <q-btn icon="fab fa-instagram" flat dense color="white-8"></q-btn>
      </div>
    </div>
  </q-footer>

  </q-layout>
</template>

<script lang="ts">
import { defineComponent, ref } from 'vue';
import EssentialLink from 'components/EssentialLink.vue';

const linksList = [
  {
    title: 'Dashboard',
    icon: 'dashboard',
    link: '/Dashboard'
  },
  {
    title: 'Section One',
    icon: 'pets',
    link: '/SectionOne'
  },
  {
    title: 'Section Two',
    icon: 'card_giftcard',
    link: '/SectionTwo'
  },
  {
    title: 'Section Tree',
    icon: 'bar_chart',
    link: '/SectionTree'
  },
  {
    title: 'Logout',
    icon: 'logout',
    link: '/'
  },
];

export default defineComponent({
  name: 'MainLayout',

  components: {
    EssentialLink
  },

  setup () {
    const leftDrawerOpen = ref(false)

    return {
      essentialLinks: linksList,
      leftDrawerOpen,
      toggleLeftDrawer () {
        leftDrawerOpen.value = !leftDrawerOpen.value
      }
    }
  }
});
</script>

<style>
#mainsite {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}

.q-item.q-router-link--active, .q-item--active {
  color: red;
}
</style>
