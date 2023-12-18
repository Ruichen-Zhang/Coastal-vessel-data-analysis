<template>
  <div class="vue">
    <header>
      <div class="baobei">
<!--        <BaobeiBar/>-->
      </div>
      <h1>威海市公安局涉海数据大屏</h1>
      <div class="showTime">当前时间：2023年3月17-0时54分14秒</div>
    </header>
    <section class="mainbox">
      <div class="column">
        <div class="panel bar">
          <ShipreporttrendChart/>
          <div class="panel-footer"></div>
        </div>
        <div class="panel">
          <KeywarningChart/>

          <div class="panel-footer"></div>
        </div>
        <div class="panel">
          <div class="half"><BoatmanpositionChart/></div>
          <div class="half"><BoatpowerChart/></div>
          <div class="panel-footer"></div>
        </div>
      </div>
      <div class="column">
        <NumbersBar/>
        <div class="map">
          <div class="chart">
            <MapChart/>
          </div>
          <div class="map1"></div>
          <div class="map2"></div>
          <div class="map3"></div>
          <div class="checkbar">
            <CheckChart/>
          </div>
        </div>

      </div>
      <div class="column">
        <div class="panel bar1">
          <PolicestationReportChart/>
          <div class="panel-footer"></div>
        </div>
        <div class="panel line1">
          <h2>渔民和渔船情况</h2>
          <div class="half"><AgeChart/></div>
          <div class="half"><BoatChart/></div>
          <div class="panel-footer"></div>
        </div>
        <div class="panel pie1">
          <RealtimepreparationChart/>
          <div class="panel-footer"></div>
        </div>
      </div>
    </section>
  </div>
</template>

<script>



</script>
<script src="../components/js/china.js"></script>
<script src="../components/js/myMap.js"></script>


<script>

import AgeChart from '@/views/AgeChart.vue'
import ShipreporttrendChart from '@/views/ShipreporttrendChart.vue'
import PolicestationReportChart from '@/views/PolicestationReportChart.vue'
import KeywarningChart from '@/views/KeywarningBar.vue'
import BoatmanpositionChart from '@/views/BoatmanpositionChart.vue'
import BoatpowerChart from '@/views/BoatpowerChart.vue'

import MapChart from '@/views/MapChart.vue'
import RealtimepreparationChart from '@/views/RealtimepreparationBar.vue'
import CheckChart from '@/views/CheckBar.vue'
import BoatChart from '@/views/BoatChart.vue'
import NumbersBar from '@/views/NumbersBar.vue'
import BaobeiBar from '@/views/BaobeiBar.vue'


export default {
  components: {
    AgeChart,
    ShipreporttrendChart,
    PolicestationReportChart,
    KeywarningChart,
    BoatmanpositionChart,
    MapChart,
    RealtimepreparationChart,
    CheckChart,
    BoatChart,
    BoatpowerChart,
    NumbersBar,
    BaobeiBar,
  },
  data() {
    return {

    }
  },
  methods: {
    timeout(){
      var t = null;
      t = setTimeout(time, 1000); //開始运行
      function time() {
        clearTimeout(t); //清除定时器
        let dt;
        dt = new Date();
        var y = dt.getFullYear();
        var mt = dt.getMonth() + 1;
        var day = dt.getDate();
        var h = dt.getHours(); //获取时
        var m = dt.getMinutes(); //获取分
        var s = dt.getSeconds(); //获取秒
        document.querySelector(".showTime").innerHTML =
            "当前时间：" +
            y +
            "年" +
            mt +
            "月" +
            day +
            "-" +
            h +
            "时" +
            m +
            "分" +
            s +
            "秒";
        t = setTimeout(time, 1000); //设定定时器，循环运行
      }
    },

  },
  mounted: function () {

    this.timeout()
  }
}
</script>


<style>

.panel2{
  height:20%;
}





.half{
  width:50%;
  height:100%;
  float:left;
}
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

li {
  list-style: none;
}

@font-face {
  font-family: electronicFont;
  src: url("~@/assets/font/DS-DIGIT.TTF");
}

body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
  padding: 0;
  /*  背景图定位 / 背景图尺寸  cover 完全铺满容器  contain 完整显示在容器内 */
  background: url("~@/assets/images/bg.jpg") no-repeat #000;
  background-size: cover;
  /* 行高是字体1.15倍 */
  line-height: 1.15;
  height: 100%;
}

header {
  position: relative;
  height: 1.25rem;
  background: url('~@/assets/images/head_bg.png') no-repeat top center;
  background-size: 100% 100%;
}

header h1 {
  font-size: 0.475rem;
  color: #fff;
  text-align: center;
  line-height: 1rem;
}

header .showTime {
  position: absolute;
  top: 0;
  right: 0.375rem;
  line-height: 0.9375rem;
  font-size: 0.25rem;
  color: rgba(255, 255, 255, 0.7);
}

