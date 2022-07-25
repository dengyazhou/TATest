//
//  AppDelegate.m
//  TATest_iOS
//
//  Created by xmly on 2022/5/28.
//

#import "AppDelegate.h"
#import <ThinkingSDK/ThinkingSDK.h>
//#import <ThinkingSDK/TDDeviceInfo.h>

static NSString *APP_ID = @"af6861d085e14b5c948662e1fcdce6ef";
static NSString *SERVER_URL = @"https://receiver-ta-demo.thinkingdata.cn";

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
//    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
////    dic = nil;
////    dic[@"name1"] = @"11";
//    id value = [dic objectForKeyedSubscript:@"name1"];
////    BOOL isFlag = ([dic objectForKeyedSubscript:@"name1"] != nil);
//    if (dic[@"name1"] != nil) {
//
//    }

//    [dic objectForKeyedSubscript:@""];
    
#pragma mark 1.3 初始化
    [ThinkingAnalyticsSDK setLogLevel:TDLoggingLevelDebug];
    
    [ThinkingAnalyticsSDK calibrateTimeWithNtp:@"time.apple.com"];

//    ThinkingAnalyticsSDK *instance = [ThinkingAnalyticsSDK startWithAppId:APP_ID withUrl:SERVER_URL];
    // 支持初始化多个APPID实例
//     ThinkingAnalyticsSDK *instance2 = [ThinkingAnalyticsSDK startWithAppId:APP_ID2 withUrl:SERVER_URL2];
//    NSString *idfv = [[UIDevice currentDevice].identifierForVendor UUIDString];
//    NSString *uuid = [[NSUUID UUID] UUIDString];
//    NSLog(@"=====>>>>idfv:%@",idfv);
//    NSLog(@"=====>>>>uuid:%@",uuid);
//    [instance track:@"event_6" properties:@{@"nameIDFV":idfv,@"nameUUID":uuid}];
//    [instance track:@"type_array_3" properties:@{@"type_array_3":@[@{@"name1":@"小马哥"},@{@"age12":@(12)},@{}],@"type_dic_3":@{@"name":@"数数",@"age":@(20)}}];
    
//
//    // 后续可以通过如下两种方法使用 SDK
//    NSDictionary *eventProperties = @{@"age":@"age123",@"company":@"数数科技V_333"};
//    [instance track:@"event_buy" properties:eventProperties];
//    [[ThinkingAnalyticsSDK sharedInstanceWithAppid:APP_ID] track:@"event_name" properties:eventProperties];
//
//    // v1.2.0版本之前，或者单实例可使用下列使用 SDK
//    [[ThinkingAnalyticsSDK sharedInstance] track:@"event_name" properties:eventProperties];
    
//    [ThinkingAnalyticsSDK calibrateTimeWithNtp:@"time.apple.com"];//验证成功
    
    // v2.7.2版本以后为实例设置 name
    TDConfig *config = [[TDConfig alloc] initWithAppId:APP_ID serverUrl:SERVER_URL];
//    config.defaultTimeZone = [NSTimeZone timeZoneWithAbbreviation:@"UTC"];
//    config.uploadSize = @10;
//    config.uploadInterval = @3600;
//    config.name = @"Монгол 13";
//    config.debugMode = ThinkingAnalyticsDebug;
//    config.launchOptions = launchOptions;
    ThinkingAnalyticsSDK *instance = [ThinkingAnalyticsSDK startWithConfig:config];
    
//    [instance login:@"dyz_76_V1"];
//
//    [instance identify:@"iid_num_V5"];
    
//    [instance enableAutoTrack:ThinkingAnalyticsEventTypeAll];
//
//    // 根据name获取实例
//    ThinkingAnalyticsSDK *ta = [ThinkingAnalyticsSDK sharedInstanceWithAppid:@"Монгол 13"];
//    [instance logout];
    
