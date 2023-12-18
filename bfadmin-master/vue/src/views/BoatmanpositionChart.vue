<template>
  <div>
    <h2>船员职务分类</h2>
    <div class="chart2" ref="chartColumn"></div>
  </div>

</template>


<script>

import * as echarts from "echarts";

import { getbootmandutymapdata,} from "@/api/url";


export default {
  name: "BoatmanpositionChart",
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
        legend: {
          top: "73%",
          // left:"center",
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
          formatter: "{a} <br/>{b} : {c} ({d}%)",
          // position: 'right'

        },
        // 注意颜色写的位置
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


            name: "船员职务分类",
            type: "pie",
            // 如果radius是百分比则必须加引号
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
    getshuju() {
      getbootmandutymapdata({}).then((res) => {
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
      this.chartColumn.setOption(upoption);
    }

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
</script>
<style scoped>
.chart2 {
  margin-top: -10%;


}
</style>
