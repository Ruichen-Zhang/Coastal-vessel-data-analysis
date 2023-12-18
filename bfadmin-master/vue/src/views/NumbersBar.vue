<template>
  <div>
    <div class="no">
      <div class="no-hd">
        <ul>
          <li>{{this.data1}}</li>
          <li>{{this.data2}}</li>
          <li>{{this.data3}}</li>
          <li>{{this.data4}}</li>
        </ul>
      </div>
      <div class="no-bd">
        <ul>
          <li>渔民总数</li>
          <li>本地船舶</li>
          <li>外地船舶</li>
          <li>远洋船舶</li>
        </ul>
      </div>
    </div>
    <div class="no2">
      <div class="no-hd">
        <ul>
          <li>{{this.data21}}</li>
          <li>{{this.data22}}</li>
          <li>{{this.data23}}</li>
          <li>{{this.data24}}</li>
          <li>{{this.data25}}</li>
          <li>{{this.data26}}</li>
          <li>{{this.data27}}</li>
          <li>{{this.data28}}</li>
        </ul>
      </div>
      <div class="no-bd">
        <ul>
          <li>港口码头</li>
          <li>码头调度</li>
          <li>油水补给</li>
          <li>行业场所</li>
          <li>船舶代理</li>
          <li>涉海中介</li>
          <li>海上旅游</li>
          <li>造船企业</li>
        </ul>
      </div>
    </div>
  </div>

</template>


<script>


import {

  getboatmancountalldata,
  getlocalvesselcountlocalvesseldata,
  getlocalvesselcountoceanvesseldata,
  getnonlocalvesselcountalldata, getotherdatafunprojectdata, getotherdatalabouragencydata, getotherdataportdispatchdata,
  getotherdataportstoredata,
  getotherdataportsupplydata, getotherdatashipindustrydata,
  getotherdatavesselagencydata,
  getportcountalldata,
} from "@/api/url";



export default {
  name: "NumbersBar",
  data() {
    return {
      data1: 0,
      data2: 0,
      data3: 0,
      data4: 0,
      data21: 0,
      data22: 0,
      data23: 0,
      data24: 0,
      data25: 0,
      data26: 0,
      data27: 0,
      data28: 0,


    }
  },
  methods: {


    getshuju(){
      getboatmancountalldata({}).then((res)=>{
        this.data1=res;
      })
      getlocalvesselcountlocalvesseldata({}).then((res)=>{
        this.data2=res;
      })
      getnonlocalvesselcountalldata({}).then((res)=>{
        this.data3=res;
      })
      getlocalvesselcountoceanvesseldata({}).then((res)=>{
        this.data4=res;
      })



      getportcountalldata({}).then((res)=>{
        this.data21=res;
      })
      getotherdataportdispatchdata({}).then((res)=>{
        this.data22=res;
      })
      getotherdataportsupplydata({}).then((res)=>{
        this.data23=res;
      })
      getotherdataportstoredata({}).then((res)=>{
        this.data24=res;
      })
      getotherdatavesselagencydata({}).then((res)=>{
        this.data25=res;
      })
      getotherdatalabouragencydata({}).then((res)=>{
        this.data26=res;
      })
      getotherdatafunprojectdata({}).then((res)=>{
        this.data27=res;
      })
      getotherdatashipindustrydata({}).then((res)=>{
        this.data28=res;
      })
    },
    updateChart(){
      const upoption={
        series: {
          data: this.alldata,
        },
      }
      this.chartColumn.setOption(upoption);
    }

  },
  mounted: function () {
    var that = this;
    that.getshuju();
    setInterval(function(){
      that.getshuju()
    },10000000)
  }
}
</script>
<style scoped>

.no {
  background: rgba(101, 132, 226, 0.1);
  padding: 0.1875rem;
}

.no .no-hd {
  position: relative;
  border: 1px solid rgba(25, 186, 139, 0.17);
}

.no .no-hd::before {
  content: "";
  position: absolute;
  width: 30px;
  height: 10px;
  border-top: 2px solid #02a6b5;
  border-left: 2px solid #02a6b5;
  top: 0;
  left: 0;
}

.no .no-hd::after {
  content: "";
  position: absolute;
  width: 30px;
  height: 10px;
  border-bottom: 2px solid #02a6b5;
  border-right: 2px solid #02a6b5;
  right: 0;
  bottom: 0;
}

