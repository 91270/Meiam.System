import Vue from 'vue'

import Cookies from 'js-cookie'
import Element from 'element-ui'

// global css
import 'normalize.css/normalize.css'
import './assets/styles/element-variables.scss'
import './assets/styles/index.scss'

import './assets/icons' // icon
import './router/index' //

import App from './App'
import store from './store'
import router from './router/routers'
import Pagination from './components/Pagination'
import permission from './components/Permission'
import ContextMenu from './components/ContextMenu'

// 全局方法挂载

// 全局组件挂载
Vue.component('Pagination', Pagination)
Vue.component('ContextMenu', ContextMenu)

Vue.use(permission)
Vue.use(Element, {
  size: Cookies.get('size') || 'mini' // set element-ui default size
})

Vue.directive('preventReClick', {
  inserted(el, binding) {
    el.addEventListener('click', () => {
      if (!el.disabled) {
        el.disabled = true
        setTimeout(() => {
          el.disabled = false
        }, binding.value || 2000)
      }
    })
  }
})

Vue.config.productionTip = false

new Vue({
  el: '#app',
  router,
  store,
  render: h => h(App)
})
