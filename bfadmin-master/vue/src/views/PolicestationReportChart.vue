<template>
  <div>
    <h2>报备总数前十派出所</h2>
    <div class="chart2" ref="chartColumn"></div>
  </div>

</template>


<script>

import * as echarts from "echarts";
import {getreportinginfotop10orgdata} from "@/api/url";

export default {
  name: "PolicestationReportChart",
  components: {},
  data() {
    return {
      chartColumn: null,
      allData: null,

    }
  },
  methods: {

    initChart() {
      this.chartColumn = echarts.init(this.$refs.chartColumn)
      const option = {
        color: ["#11dccc"],
        tooltip: {
          backgroundColor:'rgba(255,255,255,0.8)',
          trigger: "axis",
          axisPointer: {
            // 坐标轴指示器，坐标轴触发有效
            type: "shadow" // 默认为直线，可选为：'line' | 'shadow'
          }
        },
        grid: {
          left: "0%",
          top: "10px",
          right: "0%",
          bottom: "4%",
          containLabel: true
        },
        xAxis: [
          {
            type: "category",

            axisTick: {
              alignWithLabel: true
            },
            axisLabel: {
              formatter: function(value) {
                return value.split('').join('\n')
              },
              textStyle: {
                color: "rgba(255,255,255,.6)",
                fontSize: "12"
              }
            },
            axisLine: {
              show: false
            }
          }
        ],
        yAxis: [
          {
            type: "value",

            axisLabel: {
              textStyle: {
                color: "rgba(255,255,255,.6)",
                fontSize: "12"
              }
            },
            axisLine: {
              lineStyle: {
                color: "rgba(255,255,255,.1)"
                // width: 1,
                // type: "solid"
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
            name: "数量",
            type: "bar",
            barWidth: "35%",
            itemStyle: {
              barBorderRadius: 5
            }
          }
        ]
      };
      this.chartColumn.setOption(option);
      $(window).resize(function() {
        this.chartColumn.resize();
      });
    },
    getshuju() {
      getreportinginfotop10orgdata({}).then((res) => {
        this.alldata = res;
        this.updateChart();
      })
    },
    updateChart() {
      this.names = this.alldata.map(item => item.name);
      this.values = this.alldata.map(item => item.value);
      const upoption = {
        xAxis : {
          data : this.names
        },
        series: {
          data: this.values
        },
      }
      this.chartColumn.setOption(upoption);
    }

  },
  mounted() {
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
