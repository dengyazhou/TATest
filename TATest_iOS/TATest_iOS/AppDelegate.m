//
//  AppDelegate.m
//  TATest_iOS
//
//  Created by xmly on 2022/5/28.
//

#import "AppDelegate.h"
#import <ThinkingSDK/ThinkingSDK.h>

static NSString *APP_ID = @"a5bf4fc2f8a248a7a02b9a62a58bf1e9";
static NSString *SERVER_URL = @"http://ta_test.receiver.thinkingdata.cn";

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
#pragma mark 1.3 初始化
    ThinkingAnalyticsSDK *instance = [ThinkingAnalyticsSDK startWithAppId:APP_ID withUrl:SERVER_URL];
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
    
    // v2.7.2版本以后为实例设置 name
//    TDConfig *config = [[TDConfig alloc] initWithAppId:APP_ID serverUrl:SERVER_URL];
//    config.name = @"SS_TADemo";
//    [ThinkingAnalyticsSDK startWithConfig:config];
//
//    // 根据name获取实例
//    ThinkingAnalyticsSDK *instance = [ThinkingAnalyticsSDK sharedInstanceWithAppid:@"SS_TADemo"];

    
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
//    [instance track:@"product_buy" properties:properties time:[NSDate date] timeZone:[NSTimeZone timeZoneWithName:@"Asia/Shanghai"]];
    
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
//    config.debugMode = ThinkingAnalyticsDebugOff;
//    ThinkingAnalyticsSDK *instance = [ThinkingAnalyticsSDK startWithAppId:APP_ID withUrl:SERVER_URL withConfig:config];
    
#pragma mark 6.8 校准时间
    // 1585633785954 为当前 unix 时间戳，单位为毫秒，对应北京时间 2020-03-31 13:49:45
//    [ThinkingAnalyticsSDK calibrateTime:1585633785954];
    // 使用苹果公司 NTP 服务对时间进行校准
//    [ThinkingAnalyticsSDK calibrateTimeWithNtp:@"time.apple.com"];
    
#pragma mark 7.4 获取预置属性
    //获取属性对象
//    TDPresetProperties *presetProperties = [instance getPresetProperties];
    //生成事件预置属性
//    NSDictionary *properties = [presetProperties toEventPresetProperties];
    
#pragma mark 7.6 预制属性开关
//    [instance track:@"product_arm" properties:@{@"product_name": @"解封"}];
    
#pragma mark 8.1 首次事件
//    TDFirstEventModel *firstModel = [[TDFirstEventModel alloc] initWithEventName:@"dyz_first"];
//    TDFirstEventModel *firstModel = [[TDFirstEventModel alloc] initWithEventName:@"dyz_first1" firstCheckID:@"checkID_first1"];
//    // 可选参数
//    firstModel.properties = @{@"rtc":@"zego222"};
//    [firstModel configTime:[NSDate date] timeZone:[NSTimeZone localTimeZone]];
//    [instance trackWithEventModel:firstModel];
    
#pragma mark 8.2 可更新事件
//    TDUpdateEventModel *updateModel = [[TDUpdateEventModel alloc] initWithEventName:@"dyz_update" eventID:@"eventID_1"];
//    updateModel.properties = @{@"status":@3,@"price":@100};
//    [instance trackWithEventModel:updateModel];
  
//    TDUpdateEventModel *updateModel_new = [[TDUpdateEventModel alloc] initWithEventName:@"dyz_update" eventID:@"eventID_1"];
//    updateModel_new.properties = @{@"status":@14};
//    //上报后事件属性 status 被更新为 14, price 不变
//    [instance trackWithEventModel:updateModel_new];
    
#pragma mark 8.3 可重写事件
//    TDOverwriteEventModel *overwriteModel = [[TDOverwriteEventModel alloc] initWithEventName:@"day_overWrite" eventID:@"day_overWrite_ID_V1"];
//    overwriteModel.properties = @{@"status":@44,@"price":@444};
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
    
    
//    [instance enableAutoTrack:ThinkingAnalyticsEventTypeAppStart |
//    ThinkingAnalyticsEventTypeAppInstall |
//    ThinkingAnalyticsEventTypeAppEnd |
//    ThinkingAnalyticsEventTypeAppViewScreen |
//    ThinkingAnalyticsEventTypeAppClick |
//    ThinkingAnalyticsEventTypeAppViewCrash];
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