//    [instance enableAutoTrack:ThinkingAnalyticsEventTypeAll];
    
    [instance enableAutoTrack:ThinkingAnalyticsEventTypeAll properties:@{@"autoName":@"123"}];
//    [instance login:@"deng_ya_zhou_V1"];
//    [instance track:@"iOS_EVENT" properties:@{@"ios_age":@"12",@"iOS_name":@"数数科技3"}];
//    [instance track:@"t000_match_getmatchs" properties:@{@"ios_name":@"1&33334"}];
//    [instance track:@"t000_match_getmatchs" properties:@{@"ios_name&1":@"1&444"}];
//    [instance track:@"t000_match_getmatchs_succeed"];
    
//    [instance user_append:@{@"product_buy":@[@"product_name1",@"product_name2",@"product_name2"]}];
//    [instance user_uniqAppend:@{@"product_buy":@[@"product_name1",@"product_name2",@"product_name2"]}];
    
//    [instance track:@"iOS_E_V4" properties:@{@"iOS_name":@"没传channel字段"}];// (null)
//    [instance track:@"iOS_E_V4" properties:@{@"iOS_name":@"channel字段为空字符串",@"channel":@""}];// -
//    [instance track:@"iOS_E_V4" properties:@{@"iOS_name":@"channel字段为空格字符串",@"channel":@" "}]; // 空
//    [instance track:@"iOS_E_V4" properties:@{@"iOS_name":@"channel字段为空1",@"channel":@" 1"}]; // 空1
//    [instance track:@"iOS_E_V4" properties:@{@"iOS_name":@"channel字段为1",@"channel":@"1"}];// 1
//    [instance track:@"iOS_E_V4" properties:@{@"iOS_name":@"channel字段为-",@"channel":@"-"}];// -
    
//    [instance login:@"dengauzhou_num2"];
//    [instance logout];
//    [instance identify:@"identify_num2"];
////    [instance logout];
    
//    NSString *str = @"FloatingWindow;{\"url\":\"http:\/\/testjbz.leiting.com\/personal\/gameGotoShelf.do?token=&currDate=xxx&sign=xxx\"}";
    
//    [instance setSuperProperties:@{@"Channel":@"ABC"}];
//
//    [instance user_set:@{@"name":@"123"}];
//
//    [instance track:@"iOS_E_V4"];
    
    
//    [instance track:@"iOS_E_V4" properties:@{@"name":@"event_9"}];
//    [instance track:@"iOS_E_V4" properties:@{@"name":@"event_10"}];
//    [instance track:@"iOS_E_V7" properties:@{@"name":@"123",@"name1":@"123",@"#device_id":@"1231232412"}];
//    [instance track:@"iOS_E_V6" properties:@{@"name":@"",@"name1":@"空字符串"}];
//    [instance track:@"iOS_E_V6" properties:@{@"name":@" ",@"name1":@"空格"}];
//    [instance track:@"iOS_E_V6" properties:@{@"name1":@"没有key"}];
//    [instance track:@"iOS_E_V7"];
    
//    [instance track:@"iOS_E_V6" properties:@{@"name":@"自己添加ip和device_id",@"#ip":@"101.88.6.111",@"#device_id":@"1234567",@"#account_id":@"8888"}];
//    [instance track:@"iOS_E_V6" properties:@{@"name":@"自己添加ip和device_id",@"#ip":@"101.88.6.111",@"#device_id":@"1234567"}];
//    [instance login:@"yazhou_login123"];
//    [instance track:@"iOS_E_V6" properties:@{@"name":@"呵呵1"}];
//    [instance enableAutoTrack:ThinkingAnalyticsEventTypeAll];
//    [instance login:@"abc_dyz"];
//    [instance identify:@"identify_dyz"];
//    [instance enableAutoTrack:ThinkingAnalyticsEventTypeAll];
//    [instance logout];
//    NSDictionary *dic = @{@"itme1":@"abc1",@"itme2":@"abc2"};
//    [instance track:@"iOS_E_V6" properties:@{@"get_items":dic,@"name":@"8888"}];
    
    
//    [instance enableAutoTrack:ThinkingAnalyticsEventTypeAll callback:^NSDictionary * _Nonnull(ThinkingAnalyticsAutoTrackEventType eventType, NSDictionary * _Nonnull properties) {
////
//////        if (ThinkingAnalyticsEventTypeAppEnd) {
//////            NSLog(@"========>>>>>>>>>>:%@",properties);
//////        }
//////        NSLog(@"========>>>>>>>>>>:%@",properties);
//////
//        return @{@"name":@"自动采集 crash 之后 有end吗"};
//    }];
    
