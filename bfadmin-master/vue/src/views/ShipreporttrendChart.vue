<template>
  <div class="all">
    <h2>船舶出入港报备情况</h2>
    <div class="chart2" ref="chartColumn"></div>
  </div>

</template>


<script>

import * as echarts from "echarts";
import {getreportinginfocountinbymonthdata, getreportinginfocountoutbymonthdata} from "@/api/url";


export default {
  name: "ShipreporttrendChart",
  data() {
    return {
      chartColumn: null,
      data1:null,
      data2:null,

    }
  },
  methods: {

    initChart() {
      this.chartColumn = echarts.init(this.$refs.chartColumn)
      const option={
        tooltip: {
          backgroundColor:'rgba(255,255,255,0.8)',
          trigger: "axis",
              axisPointer: {
            lineStyle: {
              color: "#dddc6b"
            }
          }
        },
        legend: {
          top: "0%",
              textStyle: {
            color: "rgba(255,255,255,.5)",
                fontSize: "12"
          }
        },
        grid: {
          left: "10",
              top: "30",
              right: "10",
              bottom: "10",
              containLabel: true
        },

        xAxis: [
          {
            type: "category",
            boundaryGap: false,
            axisLabel: {
              textStyle: {
                color: "rgba(255,255,255,.6)",
                fontSize: 12
              }
            },
            axisLine: {
              lineStyle: {
                color: "rgba(255,255,255,.2)"
              }
            },

            data: [
              "01",
              "02",
              "03",
              "04",
              "05",
              "06",
              "07",
              "08",
              "09",
              "10",
              "11",
              "12"
            ]
          },
          {
            axisPointer: {show: false},
            axisLine: {show: false},
            position: "bottom",
            offset: 20
          }
        ],

            yAxis: [
          {
            type: "value",
            axisTick: {show: false},
            axisLine: {
              lineStyle: {
                color: "rgba(255,255,255,.1)"
              }
            },
            axisLabel: {
              textStyle: {
                color: "rgba(255,255,255,.6)",
                fontSize: 12
              }
            },

            splitLine: {
              lineStyle: {
                color: "rgba(255,255,255,.1)"
              }
            }
          }
        ],
            series: [
          {
            name: "出港量",
            type: "line",
            smooth: true,
            symbol: "circle",
            symbolSize: 5,
            showSymbol: false,
            lineStyle: {
              normal: {
                color: "#0184d5",
                width: 2
              }
            },
            areaStyle: {
              normal: {
                color: new echarts.graphic.LinearGradient(
                    0,
                    0,
                    0,
                    1,
                    [
                      {
                        offset: 0,
                        color: "rgba(1, 132, 213, 0.4)"
                      },
                      {
                        offset: 0.8,
                        color: "rgba(1, 132, 213, 0.1)"
                      }
                    ],
                    false
                ),
                shadowColor: "rgba(0, 0, 0, 0.1)"
              }
            },
            itemStyle: {
              normal: {
                color: "#0184d5",
                borderColor: "rgba(221, 220, 107, .1)",
                borderWidth: 12
              }
            },

          },
          {
            name: "入港量",
            type: "line",
            smooth: true,
            symbol: "circle",
            symbolSize: 5,
            showSymbol: false,
            lineStyle: {
              normal: {
                color: "#00d887",
                width: 2
              }
            },
            areaStyle: {
              normal: {
                color: new echarts.graphic.LinearGradient(
                    0,
                    0,
                    0,
                    1,
                    [
                      {
                        offset: 0,
                        color: "rgba(0, 216, 135, 0.4)"
                      },
                      {
                        offset: 0.8,
                        color: "rgba(0, 216, 135, 0.1)"
                      }
                    ],
                    false
                ),
                shadowColor: "rgba(0, 0, 0, 0.1)"
              }
            },
            itemStyle: {
              normal: {
                color: "#00d887",
                borderColor: "rgba(221, 220, 107, .1)",
                borderWidth: 12
              }
            },

          }
        ]
      };
      this.chartColumn.setOption(option)
    },
    getshuju(){
      getreportinginfocountinbymonthdata({}).then((res)=>{
        this.data2=res;
        this.updateChart();
      })
      getreportinginfocountoutbymonthdata({}).then((res)=>{
        this.data1=res;
        this.updateChart();
      })
    },
    updateChart(){
      const upoption={
        series: [{
          data: this.data1,
        },{
          data: this.data2,
        }]
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
    this.initChart();
  }
}
</script>
<style scoped>


</style>