.no .no-hd ul {
  display: flex;
}

.no .no-hd ul li {
  position: relative;
  flex: 1;
  text-align: center;
  height: 1rem;
  line-height: 1rem;
  font-size: 0.575rem;
  color: #ffeb7b;
  padding: 0.05rem 0;
  font-family: electronicFont;
  font-weight: bold;
}

.no .no-hd ul li:first-child::after {
  content: "";
  position: absolute;
  height: 50%;
  width: 1px;
  background: rgba(255, 255, 255, 0.2);
  right: 0;
  top: 25%;
}
.no .no-hd ul li:nth-child(2)::after {
  content: "";
  position: absolute;
  height: 50%;
  width: 1px;
  background: rgba(255, 255, 255, 0.2);
  right: 0;
  top: 25%;
}
.no .no-hd ul li:nth-child(3)::after {
  content: "";
  position: absolute;
  height: 50%;
  width: 1px;
  background: rgba(255, 255, 255, 0.2);
  right: 0;
  top: 25%;
}

.no .no-bd ul {
  display: flex;
}

.no .no-bd ul li {
  flex: 1;
  height: 0.5rem;
  line-height: 0.5rem;
  text-align: center;
  font-size: 0.225rem;
  color: rgba(255, 255, 255, 0.7);
  padding-top: 0.125rem;
}





.no2 {

  padding: 0.1375rem;
}

.no2 .no-hd {
  position: relative;
  border: 1px solid rgba(25, 186, 139, 0.17);
}

.no2 .no-hd::before {
  content: "";
  position: absolute;
  width: 30px;
  height: 10px;
  border-top: 2px solid #02a6b5;
  border-left: 2px solid #02a6b5;
  top: 0;
  left: 0;
}

.no2 .no-hd::after {
  content: "";
  position: absolute;
  width: 30px;
  height: 10px;
  border-bottom: 2px solid #02a6b5;
  border-right: 2px solid #02a6b5;
  right: 0;
  bottom: 0;
}

.no2 .no-hd ul {
  display: flex;
}

.no2 .no-hd ul li {
  position: relative;
  flex: 1;
  text-align: center;
  height: 0.7rem;
  line-height: 0.6rem;
  font-size: 0.405rem;
  color: #7bfbff;
  padding: 0.05rem 0;
  font-family: electronicFont;
  font-weight: bold;
}

.no2 .no-hd ul li:first-child::after {
  content: "";
  position: absolute;
  height: 50%;
  width: 1px;
  background: rgba(255, 255, 255, 0.2);
  right: 0;
  top: 25%;
}
.no2 .no-hd ul li:nth-child(2)::after {
  content: "";
  position: absolute;
  height: 50%;
  width: 1px;
  background: rgba(255, 255, 255, 0.2);
  right: 0;
  top: 25%;
}
.no2 .no-hd ul li:nth-child(3)::after {
  content: "";
  position: absolute;
  height: 50%;
  width: 1px;
  background: rgba(255, 255, 255, 0.2);
  right: 0;
  top: 25%;
}

.no2 .no-hd ul li:nth-child(4)::after {
  content: "";
  position: absolute;
  height: 50%;
  width: 1px;
  background: rgba(255, 255, 255, 0.2);
  right: 0;
  top: 25%;
}
.no2 .no-hd ul li:nth-child(5)::after {
  content: "";
  position: absolute;
  height: 50%;
  width: 1px;
  background: rgba(255, 255, 255, 0.2);
  right: 0;
  top: 25%;
}
.no2 .no-hd ul li:nth-child(6)::after {
  content: "";
  position: absolute;
  height: 50%;
  width: 1px;
  background: rgba(255, 255, 255, 0.2);
  right: 0;
  top: 25%;
}
.no2 .no-hd ul li:nth-child(7)::after {
  content: "";
  position: absolute;
  height: 50%;
  width: 1px;
  background: rgba(255, 255, 255, 0.2);
  right: 0;
  top: 25%;
}
.no2 .no-bd ul {
  display: flex;
}

.no2 .no-bd ul li {
  flex: 1;
  height: 0.5rem;
  line-height: 0.5rem;
  text-align: center;
  font-size: 0.195rem;
  color: rgba(255, 255, 255, 0.7);
  padding-top: 0.045rem;
}


</style>
