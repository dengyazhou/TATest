//
//  TATestCPPMain.cpp
//  TATest_macOS_cpp
//
//  Created by yazhoudeng on 2022/8/5.
//

#include "TATestCPPMain.hpp"

using namespace std;

const string appid = "af6861d085e14b5c948662e1fcdce6ef";
const string server_url = "https://receiver-ta-demo.thinkingdata.cn";



void tatestcpp::TATestCPPMain::testone() {
    printf("====>>>>:testone");
}

void tatestcpp::TATestCPPMain::testTA() {
    
    thinkingdata::ThinkingAnalyticsAPI::Init(server_url, appid);
    
    thinkingdata::ThinkingAnalyticsAPI::EnableLog(true);//打印日志
    
    thinkingdata::PropertiesNode event_properties;
    event_properties.SetString("name", "C++sdk");
    event_properties.SetNumber("test_number_int", 3);
    event_properties.SetNumber("test_number_double", 3.14);
    event_properties.SetBool("test_bool", true);
    std::string test_string = "测试字符串1";
    event_properties.SetString("test_stl_string1", test_string);
    event_properties.SetDateTime("test_time1", time(NULL), 0);
    std::vector<std::string> test_list;
    test_list.push_back("item11");
    test_list.push_back("item21");
    event_properties.SetList("test_list1", test_list);
    
    
    
    
    
    thinkingdata::ThinkingAnalyticsAPI::Track("Cpp_event", event_properties);

}
