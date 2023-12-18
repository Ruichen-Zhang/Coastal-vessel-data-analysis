// import { message } from "ant-design-vue";
// import Cookies from "js-cookie";
// import router from "@/router";
import axios from "axios";



const instance = axios.create({

    baseURL: "http://56.141.180.9:8900",
    // baseURL: "http://localhost:8900",
    // baseURL: "http://56.141.180.150:8900",
// baseURL: "http://56.141.180.150:8900",
//     baseURL: "http://192.168.3.87:8900",
  // baseURL: "http://101.42.44.6:8092",
  // baseURL: "http://172.15.8.6:30034",
  //   baseURL: "localhost:8000",
  timeout: 2000000,
  headers: { "Content-Type": "application/json" },
});

instance.interceptors.request.use(
  (config) => {

    console.info("Send request:", config);
    return config;
  },
  (error) => {
      console.error("Request error:", error);
      // 继续抛出错误，以便后续的错误处理逻辑能够捕获到该错误
      throw error;
  }
);

instance.interceptors.response.use(
  (response) => {
    return response.data;
  },
    (error) => {
        console.error("Request error:", error);
        // 继续抛出错误，以便后续的错误处理逻辑能够捕获到该错误
        throw error;
    }
);



export default function request(item) {
  let { data = {} } = item;
  for (let key in data) {
    if (data[key] == undefined) delete data[key];
  }

  return instance(item);
}
