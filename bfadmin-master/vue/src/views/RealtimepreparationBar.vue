<template>
  <div>
    <!-- 无缝滚动效果 -->
    <h2>实时报备情况</h2>
    <div class="marquee-wrap">
      <ul class="marquee-list" :class="{'animate-up': animateUp}">
        <li class="darkRoom">
          <div class="two">时间</div>
          <div class="two">船名</div>
          <div class="two">状态</div>
          <div class="two">港口</div>
        </li>
        <li v-for="(item, index) in listData" :key="index" :class="{'lightRoom': item.id === 1, 'darkRoom': item.id === 0}">
          <div class="one">{{ item.time }}</div>
          <div class="one">{{ item.name }}</div>
          <div class="one">{{ item.type }}</div>
          <div class="one">{{ item.place }}</div></li>
      </ul>
    </div>
  </div>
</template>

<script>
import {getreportinginforecent12data} from "@/api/url";

export default {
  name: "RealtimepreparationChart",
  data() {
    return {
      animateUp: false,
      boots:[],
      listData:  [],
      timer: null,
      count:0,
      lasttime:'2001-09-05T16:00:00.000+00:00',
      control:false,
      place:null,
      name:null,
      id:0,
    }
  },
  mounted() {
    this.scrollAnimate();
    this.timer = setInterval(this.scrollAnimate, 100000);

  },
  methods: {
    async scrollAnimate() {
      const res = await getreportinginforecent12data({});
      // const res = [{"insert_time_":"2004-09-05T16:00:00.000+00:00","method":"出港","from_port_":"111","vessel_name_":"111"},
      //   {"insert_time_":"2004-09-05T16:00:00.000+00:00","method":"出港","from_port_":"111","vessel_name_":"222"},
      //   {"insert_time_":"2004-09-05T16:00:00.000+00:00","method":"出港","from_port_":"111","vessel_name_":"333"},
      //   {"insert_time_":"2004-09-05T16:00:00.000+00:00","method":"出港","from_port_":"111","vessel_name_":"[\"444\",\"444\"]"},
      //   {"insert_time_":"2004-09-05T16:00:00.000+00:00","method":"出港","from_port_":"111","vessel_name_":"555"},
      //   {"insert_time_":"2004-09-05T16:00:00.000+00:00","method":"出港","from_port_":"111","vessel_name_":"666"},
      //   {"insert_time_":"2004-09-05T16:00:00.000+00:00","method":"出港","from_port_":"111","vessel_name_":"777"},
      //   {"insert_time_":"2004-09-05T16:00:00.000+00:00","method":"出港","from_port_":"111","vessel_name_":"888"},];


      //注意，此处为显示数量
      for (let i = 6; i >= 0; i--) {
        const date = new Date(res[i].insert_time_);

        if (new Date(this.lasttime) < date) {
          if (res[i].method_ === "出港") {
            this.place = res[i].from_port_;
          } else {
            this.place = res[i].to_port_;
          }

          this.name = res[i].vessel_name_;

          if (this.name.includes('[') && this.name.includes(']')) {
            // 如果文本包含方括号，则解析其中的内容
            try {
              const arr = JSON.parse(this.name);
              if (Array.isArray(arr) && arr.length > 0) {
                // 如果解析结果是一个非空数组，则返回第一个元素
                this.name= arr[0];
              }
            } catch (error) {
              console.error('解析错误：', error);
            }
          }


          if(this.id === 1){
            this.id = 0
          }
          else{
            this.id = 1
          }
          let boot = {
            time: date.getDate().toString().padStart(2, "0")+"日"+date.getHours().toString().padStart(2, "0")+"时" ,
            type: res[i].method_,
            place: this.place,
            name: this.name,
            id:this.id,
          };

          //注意，此处为滚动间隔时间，若改此处，上方mounted()和下方css的.animate-up也需要修改时间，
          await new Promise((resolve) => setTimeout(resolve, 1500));
          this.animateUp = true;
          this.listData.unshift(boot);

          //注意，此处为显示数量+1，方便实现滚动效果
          if (this.listData.length > 7) {
            this.listData.pop();
          }
          this.animateUp = false;
        }
      }
      this.lasttime = res[0].insert_time_;
    }

  },
  destroyed() {
    clearInterval(this.timer)
  }
};

</script>

<style scoped>

/*注意，此处为显示框大小，和下方.lightRoom .darkRoom  height相关*/
.marquee-wrap {
  width: 100%;
  height: 2.99rem;
  border-radius: 20px;

  margin: 0 auto;
  overflow: hidden;
}

/*注意，此处为滚动，和下方.lightRoom .darkRoom  height相等*/
.animate-up {
  transition: all 1s ease-in-out;
  transform: translateY(0.37rem);
}
.one {
  width: 25%;
  float: left;
  font-size:0.185rem;
}
.two {
  width: 25%;
  float: left;
  font-size: 0.215rem;
  font-weight: 700;
}
.lightRoom{
  width: 100%;
  height: 100%;
  text-overflow: ellipsis;
  overflow: hidden;
  white-space: nowrap;
  /*padding: 0 20px;*/
  list-style: none;
  line-height: 0.37rem;
  text-align: center;
  color: #fff;
  font-size: .9vw;
  font-weight: 400;
  background-color: #133d67;
}
.darkRoom{
  width: 100%;
  height: 100%;
  text-overflow: ellipsis;
  overflow: hidden;
  white-space: nowrap;
  /*padding: 0 20px;*/
  list-style: none;
  line-height: 0.37rem;
  text-align: center;
  color: #fff;
  font-size: .9vw;
  font-weight: 400;

}
</style>
