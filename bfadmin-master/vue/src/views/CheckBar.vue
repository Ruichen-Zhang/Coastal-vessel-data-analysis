<template>
  <div>
    <h2>各地待审核</h2>
    <ul>
      <li v-for="(item, index) in listData" :key="index" class="li1"><img src="~@/assets/images/cc.png">{{item.value}}</li>

    </ul>
    <ul>
      <li v-for="(item, index) in listData" :key="index" class="li2">{{item.name}}</li>

    </ul>

  </div>

</template>
<script>


import {getapprmapdata} from "@/api/url";


export default {
  name: "CheckChart",
  data() {
    return {
      listData:[],
    }
  },
  methods: {

    getshuju(){
      getapprmapdata({}).then((res)=>{
        this.listData=[]
        for(let i=0;i<res.length;i++){
          let item = {
            name:res[i].name,
            value:res[i].value.toString().padStart(2, "0"),
          }
          this.listData.push(item)
        }
      })
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
<style rel="stylesheet/scss" lang="scss" scoped>
img{
  height:0.9rem;
  width:0.9rem;
  position:absolute;
  margin-left:-0.2rem;
  margin-top:15%;
}
h2{
  color:#fff;
  font-size: 1.1vw;
  width:100%;
  line-height: 1rem;
}
ul{
  float:left;
  width:100%;
}
.li1 {
  position: relative;
  flex: 1;
  text-align: center;
  height: 1rem;
  line-height: 1rem;
  font-size: 0.475rem;
  color: #ffeb7b;
  padding: 0rem 0;
  font-family: electronicFont;
  font-weight: bold;
  float:left;
  width:6%;
  margin-left:5.46%;
  margin-right:5%;
  margin-top: 3%;
}
.li2 {
  position: relative;
  flex: 1;
  text-align: center;
  height: 0.5rem;
  line-height: 0.5rem;
  font-size: 1.1vw;
  color: #fff;

  float:left;
  width:6%;
  margin-left:5.46%;
  margin-right:5%;
}
</style>