//    [instance registerDynamicSuperProperties:^NSDictionary<NSString *,id> * _Nonnull{
//        NSString *uuid = [[NSUUID UUID] UUIDString];
//        return @{@"name1":uuid};
//    }];
    
//    [instance track:@"iOS_E_V4_2" properties:@{@"name":@"event_2"}];
//    [instance track:@"TA3" properties:@{@"name":@"event_2",@"name1":@"dyz"}];
    
//    NSDictionary *dic1 = @{@"name":@"dengV1",@"company":@"shushuV1"};
//    NSDictionary *dic2 = @{@"name":@"dengV2",@"company":@"shushuV2"};
//    NSDictionary *dic3 = @{@"name":@"dengV3",@"company":@"shushuV3"};
//    NSDictionary *dic4 = @{@"name":@"dengV4",@"company":@"shushuV4"};
//    NSArray *array = @[dic1,dic2,dic3,dic4];
    
    
//    [instance track:@"iOS_E_V5" properties:@{@"array":array}];
//    [instance login:@"dengyazhou_v5"];
//    [instance track:@"iOS_E_V4" properties:@{@"name":@"event_5"}];
//    [instance login:@"dengyazhou_v6"];
//    [instance track:@"iOS_E_V4" properties:@{@"name":@"event_6"}];
//    [instance logout];
//    [instance track:@"iOS_E_V4" properties:@{@"name":@"event_1"}];
//    [instance track:@"iOS_E_V4" properties:@{@"name":@"event_8"}];
    
//    [instance track:@"iOS_E_V6" properties:@{@"name":@"eventV6"}];

//    [instance user_set:@{@"name":@"dengyazhouV1"}];
//    [instance identify:@"abc_V3"];
    
   
    
 
//    [instance flush];
    
#pragma mark 1.4 后台自启事件说明
//    TDConfig *config = [[TDConfig alloc] init];
//    config.launchOptions = launchOptions;
//    config.trackRelaunchedInBackgroundEvents = YES;
//    ThinkingAnalyticsSDK *instance = [ThinkingAnalyticsSDK startWithAppId:APP_ID withUrl:SERVER_URL withConfig:config];
    
#pragma mark 1.5 开启与 H5 页面的打通
//    [instance addWebViewUserAgent];
//    [[ThinkingAnalyticsSDK sharedInstanceWithAppid:APP_ID] addWebViewUserAgent];
    
#pragma mark 2.1 设置访客 ID
//    [instance identify:@"123ABCabc3"];
    // 返回访客 ID，多实例的情况下，返回的是调用实例的访客 ID
//    [instance getDistinctId];
    
#pragma mark 2.2 设置账号 ID
//    [instance login:@"dengyazhouzID5.26.3"];
    
#pragma mark 2.3 清空账号 ID
//    [instance logout];
    
#pragma mark 3.1 发送事件
    // 该事件没有设置属性
//    [instance track:@"StartApp"];
    // 上传购买商品事件
//    NSDictionary *eventProperties = @{
//        @"product_name":@"商品名",
//        @"product_num":@(1),
//        @"IsFirstBuy":@(YES)
//    };
//    [instance track:@"product_buy" properties:eventProperties];
    
