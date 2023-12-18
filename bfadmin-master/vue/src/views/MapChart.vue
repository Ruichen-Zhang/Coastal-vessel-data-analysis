<template>
  <div>
    <div id="huizhou-map" ref="mapBox" />
  </div>

</template>
<script>
//注意！支队威海地图分区要求与官方地图分区有区别，因此部分分区由人工绘制，若需修改分区可使用geojson.io网站进行绘制，json文件最终需复制放入weihai.js最后函数中，注意括号
import * as echarts from "echarts";
import '@/assets/weihai'
import {getmapgetmapinfodata} from "@/api/url";
export default {
  name: "MapChart",
  data() {
    return {
      chart: null,
      options: {},
      alldata:null,
    }
  },
  methods:{
    getshuju() {
      getmapgetmapinfodata({}).then((res) => {

        this.alldata = res;
        this.updateChart();
      })
    },
    updateChart() {
      const upoption = {
        series: {
          data: this.alldata,
        },
      }
      this.chart.setOption(upoption);

    }
  },
  created() {
    this.options = {
      tooltip: {
        trigger: 'item',
        backgroundColor:'rgba(255,255,255,0.7)',
        textStyle: {
          color: '#000000'
        },
        formatter: function(params) {

          return "地区："+params.data.name+"</br>码头数量："+params.data.portNum+"</br>船舶数量："+params.data.vesselNum+"</br>报备数量："+params.data.reportingInfoNum;
        }
      },

      geo: { // 地图的显示信息
        map: '威海市',
        // roam: true,
        roam: false,

        zoom: 1,
        itemStyle: {
          normal: {
            areaColor: "rgba(43, 196, 243, 0.42)",
            borderColor: "rgba(43, 196, 243, 1)",
            borderWidth: 1,

            textStyle: {
              color: '#fff'
            }
          },
          emphasis: {
            textStyle: {
              color: '#fff',
            },
            areaColor: "#2B91B7",

          }
        }
      },
      series: [
        {
          map: '威海市',
          type: 'map',

          roam: false,
          label: {
            show: true,
            textStyle: {
              color: '#fff',
              fontSize: 12
            }
          },
          data:[
            { "name": "文登", portNum: 0,localVesselNum:'0' ,reportingInfoNum:'0',vesselNum:'0'},
            { "name": "环翠", portNum: 0,localVesselNum:'0' ,reportingInfoNum:'0',vesselNum:'0'},
            { "name": "高区", portNum: 0,localVesselNum:'0' ,reportingInfoNum:'0',vesselNum:'0' },
            { "name": "经区", portNum: 0,localVesselNum:'0' ,reportingInfoNum:'0',vesselNum:'0'},
            { "name": "荣成", portNum: 0,localVesselNum:'0' ,reportingInfoNum:'0',vesselNum:'0'},
            { "name": "乳山", portNum: 0,localVesselNum:'0' ,reportingInfoNum:'0',vesselNum:'0'},
          ],

          itemStyle: {
            normal: {
              areaColor: "rgba(43, 196, 243, 0.42)",
              borderColor: "rgba(43, 196, 243, 1)",
              borderWidth: 1,
            },
            emphasis: {
              textStyle: {
                color: '#fff',
              },
              areaColor: "#2B91B7",
              shadowOffsetX: 0,
              shadowOffsetY: 0,
              shadowBlur: 5,
              borderWidth: 0,
              shadowColor: 'rgba(0, 0, 0, 0.5)'
            }
          },

        }
      ]

    }

  },
  mounted() {
    this.chart = echarts.init(this.$refs.mapBox)
    this.chart.setOption(this.options)
    var that = this;
    that.getshuju();
    setInterval(function(){
      that.getshuju()
    },10000000)
    this.initChart();
  },

}
</script>
<style rel="stylesheet/scss" lang="scss" scoped>
#huizhou-map{
  position: absolute;
  top: -.725rem;
  left: 0;
  z-index: 5;
  height: 10.125rem;
  width: 100%;
  color: #fff;
}
.emphasis {
  color: #fff !important;
}

</style>