.baobei {
  position: absolute;
  top: 0;
  left: 0.375rem;
  line-height: 0.9375rem;
  font-size: 0.25rem;
  color: rgba(255, 255, 255, 0.7);
}
.mainbox {
  width: 100%;
  height: 80%;
  /*padding: 0.125rem 0.125rem 0;*/
  display: flex;
}

.mainbox .column {
  flex: 3;
}

.mainbox .column:nth-child(2) {
  flex: 5;
  margin: 0 0.125rem 0.1875rem;
  overflow: hidden;
}

.panel {
  position: relative;
  height: 3.675rem;
  border: 1px solid rgba(25, 186, 139, 0.17);
  background: rgba(255, 255, 255, 0.04) url('~@/assets/images/line(1).png');
  padding: 0 0.1875rem 0.5rem;
  margin-bottom: 0.1875rem;
}

.panel::before {
  position: absolute;
  top: 0;
  left: 0;
  content: "";
  width: 10px;
  height: 10px;
  border-top: 2px solid #02a6b5;
  border-left: 2px solid #02a6b5;
}

.panel::after {
  position: absolute;
  top: 0;
  right: 0;
  content: "";
  width: 10px;
  height: 10px;
  border-top: 2px solid #02a6b5;
  border-right: 2px solid #02a6b5;
}

.panel .panel-footer {
  position: absolute;
  left: 0;
  bottom: 0;
  width: 100%;
}

.panel .panel-footer::before {
  position: absolute;
  bottom: 0;
  left: 0;
  content: "";
  width: 10px;
  height: 10px;
  border-bottom: 2px solid #02a6b5;
  border-left: 2px solid #02a6b5;
}

.panel .panel-footer::after {
  position: absolute;
  bottom: 0;
  right: 0;
  content: "";
  width: 10px;
  height: 10px;
  border-bottom: 2px solid #02a6b5;
  border-right: 2px solid #02a6b5;
}

.panel h2 {
  height: 0.6rem;
  line-height: 0.6rem;
  text-align: center;
  color: #fff;
  font-size: 0.25rem;
  font-weight: 400;
}

.panel h2 a {
  margin: 0 0.1875rem;
  color: #fff;
  text-decoration: underline;
}

.panel .chart {
  height: 3rem;
}

.panel .chart2 {
  height: 3rem;
}


.checkbar{
  position: absolute;
  top: 55%;
  left: 5%;
  width:90%;
}
.map {
  position: relative;
  height: 10.125rem;
}

.map .chart {
  position: absolute;
  top: -1rem;
  left: 0;
  z-index: 5;
  height: 10.125rem;
  width: 100%;
}

.map .map1,
.map .map2,
.map .map3 {
  position: absolute;
  top: 35%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 6.475rem;
  height: 6.475rem;
  background: url(~@/assets/images/map.png) no-repeat;
  background-size: 100% 100%;
  opacity: 0.3;
}

.map .map2 {
  width: 8.0375rem;
  height: 8.0375rem;
  background-image: url(~@/assets/images/lbx.png);
  opacity: 0.6;
  animation: rotate 15s linear infinite;
  z-index: 2;
}

.map .map3 {
  width: 7.075rem;
  height: 7.075rem;
  background-image: url(~@/assets/images/jt.png);
  animation: rotate1 10s linear infinite;
}

@keyframes rotate {
  from {
    transform: translate(-50%, -50%) rotate(0deg);
  }
  to {
    transform: translate(-50%, -50%) rotate(360deg);
  }
}

@keyframes rotate1 {
  from {
    transform: translate(-50%, -50%) rotate(0deg);
  }
  to {
    transform: translate(-50%, -50%) rotate(-360deg);
  }
}
html {
  font-size: 3.925rem !important;
}



.panel-footer {
  position: absolute;
  left: 0;
  bottom: 0;
  width: 100%;
}

.panel-footer::before {
  position: absolute;
  bottom: 0;
  left: 0;
  content: "";
  width: 10px;
  height: 10px;
  border-bottom: 2px solid #02a6b5;
  border-left: 2px solid #02a6b5;
}

.panel-footer::after {
  position: absolute;
  bottom: 0;
  right: 0;
  content: "";
  width: 10px;
  height: 10px;
  border-bottom: 2px solid #02a6b5;
  border-right: 2px solid #02a6b5;
}

h2 {
  height: 0.6rem;
  line-height: 0.6rem;
  text-align: center;
  color: #fff;
  font-size: 0.25rem;
  font-weight: 400;
}

h2 a {
  margin: 0 0.1875rem;
  color: #fff;
  text-decoration: underline;
}

.chart {
  height: 3rem;
}


















@media screen and (max-width: 1300px) {
  html {
    font-size: 80px !important;
  }
}

@media screen and (min-width :1300px ) and (max-width: 1440px) {
  html {
    font-size: 60px !important;
  }
}
@media screen and (min-width :1440px ) and (max-width: 1910px) {
  html {
    font-size: 70px !important;
  }
}
@media screen and (min-width: 1910px) {
  html {
    font-size: 84px !important;
  }
}

</style>