//    NSDictionary *properties = @{
//        @"product_name":@"商品名",
//        @"product_num":@1,
//        @"IsFirstBuy":@YES
//    };
//    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
//    formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
////    formatter.timeZone = [NSTimeZone timeZoneWithAbbreviation:@"UTC"];
//    NSDate *date = [formatter dateFromString:@"2022-06-09 17:30:12"];//会把输入的本地时间 2022-06-09 17:30:12改成 默认是UTC时间 2022-06-09 09:30:12 +0000
//    NSLog(@"date:%@",date.description);
//    NSString *dateStr = [formatter stringFromDate:date];//把date转化成formatter.timeZone对应的时间，由于formatter.timeZone默认值为localTimeZone本地时间，所以转为本地时间
//    NSLog(@"dateStr:%@",dateStr);
//    [instance track:@"event_2" properties:nil time:[NSDate date] timeZone:[NSTimeZone timeZoneWithName:@"Asia/Shanghai"]];
//    [instance track:@"event_2" properties:nil time:date timeZone:[NSTimeZone timeZoneWithAbbreviation:@"UTC"]];//把date转为对应时区下的时间
//    [instance track:@"event_2" properties:nil time:date timeZone:[NSTimeZone localTimeZone]];
//    [instance track:@"event_2"];
    
#pragma mark 3.2 设置公共事件属性
//    [instance setSuperProperties:@{@"Channel": @"ABC",@"isTest": @YES}];
    // 设置后上传数据：
//    [instance track:@"product_view" properties:@{@"product_id": @"A1234"}];
    
    // 相当于在事件中设置了属性：
//    NSDictionary *properties = @{
//        @"Channel": @"ABC",
//        @"isTest": @YES,
//        @"product_id": @"A1234"
//    };
//    [instance track:@"product_view" properties:properties];
    
//    [instance setSuperProperties:@{@"Channel": @"ABC", @"isTest": @YES}];
//    NSLog(@"%@",[instance currentSuperProperties]);//获取所有公共属性
//    // 覆盖"Channel"，此时属性"Channel"的值为"XYZ"
//    [instance setSuperProperties:@{@"Channel": @"XYZ"}];
//    NSLog(@"%@",[instance currentSuperProperties]);
//    // 覆盖"isTest"，"isTest"的值为False
//    [instance track:@"product_view" properties:@{@"isTest": @NO}];
//    NSLog(@"%@",[instance currentSuperProperties]);//但是公共事件属性的是不会改变
//    // 清除一条公共事件属性，将之前设置"isTest"属性清除
//    [instance unsetSuperProperty:@"isTest"];
//    NSLog(@"%@",[instance currentSuperProperties]);
//    // 清除所有公共事件属性
//    [instance clearSuperProperties];
//    NSLog(@"%@",[instance currentSuperProperties]);
    
#pragma mark 3.3 设置动态公共属性
    // 设置动态公共属性，在事件上报时动态获取事件发生时刻
//    [instance registerDynamicSuperProperties:^NSDictionary<NSString *,id> * _Nonnull{
//        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
//        [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
//        formatter.timeZone = [NSTimeZone timeZoneWithName:@"America/Chicago"];//[NSTimeZone localTimeZone];
//        NSDate *dateNow = [NSDate date];
//        NSString *currentTimeString = [formatter stringFromDate:dateNow];
//        return @{@"AmericaTime": currentTimeString};
//    }];
    
#pragma mark 3.4 记录事件时长
    // 开始计时，记录的事件为 "product_view"
//    [instance timeEvent:@"product_sleep"];
    
//    sleep(4);
    //其他代码...

    // 上传事件，计时结束，"product_view" 这一事件中将会带有表示事件时长的属性 "#duration"
//    [instance track:@"product_sleep"];
    
#pragma mark 四、用户属性
#pragma mark 4.1 user_set
    // 设置用户属性
