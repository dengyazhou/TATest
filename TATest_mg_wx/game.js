import './js/libs/weapp-adapter'
import './js/libs/symbol'
// import './thinkingdata.mg.wx.min'

console.log("hello 小游戏");

var ThinkingAnalyticsAPI = require("./thinkingdata.mg.wx.min.js");

// TA SDK 配置对象
var config = {
  appId: "af6861d085e14b5c948662e1fcdce6ef",
  serverUrl: "https://receiver-ta-demo.thinkingdata.cn",
  // maxRetries: 10,
  autoTrack: {
    appLaunch: true,
    appShow: true,
    appHide: true,
    pageShow: true,
    pageShare: true
  }
}

function complete(code, msg) {
  console.log("===>>> code: " + code);
  console.log("===>>> msg: " + msg);
}

var ta = new ThinkingAnalyticsAPI(config);
ta.init();
ta.track("test_vent3_mg");
// ta.track({eventName:"test_vent4_mg",onComplete:res=>{
//   console.log("onCompelte");
// }});
ta.track({
  eventName: "test_vent4_mg", // 必填
  // properties: { testkey: 123 }, // 可选
  // time: new Date(), // 可选
  onComplete: res => {
    console.log("123======>>>>>>>>>>>123");
  } // 必填
});


import Main from './js/main'

new Main()


