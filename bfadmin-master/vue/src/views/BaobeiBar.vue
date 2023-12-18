<template>
  <div>
    <div class="no">
      <div class="no-hd">
        当年报备：
      </div>
      <div class="no-hd">
      {{this.data1}}
      </div>
      <div class="no-hd">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当日报备：
      </div>
      <div class="no-hd">
        {{this.data2}}
      </div>
    </div>

  </div>

</template>


<script>


import {

  getreportinginfocountyear,
  getreportinginfocountday,

} from "@/api/url";



export default {
  name: "NumbersBar",
  data() {
    return {
      data1: 0,
      data2: 0,

    }
  },
  methods: {


    getshuju(){
      getreportinginfocountyear({}).then((res)=>{
        this.data1=res;
      })
      getreportinginfocountday({}).then((res)=>{
        this.data2=res;
      })

    },


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



.no-hd {
  position: relative;
  float:left;

  font-weight: bold;

  flex: 1;
  text-align: center;
  height: 1rem;


  line-height: 0.9375rem;
  font-size: 0.25rem;
  color: rgba(255, 255, 255, 0.7);
}



</style>