//    [instance user_set:@{@"comp": @"数数科技_V1",@"Age": @"str123"}];
#pragma mark 4.2 user_setOnce
    // 设置用户名
//    [instance user_setOnce:@{@"UserName": @"TA1"}];
    // 此时用户名为TA
//    [instance user_setOnce:@{@"UserName": @"TA_dyx",@"nickName":@"嘿嘿_dyz"}];
#pragma mark 4.3 user_add
    // 设置累计付费金额
//    [instance user_add:@{@"TotalRevenue":@6}];
    // 此时累计付费值为6
//    [instance user_add:@{@"TotalRevenue":@30}];
    // 此时累计付费值为36
#pragma mark 4.4 user_unset
//    [instance user_set:@{@"car": @"凯斯拉克_V1",@"comp": @"数数科技_DA"}];
//    [instance user_unset:@"car"];
#pragma mark 4.5 user_delete
//    [instance user_delete];
#pragma mark 4.6 user_append
    // 调用 user_append 为用户属性 product_buy 追加元素。如果不存在，会新建该元素
//    [instance user_append:@{@"product_buy": @[@"product_name1", @"product_name3"]}];
#pragma mark 4.7 user_uniqAppend
    // 调用 user_uniqAppend 为用户属性 product_buy 追加元素。如果不存在，会新建该元素
//    [instance user_uniqAppend:@{@"product_buy": @[@"product_name1", @"product_name5"]}];
    
#pragma mark 6.1 设置上传的网络条件
    // 在 2G, 3G, 4G, 5G 及 Wifi 时上传数据
//    [instance setNetworkType:TDNetworkTypeALL];
    // 只在 Wifi 环境下上报数据
//    [instance setNetworkType:TDNetworkTypeOnlyWIFI];
    // 在 2G ,3G, 4G, 5G 及 Wifi 时上传数据, 默认设置
//    [instance setNetworkType:TDNetworkTypeDefault];
    
#pragma mark 6.2 数据上报状态
    //TATrackStatusPause:  暂时停止数据采集(相当于把数据写入本地数据库TDData-data.plist)和上报
    //TATrackStatusStop: 停止数据采集和上报，并清除缓存(本地的数据库，例如iOS沙盒Library/TDData-data.plist 和 清空该实例的本地缓存，包括本实例的访客 ID，账号 ID，公共属性)
    //TATrackStatusSaveOnly: 数据采集入库(本地的数据库，例如iOS沙盒Library/TDData-data.plist),但暂停上报数据
    //TATrackStatusNormal
    
    // 暂停上报
//    [instance setTrackStatus:TATrackStatusPause];
    // 恢复上报
//    [instance setTrackStatus:TATrackStatusNormal];

#pragma mark 6.2.2 停止SDK上报并清除缓存（TATrackStatusStop）
    // 停止上报，并重置本地缓存
//    [instance setTrackStatus:TATrackStatusStop];
    
//    [instance setTrackStatus:TATrackStatusNormal];
#pragma mark 6.2.3 数据采集入库但暂停上报数据（TATrackStatusSaveOnly）
//    [instance setTrackStatus:TATrackStatusSaveOnly];
#pragma mark 6.2.4 正常状态（TATrackStatusNormal）
    // 正常状态（默认状态） 可以不进行设置
//    [instance setTrackStatus:TATrackStatusNormal];

#pragma mark 6.3 打印数据 Log
//    [ThinkingAnalyticsSDK setLogLevel:TDLoggingLevelDebug];

#pragma mark 6.4 获取设备 ID
//    NSLog(@"ID:%@",[instance getDeviceId]);
//    NSLog(@"UUIDString:%@",[[UIDevice currentDevice].identifierForVendor UUIDString]);
//    NSLog(@"UUIDString:%@",[[NSUUID UUID] UUIDString]);
    // 如果需要将设备ID设置成访客ID可以如下调用
