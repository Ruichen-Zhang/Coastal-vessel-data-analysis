<template>
  <div>
    <h2>重点人员船舶预警</h2>


    <div class="no-hd1">
      <ul>
        <li @click="showModal = true">{{ this.data1 }}</li>
        <li @click="showModal2 = true">{{ this.data2 }}</li>
        <li @click="showModal3 = true">{{ this.data3 }}</li>

      </ul>
    </div>
    <div >
      <zd-dialog-component :show="showModal" @close="showModal = false" class="zdry"></zd-dialog-component>
      <xd-dialog-component :show="showModal2" @close="showModal2 = false" class="zdry"></xd-dialog-component>
      <zt-dialog-component :show="showModal3" @close="showModal3 = false" class="zdry"></zt-dialog-component>
    </div>
    <div class="no-bd">
      <ul>

        <li @click="showModal = true">本月重点人员</li>
        <li @click="showModal2 = true">本月吸毒人员</li>
        <li @click="showModal3 = true">本月在逃人员</li>
      </ul>
    </div>
    <!--    <h3>重点船舶情况</h3>-->

    <div class="no-hd">
      <ul>
        <!--/*        <li><img style="height:0.6rem;width: 0.6rem ;margin-top: 0.4rem" src="~@/assets/images/boat.png"></li>*/-->
        <li>{{ this.data4 }}</li>
        <li>{{ this.data5 }}</li>
        <li>{{ this.data6 }}</li>

      </ul>
    </div>
    <div class="no-bd">
      <ul>

        <li>外地人经营本地船舶</li>
        <li>本地人经营外地船舶</li>
        <li>超过六个月未报备</li>
      </ul>
    </div>

  </div>

</template>


<script>


import {
  getbootmancountcountescapeddata,
  getbootmancountdrugdata,
  getbootmancountkeydata,
  getlocalvesselownercountbyidcarddata,
  getnonlocalvesselownercountbynonidcarddata, getvesselnoreport6monthcountdata

} from "@/api/url";

import zdDialogComponent from "@/components/zddialogComponent.vue";
import xdDialogComponent from "@/components/xddialogComponent.vue";
import ztDialogComponent from "@/components/ztdialogComponent.vue";

export default {
  name: "KeywarningChart",
  components: {zdDialogComponent,xdDialogComponent,ztDialogComponent},
  data() {
    return {
      data1: 0,
      data2: 0,
      data3: 0,
      data4: 0,
      data5: 0,
      data6: 0,
      showModal: false,
      showModal2: false,
      showModal3: false,
    }
  },
  methods: {



    getshuju() {
      getbootmancountkeydata({}).then((res) => {
        this.data1 = res;
      })
      getbootmancountdrugdata({}).then((res) => {
        this.data2 = res;
      })
      getbootmancountcountescapeddata({}).then((res) => {
        this.data3 = res;
      })
      getlocalvesselownercountbyidcarddata({}).then((res) => {
        this.data4 = res;
      })
      getnonlocalvesselownercountbynonidcarddata({}).then((res) => {
        this.data5 = res;
      })
      getvesselnoreport6monthcountdata({}).then((res) => {
        this.data6 = res;
      })
    },


  },
  mounted: function () {
    var that = this;
    that.getshuju();
    setInterval(function () {
      that.getshuju()
    }, 10000000)
    this.initChart();
  }
}
</script>/
<style scoped>
.zdry{
  position:absolute;
  /*background-color: white;*/
  height:8rem;
  width:10rem;
  margin-top:-5rem;
  z-index: 10;
  margin-left: 2.3rem;
  background:white;
  /*background: url('~@/assets/images/back.jpg')  top center;*/
  background-size: 100% 100%;

}
.left {
  flex: 3;
}

.no-hd {
  margin-top: 0%;
  margin-bottom: 0%;


}


.no-hd ul {
  display: flex;
}

.no-hd1 ul {
  display: flex;
}

.no-hd ul li {
  position: relative;
  flex: 1;
  text-align: center;
  height: 1rem;
  line-height: 1rem;
  font-size: 0.575rem;
  color: rgba(43, 196, 243, 1);
  padding: 0.05rem 0;
  font-family: electronicFont;
  font-weight: bold;
}

.no-hd1 ul li {
  position: relative;
  flex: 1;
  text-align: center;
  height: 1rem;
  line-height: 1rem;
  font-size: 0.575rem;
  color: rgb(243, 113, 43);
  padding: 0.05rem 0;
  font-family: electronicFont;
  font-weight: bold;
}

.no-hd ul li:first-child::after {
  content: "";
  position: absolute;
  height: 50%;
  width: 1px;
  background: rgba(255, 255, 255, 0.2);
  right: 0;
  top: 25%;
}

.no-hd ul li:nth-child(2)::after {
  content: "";
  position: absolute;
  height: 50%;
  width: 1px;
  background: rgba(255, 255, 255, 0.2);
  right: 0;
  top: 25%;
}


.no-bd ul {
  display: flex;
}

.no-bd ul li {
  flex: 1;
  height: 0.5rem;
  line-height: 0.3rem;
  text-align: center;
  font-size: 0.175rem;
  color: #fff;
  padding-top: 0.025rem;
}

/*h2{*/
/*  font-size: 0.235rem;*/
/*  color: #fff;*/
/*  margin-bottom: -6%;*/
/*}*/
</style>
