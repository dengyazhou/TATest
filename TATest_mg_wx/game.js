import './js/libs/weapp-adapter'
import './js/libs/symbol'
// import './thinkingdata.mg.wx.min'

console.log("hello 小游戏");

var ThinkingAnalyticsAPI = require("./thinkingdata.mg.wx.min.js");

// TA SDK 配置对象
var config = {
  appId: "af6861d085e14b5c948662e1fcdce6ef",
  serverUrl: "https://receiver-ta-demo.thinkingdata.cn",
  autoTrack: {
    appLaunch: true,
    appShow: true,
    appHide: true,
    pageShow: true,
    pageShare: true
  }
}

var ta = new ThinkingAnalyticsAPI(config);
ta.init();
ta.track("test_vent3_mg");


import Main from './js/main'

new Main()