//    [instance identify:[instance getDeviceId]];
    
#pragma mark 6.5 配置 HTTPS 校验方法:
//    TDConfig *config = [[TDConfig alloc] init];
//    TDSecurityPolicy *securityPolicy = [TDSecurityPolicy policyWithPinningMode:TDSSLPinningModeNone];
//    // TDSSLPinningModeNone:默认认证方式，只会在系统的信任的证书列表中对服务端返回的证书进行验证
//    // TDSSLPinningModePublicKey:校验证书的公钥
//    // TDSSLPinningModeCertificate:校验证书的所有内容
//    securityPolicy.allowInvalidCertificates = YES;// 是否允许自建证书或者过期SSL证书，默认NO
//    securityPolicy.validatesDomainName = NO;// 是否验证证书域名，默认YES
//    config.securityPolicy = securityPolicy;
//    [ThinkingAnalyticsSDK startWithAppId:APP_ID withUrl:SERVER_URL withConfig:config];
    
#pragma mark 6.6 设置默认时区
//    TDConfig *config = [[TDConfig alloc] init];
//    config.defaultTimeZone = [NSTimeZone timeZoneWithName:@"UTC"];//[NSTimeZone localTimeZone];
//    ThinkingAnalyticsSDK *instance = [ThinkingAnalyticsSDK startWithAppId:APP_ID withUrl:SERVER_URL withConfig:config];
    
#pragma mark 6.7 开启 Debug 模式
//    TDConfig *config = [[TDConfig alloc] init];
//    config.debugMode = ThinkingAnalyticsDebug;
//    ThinkingAnalyticsSDK *instance = [ThinkingAnalyticsSDK startWithAppId:APP_ID withUrl:SERVER_URL withConfig:config];
    
#pragma mark 6.8 校准时间
    // 1585633785954 为当前 unix 时间戳，单位为毫秒，对应北京时间 2020-03-31 13:49:45
//    [ThinkingAnalyticsSDK calibrateTime:1585633785954];
    // 使用苹果公司 NTP 服务对时间进行校准
//    [ThinkingAnalyticsSDK calibrateTimeWithNtp:@"time.apple.com"];
    
#pragma mark 7.4 获取预置属性 device_id等等
//    ThinkingAnalyticsSDK *instance = [ThinkingAnalyticsSDK startWithAppId:APP_ID withUrl:SERVER_URL];
    //获取属性对象
//    TDPresetProperties *presetProperties = [instance getPresetProperties];
    //生成事件预置属性
//    NSDictionary *properties = [presetProperties toEventPresetProperties];
//    NSString *idfv = [[UIDevice currentDevice].identifierForVendor UUIDString];
//    NSString *uuid = [[NSUUID UUID] UUIDString];
//    NSString *device_id = properties[@"#device_id"];
//    NSLog(@"=====>>>>idfv:%@",idfv);//D364E712-D6BF-408C-81D7-B1BBA974045E
//    NSLog(@"=====>>>>uuid:%@",uuid);
//    NSLog(@"=====>>>>device_id:%@",device_id);//D364E712-D6BF-408C-81D7-B1BBA974045E
//    NSLog(@"=====>>>>distinctId:%@",[instance getDistinctId]);
    
#pragma mark 7.6 预制属性开关
//    [instance track:@"product_arm" properties:@{@"product_name": @"解封"}];
    
#pragma 八、进阶功能
    //首次事件: 数据没法修改。相同的事件名，如果修改了#first_check_id，那么这个事件就会对应多条(修改几次#first_check_id)数据。
    //可更新事件: 修改当前传入的属性值，其他属性值保持不变。相同的事件名，如果修改了#event_id，那么这个事件就会对应多条(修改几次#event_id)数据。
    //可重写事件: 修改当前传入的属性值，其他属性值变为null。相同的事件名，如果修改了#event_id，那么这个事件就会对应多条(修改几次#event_id)数据。
    
