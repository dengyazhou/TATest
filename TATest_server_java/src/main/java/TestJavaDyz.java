import cn.thinkingdata.tga.javasdk.ThinkingDataAnalytics;
import com.alibaba.fastjson.JSONObject;
import org.apache.http.util.TextUtils;

import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

public class TestJavaDyz {



    public static void main(String[] args) {
        System.out.print("hello Java Server");
        String SERVER_URI = "https://receiver-ta-demo.thinkingdata.cn";
        String APP_ID = "af6861d085e14b5c948662e1fcdce6ef";



        //1、LoggerConsumer

        //2、BatchConsumer
        ThinkingDataAnalytics.BatchConsumer.Config batchConfig = new ThinkingDataAnalytics.BatchConsumer.Config();
        batchConfig.setBatchSize(2);

        try {
            ThinkingDataAnalytics ta = new ThinkingDataAnalytics(new ThinkingDataAnalytics.BatchConsumer(SERVER_URI,APP_ID,batchConfig));

            String distinct_id = "ABCDEFG123456789";
            String account_id = "TA_10003";
            Map<String, Object> properties = new HashMap<String,Object>();
            properties.put("#ip","223.166.7.15");
            properties.put("age",20);

//            ta.track(account_id,distinct_id,"javaTest124", properties);
            ta.user_set(account_id,distinct_id,properties);
            ta.flush();

        } catch (URISyntaxException e) {
            System.out.println("except:" + e);
        } catch (Exception e) {
            System.out.println("except:" + e);
        }

        //3、DebugConsumer

    }

}
