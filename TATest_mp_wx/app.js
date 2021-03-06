// app.js

// 引入SDK
var ThinkingAnalyticsAPI = require("./thinkingdata.wx.min.js");

// TA SDK 配置对象
var config = {
  appid: "af6861d085e14b5c948662e1fcdce6ef",
  serverUrl: "https://receiver-ta-demo.thinkingdata.cn",
  autoTrack: {
    appLaunch: true, // 自动采集 ta_mp_launch
    appShow: true, // 自动采集 ta_mp_show
    appHide: true, // 自动采集 ta_mp_hide
    pageShow: true, // 自动采集 ta_mp_view
    pageShare: true // 自动采集 ta_mp_share
  }
};

// 创建 TA 实例
var ta = new ThinkingAnalyticsAPI(config);

// 初始化
ta.init();

App({
  onLaunch() {
    // 展示本地存储能力
    const logs = wx.getStorageSync('logs') || []
    logs.unshift(Date.now())
    wx.setStorageSync('logs', logs)

    // 登录
    wx.login({
      success: res => {
        // 发送 res.code 到后台换取 openId, sessionKey, unionId
        
        // 小程序开始
        console.log("hello world 邓亚洲");
      
        // 2.1 设置访客 ID
        // ta.identify("your_own_anonymous_id");
        // 2.2 设置账号 ID
        // ta.login("ABC_123456");
        // 2.3 设置公共事件属性
        // 2.3.1 设置事件公共属性
        // ta.setSuperProperties( { "channel": "渠道"} );
        // ta.setSuperProperties( {channel1: "渠道1"} );
        // 清除属性名为 CHANNEL 的公共属性
        // ta.unsetSuperProperty("channel1");
        // 清除公共事件属性
        // ta.clearSuperProperties();
        // console.log(ta.getSuperProperties());
        // 2.3.2 设置动态公共属性
        // ta.setDynamicSuperProperties( () => {
        //   return {"channel2": "渠道3"};
        // });

        // 上报一条数据
        ta.track("test_event_22");
        // console.log(ta.getDeviceId());
      }
    })
  },
  globalData: {
    userInfo: null
  }
})
