import Vue from 'vue'
import VueRouter from 'vue-router'
import books from '../views/Books.vue'
import sort from '../views/Sort.vue'
import rank from '../views/Rank.vue'

Vue.use(VueRouter)

const routes = [
	{
		path: '/',
		name: 'books',
		component: books
	},
  {
    path: '/rank',
    name: 'rank',
    component: rank
  },
	{
	  path: '/sort',
	  name: 'writer',
	  component: sort
	},
]

const router = new VueRouter({
  routes
})

export default router