#pragma mark 8.1 首次事件
//    ThinkingAnalyticsSDK *instance = [ThinkingAnalyticsSDK startWithAppId:APP_ID withUrl:SERVER_URL];
//    TDFirstEventModel *firstModel = [[TDFirstEventModel alloc] initWithEventName:@"dyz_first5"];
//    TDFirstEventModel *firstModel1 = [[TDFirstEventModel alloc] initWithEventName:@"dyz_first3" firstCheckID:@"checkID_first3"];
//    // 可选参数
//    firstModel.properties = @{@"rtc":@"zego2222_4"};
//    firstModel1.properties = @{@"rtc":@"zego3333_4"};
////    [firstModel configTime:[NSDate date] timeZone:[NSTimeZone localTimeZone]];
//    [instance trackWithEventModel:firstModel];
//    [instance trackWithEventModel:firstModel1];
    
    
#pragma mark 8.2 可更新事件
//    ThinkingAnalyticsSDK *instance = [ThinkingAnalyticsSDK startWithAppId:APP_ID withUrl:SERVER_URL];
//    TDUpdateEventModel *updateModel = [[TDUpdateEventModel alloc] initWithEventName:@"dyz_update4" eventID:@"e_id4"];
//    updateModel.properties = @{@"status":@6,@"price":@100};
//    updateModel.properties = @{@"rtc":@"你好世界！"};
//    updateModel.properties = @{@"age":@"3",@"rtc":@"nnnnn"};
//    [instance trackWithEventModel:updateModel];
//    [instance track:@"event_68"];
//    [instance track:@"event_68"];
//    [instance track:@"event_68"];
//    [instance track:@"event_68"];
  
//    TDUpdateEventModel *updateModel_new = [[TDUpdateEventModel alloc] initWithEventName:@"dyz_update" eventID:@"eventID_1"];
//    updateModel_new.properties = @{@"status":@14};
//    //上报后事件属性 status 被更新为 14, price 不变
//    [instance trackWithEventModel:updateModel_new];
    
#pragma mark 8.3 可重写事件
//    ThinkingAnalyticsSDK *instance = [ThinkingAnalyticsSDK startWithAppId:APP_ID withUrl:SERVER_URL];
//    TDOverwriteEventModel *overwriteModel = [[TDOverwriteEventModel alloc] initWithEventName:@"day_overWrite_V8" eventID:@"day_overWrite_ID_V8"];
////    overwriteModel.properties = @{@"status":@10,@"price":@7};
//    overwriteModel.properties = @{@"age":@13, @"price":@100};
//    [instance trackWithEventModel:overwriteModel];
    
//    TDOverwriteEventModel *overwriteModel_new = [[TDOverwriteEventModel alloc] initWithEventName:@"day_overWrite" eventID:@"day_overWrite_ID_V1"];
//    overwriteModel_new.properties = @{@"status":@5};
//    // 上报后事件属性 status 为 5, price属性被删除
//    [instance trackWithEventModel:overwriteModel_new];
    
#pragma mark 9、加密功能
//    [ThinkingAnalyticsSDK setLogLevel:TDLoggingLevelDebug];
//    TDConfig *config = [[TDConfig alloc] init];
//    config.appid = APP_ID;
//    config.configureURL = SERVER_URL;
//    config.enableEncrypt = YES;// 开启加密功能
//    config.secretKey = [[TDSecretKey alloc] initWithVersion:1 publicKey:@"MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCzAKEGsq67Yd03"];// 配置版本号、公钥等密钥信息
    
    
#pragma mark iOS SDK 自动采集指南
//    ThinkingAnalyticsEventTypeAppInstall，APP 安装，记录 APP 被安装的日志
//    ThinkingAnalyticsEventTypeAppStart，APP 启动事件，记录 APP 启动或从后台恢复
//    ThinkingAnalyticsEventTypeAppEnd，APP 关闭事件，记录 APP 调入后台
//    ThinkingAnalyticsEventTypeAppViewScreen，APP 浏览页面事件
//    ThinkingAnalyticsEventTypeAppClick，APP 点击控件事件
//    ThinkingAnalyticsEventTypeAppViewCrash，APP 崩溃事件
//    ThinkingAnalyticsSDK *instance = [ThinkingAnalyticsSDK startWithAppId:APP_ID withUrl:SERVER_URL];
    
