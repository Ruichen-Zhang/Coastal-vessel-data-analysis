<template>
  <el-dialog  class ="dialog"  v-if="show">
    <div class="topline">
      <div class="topic">本月在逃人员</div>
      <img src="../assets/images/cancel.png" @click="closeModal" class="cancel">
    </div>
    <vxe-table
        show-overflow
        height="450"
        row-id="id"
        :loading="loading1"
        :data="tableData1">
      <vxe-column type="seq" title="序号" width="100"></vxe-column>
      <vxe-column field="name" title="姓名" width="150"></vxe-column>
      <vxe-column field="flagtime" title="标记时间" width="200"></vxe-column>
      <vxe-column field="identityid" title="身份证号" width="280"></vxe-column>
    </vxe-table>

    <vxe-pager
        :loading="loading1"
        :current-page="tablePage1.currentPage"
        :page-size="tablePage1.pageSize"
        :total="tablePage1.totalResult"
        :layouts="['PrevPage', 'JumpNumber', 'NextPage', 'FullJump', 'Sizes', 'Total']"
        @page-change="handlePageChange1">
    </vxe-pager>

  </el-dialog>
</template>

<script>
import {getbootmanfindescapeboatmanmap} from "@/api/url";
import moment from "moment/moment";

export default {
  name: "dialogComponent",
  props: {
    show: {
      type: Boolean,
      required: true,
    },
  },
  data(){
    return{
      loading1: false,
      tableData1: [],
      tablePage1: {
        currentPage: 1,
        pageSize: 8,
        totalResult: 0},
      list : [
        // { identityid: '333333333333333333', name: '一二三', flagtime:'2004-09-05T16:00:00.000+00:00'},
        // { identityid: '333333333333333333', name: '一二三', flagtime:'2004-09-05T16:00:00.000+00:00'},
        // { identityid: '333333333333333333', name: '一二三', flagtime:'2004-09-05T16:00:00.000+00:00'},
      ]
    }
  },

  mounted: function () {
    var that = this;
    that.getshuju();
    setInterval(function () {
      that.getshuju()
    }, 10000000)
    this.findList1();
  },



  methods: {

    closeModal() {
      this.$emit('close');
    },

    getshuju() {
      getbootmanfindescapeboatmanmap({}).then((res) => {
        this.list = res;
      })
    },

    findList1 () {
      this.list.forEach(item => {
        // 解析原始日期字符串
        const originalDate = moment(item.flagtime);

        // 格式化日期为"2004年09月05日"形式
        const formattedDate = originalDate.format('YYYY年MM月DD日');

        // 更新flagtime字段
        item.flagtime = formattedDate;
      });
      this.loading1 = true
      setTimeout(() => {
        this.loading1 = false
        this.tablePage1.totalResult = this.list.length
        this.tableData1 = this.list.slice((this.tablePage1.currentPage - 1) * this.tablePage1.pageSize, this.tablePage1.currentPage * this.tablePage1.pageSize)
      }, 300)
    },
    handlePageChange1 ({ currentPage, pageSize }) {
      this.tablePage1.currentPage = currentPage
      this.tablePage1.pageSize = pageSize
      this.findList1()
    }
  }
}
</script>

<style >

.topline{
  width: 10.3rem;
  margin-top: 0.2rem;
  height: 0.4rem;
}
.topic{
  float:left;
  font-size: 0.3rem;
  width: 5.3rem;
  color: #000000;
  margin-left:2.55rem;
}
.cancel{
  float:left;
  height:0.23rem;
  width: 0.23rem;
  margin-left: 1.7rem;
  margin-top: 0rem;
}

.vxe-table--header-wrapper,.vxe-header--row,.vxe-table--header{

  /*opacity:0;*/

  border: 0;
}
.vxe-table .vxe-table--body-wrapper, .vxe-table .vxe-table--footer-wrapper {
  /*opacity:0;*/
  border: 0;
}

.vxe-table .vxe-body--column, .vxe-table .vxe-footer--column, .vxe-table .vxe-header--column {

  text-align: center;
  /*color: #ffffff;*/
}
</style>
