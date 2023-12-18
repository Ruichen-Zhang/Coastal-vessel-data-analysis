import Vue from 'vue'
import App from './App.vue'

Vue.config.productionTip = false

new Vue({
  render: h => h(App),
}).$mount('#app')

import * as echarts from "echarts";
Vue.prototype.$echarts = echarts;


import VXETable from 'vxe-table'
import 'vxe-table/lib/style.css'
Vue.use(VXETable)