//    [instance identify:@"dyz_identify_V1"];
//    [instance setSuperProperties:@{@"Channel_V1":@"ABC",@"Server_V1":@123,@"isTest_V1":@YES}];
    //如需设置公共事件属性或设置自定义访客 ID，请务必确保在开启自动采集之前调用 setSuperProperties:或 identify:
    //设置完访客ID与公共属性后，再开启自动采集
//    [instance enableAutoTrack:ThinkingAnalyticsEventTypeAppInstall |
//     ThinkingAnalyticsEventTypeAppStart |
//     ThinkingAnalyticsEventTypeAppEnd |
//     ThinkingAnalyticsEventTypeAppViewScreen |
//     ThinkingAnalyticsEventTypeAppClick |
//     ThinkingAnalyticsEventTypeAppViewCrash];
    
    //打开自动采集功能，同时设置自定义属性
//    [instance enableAutoTrack:ThinkingAnalyticsEventTypeAll properties:@{@"auto_key1_dyz": @"auto_value123"}];
    
//    [instance setAutoTrackProperties:ThinkingAnalyticsEventTypeAppEnd properties:@{@"auto_key2": @"auto_value222"}];//好像没效果
    
#pragma mark 自动采集事件回调
//    [instance enableAutoTrack:ThinkingAnalyticsEventTypeAll callback:^NSDictionary * _Nonnull(ThinkingAnalyticsAutoTrackEventType eventType, NSDictionary * _Nonnull properties) {
//        if (eventType == ThinkingAnalyticsEventTypeAppStart) {
//            return @{@"addkey_dyz_V1":@"addvalueStare"};
//        }
//        if (eventType == ThinkingAnalyticsEventTypeAppEnd) {
//            return @{@"updatekey":@"updatevalue"};
//        }
//        return @{};
//    }];
    
#pragma mark 创建轻实例
//    ThinkingAnalyticsSDK *instance = [ThinkingAnalyticsSDK startWithAppId:APP_ID withUrl:SERVER_URL];
//    //通过之前创建的实例，调用createLightInstance生成轻实例
//    ThinkingAnalyticsSDK *lightInstance = [instance createLightInstance];
//    [lightInstance login:@"ligth0001@thinkingdata.cn"];
//    [lightInstance track:@"some_event" properties:@{@"ligth_V1":@"第一个访客"}];
    
    return YES;
}

#pragma mark 应用被外界打开
//1、在info.中 添加URL Types，URL Schemes 名字不能带下划线,例如TATestiOS123
//2、添加如下方法 - (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options,在SceneDelegate存在的情况下，这个回调不会走，但是这个也必须写，否则打不开
//3、用safari打开，在safari浏览器中输入 TATestiOS123://

//打开其他应用
//1、在info中添加白名单，LSApplicationQueriesSchemes，TATestiOS123
//2、代码打开 [[UIApplication sharedApplication] openURL:url options:@{@"name":@"dengyazhou"} completionHandler:nil];
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
    NSLog(@"%s",__func__);
//    if (url) {
//        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"你被唤醒了" message:@"你好" preferredStyle:UIAlertControllerStyleAlert];
//        UIAlertAction *action = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
//
//        }];
//        [alertController addAction:action];
//        [app.windows.firstObject.rootViewController presentViewController:alertController animated:YES completion:nil];
//    }
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
