import { ui } from "./ui/layaMaxUI"

export default class SceneDyz extends ui.SceneOnedyzUI {
    constructor() {
        super();
        console.log("hello TS");

        let spr:Laya.Sprite = new Laya.Sprite()
        this.addChild(spr);
        spr.graphics.drawRect(100,100,50,50,"#ffa1dd");

        // TA SDK 配置对象
        var config = {
            appId: "af6861d085e14b5c948662e1fcdce6ef",
            serverUrl: "https://receiver-ta-demo.thinkingdata.cn",
        };

        // 创建 TA 实例
        var ta = new ThinkingAnalyticsAPI(config);
        // 初始化
        ta.init();
        // 上报一个简单事件, 事件名为 test_event_laya
        // ta.track("test_event_laya1");

        ta.track({
            eventName: "test_event_laya2",
            onComplete: res => {
                console.log("来了老弟 code: " + res.code + " msg: " + res.msg);
            }
        });


        console.log("getDeviceId: " + ta.getDeviceId());

    
    }
}