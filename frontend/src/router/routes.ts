import { RouteRecordRaw } from 'vue-router';

const routes: RouteRecordRaw[] = [
  {
    path: '/Dashboard',
    component: () => import('layouts/MainLayout.vue'),
    children: [
      
      { path: '/Dashboard', name: 'dashboard', component: () => import('pages/Dashboard.vue') },
      
    ],
  },

    {
    path: '/SectionOne',
    component: () => import('layouts/MainLayout.vue'),
    children: [
      { path: '/SectionOne', name: 'sectionone', component: () => import('pages/SectionOne.vue') },    
    ],
  },

  {
    path: '/SectionTwo',
    component: () => import('layouts/MainLayout.vue'),
    children: [

      { path: '/SectionTwo', name: 'sectiontwo', component: () => import('pages/SectionTwo.vue') },
      
    ],
  },

    {
    path: '/SectionTree',
    component: () => import('layouts/MainLayout.vue'),
    children: [

      { path: '/SectionTree', name: 'sectiontree', component: () => import('pages/SectionTree.vue') },
      
    ],
  },


  {
    path: '/',
    name: 'login',
    component: () => import('pages/LoginPage.vue')
  },

  // Always leave this as last one,
  // but you can also remove it
  {
    path: '/:catchAll(.*)*',
    component: () => import('pages/ErrorNotFound.vue'),
  },
];

export default routes;
