package com.example.tatest_android;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.Date;
import java.util.TimeZone;

import cn.thinkingdata.android.TDConfig;
import cn.thinkingdata.android.ThinkingAnalyticsSDK;

public class MainActivity extends AppCompatActivity {

    static String TA_APP_ID = "a5bf4fc2f8a248a7a02b9a62a58bf1e9";
    static String SERVER_URL = "http://ta_test.receiver.thinkingdata.cn";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // 1.3 初始化 SDK
        // 在主线程中初始化 SDK
//        ThinkingAnalyticsSDK instance = ThinkingAnalyticsSDK.sharedInstance(this,TA_APP_ID,SERVER_URL);
        // 后续可以通过如下两种方法使用 SDK 上报事件
//        instance.track("some_event_V1");
//        ThinkingAnalyticsSDK.sharedInstance(this, TA_APP_ID).track("some_event");

        // 获取 TDConfig 实例
//        TDConfig config = TDConfig.getInstance(this,TA_APP_ID,SERVER_URL);
        // 获取 TDConfig 实例, 传入NAME
//        TDConfig config = TDConfig.getInstance(this, TA_APP_ID, SERVER_URL, "实例1");
        // 初始化 SDK
//        ThinkingAnalyticsSDK instance = ThinkingAnalyticsSDK.sharedInstance(config);
//        instance.track("some_event_V3");


        // 1.4 开启与 H5 页面的打通（可选）
//        ThinkingAnalyticsSDK instance = ThinkingAnalyticsSDK.sharedInstance(this, TA_APP_ID, SERVER_URL);
        // 打通 H5 页面数据
//        instance.setJsBridge(webView);
//        ThinkingAnalyticsSDK.sharedInstance(this, TA_APP_ID);


        // 二、设置用户 ID
//        ThinkingAnalyticsSDK instance = ThinkingAnalyticsSDK.sharedInstance(this, TA_APP_ID, SERVER_URL);
        // 2.1 设置访客 ID（可选）
//        instance.identify("123ABCabc3");
        //返回访客 ID，多实例的情况下，返回的是调用实例的访客 ID
//        String distincId = instance.getDistinctId();
        // 2.2 设置账号 ID
//        instance.login("1234567@thinkinggame.cn");
        // 2.3 清除账号 ID
//        instance.logout();


        // 三、发送事件
        ThinkingAnalyticsSDK instance = ThinkingAnalyticsSDK.sharedInstance(this, TA_APP_ID, SERVER_URL);
        // 3.1 发送事件
        // 商店购买事件
//        try {
//            JSONObject properties = new JSONObject();
//            properties.put("product_name", "商品名");
//            properties.put("product_num", 1);
//            properties.put("Cost", 100);
//            properties.put("isFirstBuy", true);
////            instance.track("product_buy", properties);
//            instance.track("product_buy", properties, new Date(), TimeZone.getTimeZone());
//        } catch (JSONException e) {
//            e.printStackTrace();
//        }
        // 3.2 设置公共事件属性
        // 设置公共事件属性
        try {
            JSONObject superProperties = new JSONObject();
            superProperties.put("vip_level", 2);
            superProperties.put("Channel", "A1");
            instance.setSuperProperties(superProperties);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        // 使用track上传事件，此时事件中会带有公共事件属性
        try {
            JSONObject properties = new JSONObject();
            properties.put("product_id","A1234");
            instance.track("product_pay", properties);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        // 清除一条公共事件属性，比如将之前设置 "Channel" 属性清除，之后的数据将不会该属性
//        instance.unsetSuperProperty("Channel");
        // 清除所有公共事件属性
//        instance.clearSuperProperties();
        // 获取所有公共事件属性
        JSONObject object = instance.getSuperProperties();
        System.out.println(object);
        System.out.println("你好世界！！！！");



    }
}