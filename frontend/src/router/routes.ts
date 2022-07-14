import { RouteRecordRaw } from 'vue-router';

const routes: RouteRecordRaw[] = [
  {
    path: '/Dashboard',
    component: () => import('layouts/MainLayout.vue'),
    children: [
      
      { path: '/Dashboard', component: () => import('pages/Dashboard.vue') },
      
    ],
  },

    {
    path: '/SectionOne',
    component: () => import('layouts/MainLayout.vue'),
    children: [
      { path: '/SectionOne', component: () => import('pages/SectionOne.vue') },    
    ],
  },

  {
    path: '/SectionTwo',
    component: () => import('layouts/MainLayout.vue'),
    children: [

      { path: '/SectionTwo', component: () => import('pages/SectionTwo.vue') },
      
    ],
  },

    {
    path: '/SectionTree',
    component: () => import('layouts/MainLayout.vue'),
    children: [

      { path: '/SectionTree', component: () => import('pages/SectionTree.vue') },
      
    ],
  },


  {
    path: '/',
    name: 'login',
    component: () => import('pages/Login-1.vue')
  },

  // Always leave this as last one,
  // but you can also remove it
  {
    path: '/:catchAll(.*)*',
    component: () => import('pages/ErrorNotFound.vue'),
  },
];

export default routes;
