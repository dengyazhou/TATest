import './js/libs/weapp-adapter'
import './js/libs/symbol'
// import './thinkingdata.mg.wx.min'

console.log("hello 小游戏");

var ThinkingAnalyticsAPI = require("./thinkingdata.mg.wx.min.js");

// TA SDK 配置对象
var config = {
  appId: "a5bf4fc2f8a248a7a02b9a62a58bf1e9",
  serverUrl: "http://ta_test.receiver.thinkingdata.cn",
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


