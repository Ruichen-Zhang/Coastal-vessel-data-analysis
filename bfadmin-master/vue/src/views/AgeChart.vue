<template>
  <div>

    <div class="chart2" ref="chartColumn"></div>
  </div>

</template>


<script>
import * as echarts from "echarts";

import {getboatmanagelistdata,} from "@/api/url";



export default {
  name: "AgeChart",
  data() {
    return {
      chartColumn: null,
      allData: null,


    }
  },
  methods: {

    initChart() {
      this.chartColumn = echarts.init(this.$refs.chartColumn)
      const option= {
        legend: {
          top: "73%",
          itemWidth: 10,
          itemHeight: 10,
          textStyle: {
            color: "rgba(255,255,255,.5)",
            fontSize: "9"
          }
        },
        tooltip: {
          backgroundColor:'rgba(255,255,255,0.8)',
          trigger: "item",
          formatter: "{a} <br/>{b} : {c} ({d}%)"

        },

        color: [
          "#006cff",
          "#60cda0",
          "#ed8884",
          "#ff9f7f",
          "#0096ff",
          "#9fe6b8",
          "#32c5e9",
          "#1d9dff"
        ],
        series: [
          {
            // 由于数据库mysql筛选过慢，设置初始数据，等两三分钟后回传真实数据再更新
            data: [{"name": "25岁以下", "value": 126}, {"name": "25-30岁", "value": 1143}, {
              "name": "30-35岁",
              "value": 3866
            }, {"name": "35-40岁", "value": 5352}, {"name": "40-45岁", "value": 7468}, {
              "name": "45-50岁",
              "value": 9684
            }, {"name": "50-55岁", "value": 11075}],
            name: "年龄统计",
            type: "pie",

            radius: ["10%", "70%"],
            center: ["50%", "42%"],
            roseType: "radius",

            // 修饰饼形图文字相关的样式 label对象
            label: {
              show:false,
              ellipsis: false,
              fontSize: 10,


            },
            // 修饰引导线样式
            labelLine: {
              // 连接到图形的线长度
              length: 10,
              // 连接到文字的线长度
              length2: 10
            },
            labelLayout: {
              hideOverlap: false
            }
          }
        ]
      };
      this.chartColumn.setOption(option)
    },
    getshuju(){
      getboatmanagelistdata({}).then((res)=>{
        this.alldata=res;
        this.updateChart();
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
    this.initChart();
  }
}
</script>
<style scoped>
.chart2{
  margin-top: -10%;


}
</style>
