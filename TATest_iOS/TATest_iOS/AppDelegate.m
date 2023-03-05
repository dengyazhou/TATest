//
//  AppDelegate.m
//  TATest_iOS
//
//  Created by xmly on 2022/5/28.
//

#import "AppDelegate.h"
#import <ThinkingSDK/ThinkingSDK.h>
//#import <ThinkingSDK/TDDeviceInfo.h>
#import "APNSManager.h"
//#import "Firebase.h"
//#import "Adjust.h"

#import "KJException.h"

static NSString *APP_ID = @"af6861d085e14b5c948662e1fcdce6ef";
static NSString *SERVER_URL = @"https://receiver-ta-demo.thinkingdata.cn";

//static NSString *APP_ID = @"debug-appid";
//static NSString *SERVER_URL = @"https://shushu-dev.pitayagames.com.cn";


//static NSString *APP_ID = @"ab7a8aeb733047da89f899a05dc5e55c";
//static NSString *SERVER_URL = @"https://ta-anbian-receiver.thinkingdata.cn";

static NSString *APP_ID2 = @"269131a305fb43118165ab266607bd3d";
static NSString *SERVER_URL2 = @"https://receiver-ta-demo.thinkingdata.cn";

static NSString *APP_ID3 = @"debug-appid";
static NSString *SERVER_URL3 = @"http://43.132.240.215";



//https://appdata.insta360.cn

@interface AppDelegate ()

@end

@implementation AppDelegate

- (long)getSystemUptime {
    struct timespec ts;
    if (@available(iOS 10.0, *)) {
        clock_gettime(CLOCK_MONOTONIC, &ts);
    } else {
        
    }
    return ts.tv_sec;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
//    [ThinkingAnalyticsSDK setLogLevel:TDLoggingLevelDebug];
////    [ThinkingAnalyticsSDK setLogLevel:TDLoggingLevelNone];
////    [ThinkingAnalyticsSDK calibrateTime:1675745849119];
//    TDConfig *config = [[TDConfig alloc] init];
////    config.trackRelaunchedInBackgroundEvents = YES;
////    config.name = @"name1";
////    config.debugMode = ThinkingAnalyticsDebug;
////    config.defaultTimeZone = [NSTimeZone timeZoneForSecondsFromGMT:3];
////    config.defaultTimeZone = [NSTimeZone timeZoneWithName:@"UTC"];
//    ThinkingAnalyticsSDK *instance = [ThinkingAnalyticsSDK startWithAppId:APP_ID withUrl:SERVER_URL withConfig:config];
////    [instance enableAutoTrack:ThinkingAnalyticsEventTypeAppStart|ThinkingAnalyticsEventTypeAppInstall|ThinkingAnalyticsEventTypeAppEnd];
//    [instance track:@"Test061"];
    
    
//    NSTimeZone *timeZone = [NSTimeZone localTimeZone];
//    NSDate *date = [NSDate date];
//    NSInteger sourceGMTOffset = [timeZone secondsFromGMTForDate:date];
//    double offset = (double)(sourceGMTOffset/3600);
//    NSLog(@"offset:%f",offset);
    
    
//    NSTimeInterval time = [[NSProcessInfo processInfo] systemUptime];
//    NSLog(@"=====>>>>:%f",time);
//    NSLog(@"============>>>>>:%ld",[self getSystemUptime]);
//    164.081893
//    481.235650
//    2023-01-13 10:20:05.922206+0800 TATest_iOS[1665:112025] =====>>>>:9044.890452
//    2023-01-13 10:20:05.922276+0800 TATest_iOS[1665:112025] ============>>>>>:52033
    

    
//    Test_iOS[459:11941] =====>>>>:903.059656
//    2023-01-12 19:48:05.433264+0800 TATest_iOS[459:11941] ============>>>>>:893
    
    
    
    
//    [KJException kj_openCrashProtectorType:(FoggyTypeAll) exception:^(_Foggy * _Nonnull _f) {}];
    
    
    
//    NSString *yourAppToken = @"73w4kpj3x4ow";
//    NSString *environment = ADJEnvironmentSandbox;
//    ADJConfig *adjustConfig = [ADJConfig configWithAppToken:yourAppToken
//                                      environment:environment];
//    [Adjust appDidLaunch:adjustConfig];
    
//    [ThinkingAnalyticsSDK calibrateTimeWithNtp:@"time.apple.com"];
//    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
////    dic = nil;
////    dic[@"name1"] = @"11";
//    id value = [dic objectForKeyedSubscript:@"name1"];
////    BOOL isFlag = ([dic objectForKeyedSubscript:@"name1"] != nil);
//    if (dic[@"name1"] != nil) {
//
//    }

//    [dic objectForKeyedSubscript:@""];
//    [[APNSManager Instance] openPush];
    
    
//    [ThinkingAnalyticsSDK calibrateTimeWithNtp:@"time.apple.com"];
    
    
//    NSTimeInterval timeInterval0 = [[NSDate date] timeIntervalSince1970];
//    NSTimeInterval timeInterval1 = [[NSDate dateWithTimeIntervalSinceNow:1000] timeIntervalSince1970];//传入的是秒
//    NSLog(@"timeInterval0:%f",timeInterval0);
//    NSLog(@"timeInterval1:%f",timeInterval1);
    
//    [[NSDate dateWithTimeIntervalSinceNow:offset] timeIntervalSince1970];
    
#pragma mark 1.3 初始化
//    [ThinkingAnalyticsSDK setLogLevel:TDLoggingLevelDebug];
    
//    [ThinkingAnalyticsSDK calibrateTimeWithNtp:@"time.apple.com"];
//    [ThinkingAnalyticsSDK calibrateTime:1585633785954];
    
//    NSDictionary *dic = [NSTimeZone abbreviationDictionary];
//    NSLog(@"===>>>:%@",dic);
    
//    [ThinkingAnalyticsSDK setLogLevel:TDLoggingLevelDebug];
//    [ThinkingAnalyticsSDK calibrateTime:1675745849119];
//    TDConfig *config = [[TDConfig alloc] init];
//    config.trackRelaunchedInBackgroundEvents = YES;
////    config1.name = @"name1";
////    config.debugMode = ThinkingAnalyticsDebug;
////    config1.defaultTimeZone = [NSTimeZone timeZoneForSecondsFromGMT:2];
//    ThinkingAnalyticsSDK *instance = [ThinkingAnalyticsSDK startWithAppId:APP_ID withUrl:SERVER_URL withConfig:config];
//    [instance enableAutoTrack:ThinkingAnalyticsEventTypeAppStart|ThinkingAnalyticsEventTypeAppInstall|ThinkingAnalyticsEventTypeAppEnd];
//    [instance track:@"test"];
//    [instance timeEvent:@"duration"];
//    [instance1 track:@"game_start_click_login_btn"];
//    NSDictionary *dic = [[instance1 getPresetProperties] toEventPresetProperties];
//    NSMutableDictionary *dicm = [NSMutableDictionary dictionaryWithDictionary:dic];
//    NSDateFormatter *timeFormatter = [[NSDateFormatter alloc] init];
//    timeFormatter.dateFormat = @"yyyy-MM-dd HH:mm:ss.SSS";
//    timeFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
//    timeFormatter.calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
//    timeFormatter.timeZone = [NSTimeZone localTimeZone];
//    
//    dicm[@"#install_time"] = [timeFormatter stringFromDate:dicm[@"#install_time"]];
//    NSLog(@"dic:%@",dicm);
//    NSError *error;
//    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dicm options:NSJSONWritingPrettyPrinted error:&error];
//    NSString *str = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
//    NSLog(@"error:%@",error);
//    NSLog(@"str:%@",str);
    
//    [instance enableAutoTrack:ThinkingAnalyticsEventTypeAppInstall|ThinkingAnalyticsEventTypeAppEnd|ThinkingAnalyticsEventTypeAppStart|ThinkingAnalyticsEventTypeAppViewScreen];
//    TDPresetProperties *pro = [instance getPresetProperties];
//    NSDictionary *dic = [pro toEventPresetProperties];
//    NSLog(@"%@",dic);
//    [instance enableAutoTrack:ThinkingAnalyticsEventTypeAll];
//    [instance track:@"test22"];
//    NSDictionary *dic = [[instance getPresetProperties] toEventPresetProperties];
//    NSLog(@"====>>>>:%@",dic);
//    NSDictionary *dic0 = @{@"name":@"ss",@"age":@8,@"address":@"上海"};
//    NSDictionary *dic1 = @{@"name":@"ss1",@"age":@9,@"address":@"上海1"};
//    NSDictionary *dic2 = @{@"name":@"ss2",@"age":@10,@"address":@"上海2"};
//    [instance track:@"Click2" properties:@{@"Dyz_list":@[dic0,dic1,dic2]}];
//    [instance track:@"Click4" properties:@{@"#ip":@"1.2.3.4"}];
//    instance track:<#(nonnull NSString *)#> properties:<#(nullable NSDictionary *)#> time:<#(nonnull NSDate *)#> timeZone:<#(nonnull NSTimeZone *)#>
//    NSLog(@"===>>>>");
    
//    [instance track:@"test2" properties:@{@"#app_crashed_reason":@(12.33)}];
//    [instance user_set:@{@"lastTime":@"999"}];
    

    
    
//    [instance1 login:@"ddd123"];
//    [instance1 user_set:@{@"userdyz":@"ddddd1"}];
//
    
    

//    
//    TDConfig *config2 = [[TDConfig alloc] init];
////    config1.name = @"name2";
//    ThinkingAnalyticsSDK *instance2 = [ThinkingAnalyticsSDK startWithAppId:APP_ID withUrl:SERVER_URL withConfig:config2];
//    
//    [instance1 enableAutoTrack:ThinkingAnalyticsEventTypeAll];
//    [instance2 enableAutoTrack:ThinkingAnalyticsEventTypeAll];
//    
//    
//    ThinkingAnalyticsSDK *instance = [ThinkingAnalyticsSDK startWithAppId:APP_ID withUrl:SERVER_URL];
//    [instance enableAutoTrack:ThinkingAnalyticsEventTypeAll];`
//    [instance getDeviceId];
    
//    [instance identify:@"dengyazhouabc"];
    
//    [instance enableAutoTrack:ThinkingAnalyticsEventTypeAll];
//    NSArray *array = @[@"123",@"你说得对"];
//    array[3];
//    [instance track:@"testA" properties:@{@"list111": array,@"list222": @"呵呵"}];
    
    //此时total_revenue为30
//    [instance user_add:@{@"total_revenue": @30}];

    //此时total_revenue为678
//    [instance user_add:@{@"total_revenue": @648}];
//
//    [instance track:@"abc8"];
    
//    NSMutableDictionary * datas = [NSMutableDictionary dictionaryWithDictionary:[NSNull null]];
//    NSLog(@"====>>>>:%@",datas);
    
//    [instance track:<#(nonnull NSString *)#> properties:<#(nullable NSDictionary *)#> time:<#(nonnull NSDate *)#> timeZone:<#(nonnull NSTimeZone *)#>]
   
//    [instance track:@"testA" properties:@{@"nick_name":@"{\"data\":{\"show_download_bar\":true,\"orientation_angle\":1,\"client_bidding_aution_price\":\"\",\"reward_amount\":1,\"multi_process_meta_md5\":\"e6ab9fa6-b5b6-46ed-9acf-852be22c14c9\",\"user_id\":\"defaultUser\",\"media_extra\":\"\",\"multi_process_materialmeta\":\"{\\\"interaction_type\\\":4,\\\"interaction_method\\\":7,\\\"target_url\\\":\\\"\\\",\\\"app_log_url\\\":\\\"api16-log-gcp.pangle.io\\\\\\/service\\\\\\/2\\\\\\/app_log\\\\\\/\\\",\\\"gecko_id\\\":\\\"\\\",\\\"ad_id\\\":\\\"1746204965481473\\\",\\\"source\\\":\\\"\\\",\\\"screenshot\\\":false,\\\"dislike_control\\\":1,\\\"play_bar_show_time\\\":-1,\\\"play_bar_style\\\":0,\\\"if_block_lp\\\":0,\\\"cache_sort\\\":3,\\\"if_sp_cache\\\":0,\\\"render_control\\\":2,\\\"set_click_type\\\":{\\\"cta\\\":2,\\\"other\\\":1},\\\"reward_data\\\":{\\\"reward_name\\\":\\\"Reward\\\",\\\"reward_amount\\\":1},\\\"icon\\\":{\\\"url\\\":\\\"https:\\\\\\/\\\\\\/p0.ipstatp.com\\\\\\/origin\\\\\\/app-market-data-sg\\\\\\/5b840ff2d1f1910acdc9b8e13c2a5b82\\\",\\\"height\\\":98,\\\"width\\\":98},\\\"click_area\\\":{\\\"click_upper_content_area\\\":false,\\\"click_upper_non_content_area\\\":false,\\\"click_lower_content_area\\\":true,\\\"click_lower_non_content_area\\\":false,\\\"click_button_area\\\":true,\\\"click_video_area\\\":false},\\\"adslot\\\":{\\\"mCodeId\\\":\\\"980189910\\\",\\\"mAdCount\\\":1,\\\"mIsAutoPlay\\\":true,\\\"mImgAcceptedWidth\\\":640,\\\"mImgAcceptedHeight\\\":320,\\\"mExpressViewAcceptedWidth\\\":640,\\\"mExpressViewAcceptedHeight\\\":320,\\\"mSupportDeepLink\\\":true,\\\"mRewardName\\\":\\\"\\\",\\\"mRewardAmount\\\":0,\\\"mMediaExtra\\\":\\\"\\\",\\\"mUserID\\\":\\\"defaultUser\\\",\\\"mNativeAdType\\\":0,\\\"mIsExpressAd\\\":false,\\\"mBidAdm\\\":\\\"{\\\\\\\"cypher\\\\\\\":3,\\\\\\\"message\\\\\\\":\\\\\\\"30VpADLPrwrM2MoZS3NYueqAxkS2wzkx0CK5HT1nktUM0pCKBfKu2XmFuVIisLyoNGXkK41Ff1cexhkN0zksDsJJ1O8VlN2O9+GUhOjUCEN1pu1XyHcF7bp2pEYwWzJNKtWmu8xcCiDQI2ByIuuyjYv6nekqhTbD1gzkS4BGR0c+jSlTPD6egIro1BRuSHh329N8OtUsSuPOi32eZbq9CypsE\\\\\\/+BW\\\\\\/5y97Vxy\\\\\\/xHIZeDb6XIJOtxkDLhZW7Dfaxz+jn8r2q\\\\\\/yOd60\\\\\\/cV1\\\\\\/MtByFTglaeJy1tHvEbSbICK\\\\\\/HPSp0YCQVwH5RQdzZcsouDgKfAN15nlG43q\\\\\\/EDkryCq8N+eyZdTdzMyXisUvCwX343RGFZDivOGVbzXWOw2XFHxZCbB4G9wx8JCJdm5yQ9\\\\\\/PjoiROAmsN\\\\\\/UKYBN70kU4COMtLvu9JcSFdTVZHLJ6FDct22\\\\\\/Gc2RKklEt0jNb2SwiP7qnFI33VNouDMPxwYLL4g1YFu5IGHAPSh4TeLkezKbCkJTaDZYGMWGLbBqmGfcal\\\\\\/ZGIW7WC4exqibPFrimji42v8IocgnKrrfFw4G8LbKU2BGb02fChprN2NqT6PPoQhQEbGdX9aumZtp5V\\\\\\/uL7xyRECEXF9fCj1qQA3DhK9MC5juoCUh\\\\\\/OA0PtSwVjrWfXgPxtDJo5FdaDori2AeGpDJoQMvqSWzhddDEkbrHp+\\\\\\/gl8PjIocqGvnM5TQ7rPTo3gHOfRG3Mf2cfI2onNm75Jk952DcDFzc+V2kBzKwGjTbg0+rBfwacwtyCHYIdTZ+DEBSVLadEvENVJPBFz7DaIFf2jh1UIGdSyofSs\\\\\\/N9ysHL1AglFFK5Ig8FGkjUQyJCHVtdUkIuR9jVoce3\\\\\\/dVvlkhiTfLx0JHX+Wfo6+kN5oSi+O2sBXrpdTHyHo4E1NYgqXiO31HQxNq6qTBYXLTZ2mf6ItCKWBQMG+o7ynx5p9JzfS0ZAFGhQq6RrUwdbAT4+KmD8h63WFETx1faC6YU1k9rQHafokvMo7tEPUZ2xRDTWiBsMJz5iLJloCmEoSWOpoH+76fIFtk9f4oWCjsSOInnZtnfuw99k+aEB\\\\\\/z4EIwCesUA6eH6B+BSZdvkqDBpZmxM5f7zF3kPCm2xUS3wnuViWBdDoxY6qDdfcJ367w6B5hrA45E79jgJABL8XBdfPsi3LW9QkfO06ZVQLi31VgW1sxGntBI5lALZMScLbMS+bTwjUrLXzvBc0YrUtpUh2EZr\\\\\\/2QspG0ELA\\\\\\/9AkXFgne5ilu0cHnNjZNqqvrSefbSiCRhdCfLrLteuSJm5JjYJdiRmTS3iSS3DioBc4isj3p7OgWw+Xqp7NALYXDJ28OxiW3d3uYuOG+eRMuEXqJEDMoqRJjyUQo06W9yG4bIc5QmM3GGd7XiB4kqHdBBsFUUHvBfShHOpcQMJB18kZBQ1zqJQvzyoDQUSNv04jAvBxMeMbHzNVFP8mdndsla9NtC1J0t5XutYc4k5435\\\\\\/iv96wf4T7KAmAkgHmVDQjInduXUSQoU0nlz7uCr8p+RH7TqTyJ3nPNTkVMoT90MZttSg3buBW5x2h3nZS+vIBQHs+voHqCzotAjPheL5qk3QKAIG5zu1Zi57vJGwz7py6W6JJYhue6lsV1fDvjbgA4LVyDXEG2TtI0zZygUXt9saeh4C\\\\\\/uNfrkEwkmvzsmsqlYEPsPkn9SYG1kEEUdXdBCgBm+sqaAwLLkoc0m3UVoe5I1OAq2PhSQP9JjDnWJ7rVRDfavv+h1kFjnZ8+OmwEsUEr+13GtCpNdAbhZPP8LzuUq1mm50\\\\\\/BORfLrzYueNbbaEfiDC3ZxbfQyahUX5usFNYQD1raWEdBDksTXlEqvqSTb\\\\\\/4FenF6f9bfCBKKtSJrHiKOFFHCo0Goxg5tOe0mw2WfodNCPlAUx8eugY2wi6yNCCeg5IGsrhevuvGdRfsvXek5xrYPgNfqMikNRi6ldKUkzgTuU63arS2VFUD3f93FWUzR26JFGyyOnpDxeJ\\\\\\/ntdMW144RH+7u9VsC0vdaX2iIajCrVqZWXtsvCvNtC8iT37UyaMK\\\\\\/U7Arot1g4UQJv+Sd3CKpKElbpqKBdSOO1HLdqrnQRZXm8fGjTN5XryIOB3fZzmToOX6R2+Sw0uhJ+cf6vFbgdpDgBgkbgQb3R6YVJTdYHrIaxMk7xwyyH6\\\\\\/MV4hMD4Do\\\\\\/Lt62s4Ghuj18U4vtIkK7bgLJ14Cxi94C7o\\\\\\/a2AMBgavfe2qQO\\\\\\/qirWOf3VbLlnZUu+upuh28Cp3oPzqPSFeeJ+gak36oHCLaQepYBoxFeNxHRFXzXURmmYIHukRpw5tE+YdBBltuKK1LJ6BgSS0hNGlsNc8gDdxfcc47zLYOZAmiZ+7AFSfcEjOQUxGdu\\\\\\/HDimQAZCBy702kkx2fJ+B9Q8yH8LUizLkuuqIlWfpEJTI2KTKXwq49pmpSZC2yJ4qP1I2UgyvwcEz66LOUKej45+3s36YXiK7RXbo3hnaTHBsrYVdBdVxZfO4tHgCW\\\\\\/FskApG9YZsWywNNoqcfC\\\\\\/8\\\\\\/yqDucBdOnURBHjdzwtJ5ZSJNE1x9LqBo6hnOqhVsB7icPpwiPtAuxr3Fe30OU8hbStWyvDQF7jwcSYqBO2YhL5vicMuwbhQWs5nOPlC5sQUQGDw9UoaJlQI5sV4x41LgplEChW\\\\\\/8szqNuACFNNvdYAETbbyHBiUJs72CsY0L\\\\\\/Ev9QdpiMRHXyPzYsQGQqSwxQwt3T+TrTT01VEnATtW8wYiEI08t\\\\\\/FRryBoTPOPOS5cnVxQF3we+wXgEzitPgF81IQKkjuf3sV+f3uBE\\\\\\/N3dh9dS+noBWUbmJA3VWwuiNVDuvX\\\\\\/umO3gmkdMNbmVIClSQ\\\\\\/7Vm7gFHf6Rq09zGVcBGEzTLk4iaEHcQdrUrfQehz4UK702UCv4nznfYn7PmZLKppuImwZfqqAn3BJJF84WezJcSQBkahAK06S0b6N8m\\\\\\/ShpSEiyJ9kwuyHllIVPkU8EBNrUfw9uSNrw\\\\\\/IAVWFt\\\\\\/AxBKgVurHUTCu2U69DtXnI29rrzb3mIk5lWULQtmB9y\\\\\\/NsqUKk3qk58M4ampuLnhw0fuvnsXEo3MgPwPyXHUlUqi9PrqvpmPOoN6LOOEJLML3\\\\\\/WlSZFdWERhGtk74H7I2iCod3E7+5t\\\\\\/+t0jNrr5HrzlZlDF5I6oh0oPdbwUcdfapRzAlsTwgjLNjZaz3ieDa0cYnIROYsO+oSPE33SvZ6npx2tEmo755FC51CPnt87SZPV5N1WRZomf9OzuPKGcNKNY+vkk+700YCIhX2eY\\\\\\/f6yT0C7cXl3D2aNcUBc5kBul7afpcXEwopLL9CKwyL8fD6S\\\\\\/ilH+9sz8WvdwQKoaeWNr16uXiNzQ2Iktvc46H\\\\\\/mO6SIq1usvseaIxsGEBMDosuBhRL3HJqi\\\\\\/UF4W626rBT8UjaZ160VHMVdEM2KF8y5lpU\\\\\\/21jZgJMb48BTyiMhrXiATiIZi1a\\\\\\/afX+0+g19+TQYZv4ATsRhqtg0\\\\\\/g9xvkqxS+UTcuV9VPNeBt6EBDRqQngus79O8QCcagZ3uk0vtkCJqvoVGbaMFplX4LYJxUQgC+eRGdqdqMxNRSJga0399mpHD2p7p2cIwEWhb+1xnjA2pGS+SBX4LpMpaTbgJd3YTQYhv3dV26UK0mGD1m60qMA5ROBjDESr8ZaRZvxfP\\\\\\/uvHICHYUA6EPOmqbOC5UDiwZqMBNZ2IoIKihmmuau3E2rc9dN24M3RxdEbAax7OWZr4tL5Ft0shq9CexQ9nclyfB3vT3jW58JB3N53pPJI6qqZnxvOdg8zd3Zb1GOh+NdxelEBLqWSZ8lYj+rhazbFSNUxgx\\\\\\/zTtnap3E64jmFP70Q3ksw3keRLK18UsV663sY41BcccmJ0De66FVvRhM6bvSOIkoygnCGai91OTwEuBck5HC\\\\\\/cmJQu20N8PrRPKopaClJJnWw9imy3lxD34pstRXCdy1k0BdAlz3cOxt21ZWQP+rIR+7j1TQbUeFeiePpB\\\\\\/sjVzEKbjsmVAMbETOxQrpR7sAqZXBszCwmzO8\\\\\\/UAhU42o1fJv5F9jiWlML0VjSi394dbF\\\\\\/P6i4RJifZ1q3ulOEWsmYVaBWfcFww5uHcU1q+JpBabcL8wRO4E+oJqKdjOtGi5VfH87cCpiKD17BEJmpwveSM9aWKtlyM4EEQS6eBQIz8s+LnKh697t3MklNofvlp0vjf9n2HA7wb89qGoReZofkb1a262qk86y33STwSKp637hmAqZQbPwdrz7XNFWnxGqJtqa1OQ+bmJMCRRFgAAV+qe0JnGBNkJRGZmMJamd5f7logAmvy5VqYWpoN8ci1HLTBxMsebokOoIL2cmGaPqhd52vSfgl+\\\\\\/CFIcTqLUWSQbBT0zHzFNDxi2VqFbIV+kWPEO4+vfc5ITY5m2tlV7+94LCa5HIpMn0ic99OX4ev6CcC0bLOOkjhiKfl1QKZ2DP+1pi1l1L4u4te8AZR3CFGWL9VRjtQIyg33OmTmgMksy68QIuM7VGzbC8T+rXssXW0pxYjU4utODJ9yjilzsQTc\\\\\\/jDxAKXYjhlZ+kXY+zg5S9KShBFWlDqRb6lfLFouFzUHwI2RQaHpcHVj4Se\\\\\\/Kv8qg\\\\\\/oRwxrSXU3zMFmX53506QGP6WOeABh31Eyzl0BJEHr1X97CQo0eF\\\\\\/A1ejIHLcXeK\\\\\\/hyVsmgLlrR\\\\\\/H4ClcUDH+ee0uAFA5mggl5daw17nS+d+dDSn\\\\\\/sJryoVfeHXl6B+k0Y2bInwZ5lCZviZElbPnZOXDVascoiyQIdOOIQb0mEWFZVoV237F2P9pOUol0KCcxFtwnymSYfGqrCHkZQgNhUcjhw9WOe3P6FCQmIBqkLi1bdOUc7paqGa10n7766LfI2oA5Ht2Vl5VRdQ\\\\\\/rFvxGglR4b8iqIGpK98pqRFCpAojeTBh4L86+a8NeRZSnWDLh73L8jITHQoK8XpLgkbkCsJ0Y8GUzXCECWWOZX2eVY1Dn332tGySHrpmLRtd16bLiq8Dd\\\\\\/XJG9QB+gEgo7P1KAQpaYyjoTtXgvAR7o8pPyCykM15qmbyoKI7YTuZeH6Og2tmPpgczRfMaNKO7spj1AAUt9AWirdcarp2WRCZy8Tt0tfRnajF8NXhdZwE6Zz7UeINn8knuOr7EbPaWymBLgQiR4HFUvh+IE0Z\\\\\\/u8qBPdiNZHJqLCpvM4yiyVB5QhorZbZmh0cWPWRPn0DYyKxdDhdiIX6tKfVkkxluay7mbEdr6FpofLr94e8OPu6s4AJxqg43o1zrLlycbWRU11ea\\\\\\/Wri+npf8LeLcp8Cw4UVuALvYQ6oTKIOjJC32KXboY1s7WCZjJVXnQe3NZhwPOxc3B2f7KUIImx8jBXKsL2qCo96fiJnV4Bh4lncBwnOK+FzDBGVWI\\\\\\/JbPK5\\\\\\/eMrMaDjgjFc6ZLwoCO4M+GBJ9s+yeTAZXb\\\\\\/3nLyyGSoKeqXaSepVs+opk2+EWoZHBp2XioJ6jf8RgdibHB7I3Fr3cx6K\\\\\\/b+aw5FJEe5gI1DB7ngIdQm3bEUKshcUOqzLx7LSfIpnLShy1mukNFzAX\\\\\\/9sCR0i6oRv\\\\\\/FwpaqB+P7fdJnjxYzCcqgg0YS7TqjstC0SrdwxdKER2\\\\\\/qLjeMaLnBOhHba5ly8CCdkx+g8Prv\\\\\\/vrrJAIiNEJRPU3k6CN7Y2hB33RoopzTXbaKX5cz0nNmNfDJHLALuIxA6y5NrOZ38h1X8HaVXKRc953EEUks6FflAFobkGgdePSPYJG8SZd4f0FVJVLjul33eUdvUoJ8\\\\\\/uqHajoZN2VYlmVpPcXrW4E2TYt+SpUR5REQH\\\\\\/SXMUyv7QxY0kfaihIxH70rafH+BTEMYlw1hIxawQDB10RiAQ4CZvp5epleAwDX\\\\\\/qXMdgQcXeO7wTi4SRvE7pwDRtZl\\\\\\/LsYM2nqAfOaa1w426kvpuGusf91KPCsyqKz1ec1fwr3IFeFJ8KOutFVFpZOX0rTGluF8wjI+dQQCf5D\\\\\\/9WOW9vIO\\\\\\/j0lRGoxV3YnUKyNBx3tEozBL13QvT51Lma\\\\\\/om1CBvIuaG32rfa4S3TxYmkwN8Y\\\\\\/pci\\\\\\/3nXNr+XWbGykSJljKe4bJMMsIOZ2BXCujYWjqOin7r6WgEz69ImXnnqQw4ro5b7dQKtEHuKtA7JZrEn8226CZ5DiImxjSiN6H0APaPp6f6uT1kCaQ7OuTYrMs91CMRu\\\\\\/jVqkXWhp5bsPpq9T7+Fp6JC4oawQsKnCNEzpYwSTb2YrgpHaKJtzW5M\\\\\\/X8agZMZ4EBURcTQ6FcHnalrzECR1+NQKhsLtQ4Gl3BKyJQfblgVBNgEye0oVndjgSH9L31MD9GuCi3Abnh0Xe5Eia7FgPPX4FDhFogO\\\\\\/0Bf72uJfzJOtPy+9ZN4r5cuJJUcPGT1st9j2F8DhIjYDIvzvYYA5BSlVuvsbxuaLJayPWfXdz+YkrYZyJVVmlMWc9NQTzcWAX3VGDVrwTvx4zzUuhF34srWUd45YvIkB6EvJ9csqP7u5Kw5mZVuF+Cv3UMdym58asMEFcm\\\\\\/bK03wjqPz930qhvpPLjEyiefbm9Up6DQryOFC5SzPft4E662Q+gMdLMPJ5OdpZqabLSgyzVKhSNxKxWr+fTlsNtxxp8+tAeqGktEult71GkJpwrrt8gpDsiscu3iD4BfjaOT0MaJlPxPIbouMYGmEhzpH5qsO14uc6KkZsUY\\\\\\/31abE6GWLLzUL7jXaKmHSlNKHer6DKYSDVV3yWF5jYlVIijxjKmNofxcOXXdJtBkG5XXVbC\\\\\\/giGwHOSm92tDvz2hsOU\\\\\\/O3vBu1QqIvvGj0AmDpTSstPVV2XEVQTZHX3zMQ\\\\\\/ldMtmhfm\\\\\\/hJBirwcs+B8Zn5b\\\\\\/4xdTKc8GeTgQ33OLVBJhZIIdAo4B9gVkn8OEv3VSFplGGkDdsqGKit7uWOPqFTxpyz1xZok2YyN1sF+b1l6C6JaufWvTuC+DcSfz7fdKUiL2YFdS4VUUBKFm3QRSHmYTAQSrmU6j8bv8UhJVHlilFoFX4iRaY2qNSGotSGchYwYP+0D9GvPHmWRwVmhNnIpQw7V2KiAeQY0lLzsv0sOG6wQkO1gXgZmOj1wR0i6yBe74esKh8+hBRUNvDheYUu98pHJkod86jIr3SqZ8XNvQeK2sAiJGHb+6BELO2QeodUJGla\\\\\\/uMU4T6bqipHGB66bOI\\\\\\/227vQyqoMjM41ntWc2AEWOK9\\\\\\/dKFZ+dflVPXXap4tygtF48uKYnH4aWgZL0Z4pbf5J1IMr2WIjBfVyr7DO466QZ+5iDk4qEelHNRKG8baFTRHZnAQgw5ulN0ahilTa+rGXCOwaRMAVVzQmsTEQ4ei0tm2qq3Ux6hcg3aR3E2pSxNqmZbyntcUJq1yl9+FrH3qQ52DqSBw6IOP455YP8UynyfBlF4qsntjDiX856UM6sGD+nIKmwZydSCmkxDoyEAGbuVoRmpiYNmIVrBWCBDLrsTtA\\\\\\/mqUl71HxNrzCGp2nycgNoMlxQbhiiToYw70ANhO\\\\\\/GSDdpZNeHD261RHGYJJmo7Lp00lut312NvqtN3HwEU57lZoG4HLPrSZ\\\\\\/4NbKlzN2oZ0Uc8DxKlxWA1Zgk5KPgXQO+83ToIs8FtoahWrWKtjQI+dYU1Y8Lhyfg3MP2ZPMY8VrVo5XwxEYfrY++SG510S\\\\\\/2S8JaFYfoBF3m+C97lq6icitJkvibBZhRfLfvga7ry4BoUkcqR4\\\\\\/+l4oGRq13EU92HA60Sf8nUHO8DJpbbN2cBiMV0akcBZsigXdl98to+h+TfiPonWLQP2pnsqfoQopKcazGXNQH4pyFPNRPVBsiDxA7K\\\\\\/PgYJ5oQ8X9\\\\\\/2aOrrH66F19YO0NiWaBKb1K+poyanUpaBB2\\\\\\/vMrHXmMonl43B+pDMzswXMKzU\\\\\\/kDzya5WmZyDQ6KE3Zq2pzcsHNGX8pOg0eMvELQ+UYiFDH1Y9tNe8h\\\\\\/ehFtdbB6b4Y9Id10LM0ogm482MLe18uSP+6805Qr3NDwBKq+mG0cMl5dd3NFqtC0Zl+GfRxCyPjahYveC+D9cVxhwPcv6SRJdGQqe\\\\\\/kDj0olA9HDLEsUt\\\\\\/OXnCQx8l5wbq6pdQZe8JzbzxgI2vOptCmGfsHKyJjTxeKF3qSDFm\\\\\\/loZ8HHVS5d5CM33CaF+cdgQnItR59wnVouf7TBfJMY7QaB70IIjEeJkEXw\\\\\\/kwfp60HsxEi53lcefdQBOHEbyKF3EKClwBOSMcFr12RofqTC9Ft3krjhZvJr6RkjJWUSWfnGlfO5Kekh+u8oGYGtkgGFPCPT6YzLtLL6tYpGvzYivUoFkGa2XnmFlIgo\\\\\\/puyAu1vM9QJkYDlPGBEDbXqzLAp2RTtQi1n0\\\\\\/5M+eVRyYGT5SOW2rwLXe3RewWrWk9GhVlrEkdGXjCQoR6ST2yMbC7T+r7vRNH65Je2rwYTUi5GAj+haXPF6z3\\\\\\/qfjW8\\\\\\/qYAzRnHxuurR8+7vQnXHZMJF7UxjWiQc5O0q+T5LULbjabbmjC0CN8lvaA1ciQTXCtG4TSuJp19Tyr3FVpFc3RJ4aaiYmt\\\\\\/BdGp7\\\\\\/N\\\\\\/t3ymiE7\\\\\\/fL3jIzplhYFOhA2p82fEMCr\\\\\\/N1TVGeTVvp7gWk8i14TNfpwWNe3hLIWJ0l2hguyc+HOzYKcx0yrgCZ6JT7yYfAGDxgMvNsx+TiNlJKjBOiD06Tr30TKt\\\\\\/jumss3XtMbcyF5tgzyhGpumzPecBWw+fvk0B29d7fVp\\\\\\/Bopyk5vCTIJganAJQZuxWasqq7WVcLkvZe8\\\\\\/nWI9jp2ApwGxpj0t7WSkjaQ8pSVMs5dfFj88NHTtuvEBj7a9GDap6VPUCQ5MewnLZ67umzqY9FEuXf\\\\\\/XYgWebWKYPp7xvej63cV6DW5I3hKbpejBIyWubgRU3ba0+uzjK9sZqirm6xvus3Xnz6EiFpgm\\\\\\/ZMXAVOqgZTCfxxn3Fe6P20rZMXJ5i05tV1+5K7N8iHw0iDcBb7WVscdC2\\\\\\/uonO7hSL6fwyL4KFREgZvHWWUek4xuZAetUdfShq+rll03LSwCdkzqtIhKkgBnyRNCCu4KC\\\\\\/JBvk86eNMhunsUwE2uk8xuOdh6nov8MAJFa+BynHECSHoOkZMTMFjAZ6NwtdsrYeh0vHVIBsirs6AcTKARcKcX8Qip8kCk+mW+WIRPD9JUtAWe3S\\\\\\/pstVs2Ackfy\\\\\\/DZJxINV1CDehiPe6eCys\\\\\\/FoRyrTECJ2Nr7ad+p1QSkf\\\\\\/7p6qDv0JOjbo6AHkCLTnWVvmObKCSOHmUrdfIBasLPWcoLnSzwoJtlRMFigTbvJGm1RdFsZXRaNdWcbC7B8HpeZdarNopIYYUHpOr6Z8n3rSyKnmeoV3ct7p6Cob8ies8EW\\\\\\/MNuqowwYjDKZUfg7DGlvMxOe4s\\\\\\/PlVYkSP8Hokl+AM6Akq1tPGUQxillobTsGPgOE0Pe\\\\\\/Q\\\\\\/d9UVk2xpqb2VNSLa8Vmenz8+bCc1nGm12hgXz6f4cXHsqi0V4OQuCdggCDW+NYdUwVaALXIBtWeVbdqeDH6eMJ\\\\\\/GkJV\\\\\\/Aaf1lFQmjXw4kkFQhy9KjP43UldWMPPGtuhQSuLfJ2T9CYfvLnFeoQMgcCQwRxAjGjbFJsI2gLWe9JmtvhcBtx0GSNf6dmbZXI3\\\\\\/h0neskvvjCI\\\\\\/FflETIOKmtOJjqMX8Kody7kbWqoLIs5Rf\\\\\\/4kdK1JrjQh1A2+fBW1Ctoj4\\\\\\/17Ed2fS4ssYxcq5wdELGnNmb1Vf9DtBLgyGDObioD7IPrmC0NT+sKIqrC9PywOzt8Q++cBSMtRS03rJiTWVEcGDPII8Kfy1dJTzGJTSi7sEnadySJBLK80fK2buJndnfNeMhTl3Arcol6CMfzSiw7j3Z1JE30NSIxgJ442bnDQJDjzfRewc9sDMY3rlBi\\\\\\/qzLcoMp1LYS1pMYs8x+eT8YnUXFkBVAG6VtrO4BOvPVU5bKHluvyMDAyJN9iIP85\\\\\\/e6CPkSb6mLzzzfStSPYG1r\\\\\\/YRt1c+OzEsp19hhHhYhe77G7jbkgiJaQbW5TtYvHKefvt5R+36peHAQnyexxHZ5VCWKETfkHDj26e6WejNG0iYVMiP528obp283p1vZKRyv1d6btBuxXojO4eZ1DOoyi8mExhq8boJiS3vaDXnjazB\\\\\\/hOKS4xdc6VrPubOJnGPohCJSnCugIjGDMTLIiGh\\\\\\/R4RylKEKP+W34wyXAKchuIDM96dVJ3DhivnyxdK0ixCQ1OjnhC0f\\\\\\/jo7\\\\\\/ne+6UM5jTJLZqeKRU5j2FxKYZOFmi2jM6LnGz5OIl1XvO7z1Cxng+PtGb0i+dvfEtFyan3Hr3mS4QLB+qy0Bzrnvz7vR89ewOxxLAIz6YL97drDJTrKYAdmfMvFaP7lUwjMwj4+4H11CH8yhvhbUIL48RmSl+pc\\\\\\/8lstnZlD\\\\\\/UenoQ8giijlMrOtMkIpoT33OCD5BaapM+phkaOQLrv3vB\\\\\\/xKQ\\\\\\/izBB1HU5r1D64NCJJ2pZAXF9UwzRKyT35vn2EjaMkoruRdT+iElls4B0TNT8M2H6O7ei5xPmPzwgt9NOndrpYhYSwf2\\\\\\/kUJK3vHQqHttX3KTgJiv1nhUFwm2ShJJoSwIyEGVlfaSjigmeY5pIMYM54qS2Gh4Xa1Qr1sLgxZXNSWn+DDDod9Ou8x9GoxumGfpUxAu+K9f+iaVjeCl2Lgghc3A\\\\\\/MjpZsH+LBfJ1fr1u8np7pRxnxFd0s48wYqOiF821WUCLR5p7f0vW5DU9l9GAgeJMHKoq+3sbVYb\\\\\\/RnIpASlYcJeFOSTJPWWsM5foN3KFo\\\\\\/mwRQJhNUD02TsKkmPlm4IU8XPw0tjMsC\\\\\\/3Srkhk0movsUtn7VynaCGJ95upbi5pmqq5zrkarB1zvBQyrB9gCPBHq+BrbqN9cIL9fuMYd1pkx\\\\\\/iPaB\\\\\\/3PyP6lmQMosjcoOY5tsOAh3pd+POhojIk91F8lCz9mKJUxU4ayks8Oy6rEkbYOJQxY5sEOrYbSyxqb3VH1snqtc1Ra3xoelvww2sxndoV2gPfxv83K5IWRoFun\\\\\\/6RUE87jrT9phDg1FxkTxDATsqeRZ5IxQOBD66C+TGO1VI\\\\\\/M58GBfgLB\\\\\\/hpqmRg5kdwL+644v+hiAudH7Xlu3r15CMTVn7ybfxZIEsq\\\\\\/3BRlr2\\\\\\/+vovyxZHPQPgg8InsOFPjT\\\\\\/bR0e9FPKu21esmWd\\\\\\/etYhgQE0NzTq52N2VbGDugcCa27Xp7BSiVuOB1QefR6+3EWJ0BkE7M\\\\\\/hviEB7Wy85ZsQDtTAf\\\\\\/EHwCPwAmiOS\\\\\\/isUpVO\\\\\\/ARb4dnJzOQQUv2XeCZskZp+OV1s7y5ZSEDV0Fwkhd8EnmfSmi5ZWH4r+zw06NI2uNIeU+rC\\\\\\/T9XR\\\\\\/9yOKnw2Ay6SIFc0H8VS5KijFfhL4w8U+G71oHfDnwhUBsfHIhNK\\\\\\/tsGyoAi12QCjqf5Vo0C5NrN1PkyYIjK1Q8PYWNpEz38ovu1z3brwg7rWcmo7VNp3hjzS9tKs5arT3nB4cHo2k3cwawRca4HGqf7KfI4AeQLzZ4EywW00M62\\\\\\/XQnQf\\\\\\/13LDRvLGH7i\\\\\\/f+YQ6NyplGn0Z3uVkR\\\\\\/9op5+Qk5fJ4mwdYyYa1TEb+mZEp8a4IfIVgBy5fOXw9bp8ZaWcMR3sQ1cyUqzkIJ55k3ZfuMup2kfH6efGuKTYgl3jQK58TDD1hN7cZSLjoOzhQLiBWoVZfmOFugpqz6+Bt9tpQ5BjlaNMeNxLjTcJ5sueTdgh0azYvHghv7wad0i3RUkMl2M4JJJuQ7IngnZJ73pntZgsqgaeM3C53RAzlp6HjgIRuUMcjM4PfM\\\\\\/JRrvTjUjGYfhg7a96w2fj6svu6tAPCNiltrNVCWc3jQGbnRrgx9Crt8TujXC4pcQwW2D+9pDml7bZqu9uTRmg0FycFIoxz4kCEdQ459YpVfzbbxFHTD\\\\\\/b5XihVBvPmfei9MCn4OmRorT+GOUPYypD6eoTGpSEoCT\\\\\\/8ssNTAXcRpWw4IsGUfeBY8NyqDMj18doQ1xLmnWvVtxu+z19NK8a1TXyneu3WmGUUUfL9xvGtccOf2bCctGu3pHwULplGjlFySrow7MkzEq4BuO\\\\\\/2UnRYGSAuAN3OPfIKfcDQU5P7lgM8SFL0LQB1txZUvhkq5XPAmUj0JByEEKvZH6dG3uz991Se982pZh+igOVK3+0G2TKO+SDOAX7bthh5viCiAtYVv+1021nb79OeKw1qxgi7UJJ40SbXVm2JVNsBG9QNOJ6mBdnLlDkKLFfaW7+ufU\\\\\\/Jvvb6awzTK8zlq6Is82owY\\\\\\/Jo70VrVF2g1bmbZeeSa\\\\\\/AL925dHY0jNE1U+iS\\\\\\/evbZeT\\\\\\/oIf27gr4AGDaoioUmkdTileRIOr8EUygXHEzLB8xne5vdZszmPKCtPgdNlQeJT2OYlRC4+z+pNRFyEnK9nphZs95CZA\\\\\\/K04Vr8QmcRjcI2IZJPLwCtA6m+ulS0QNuWuXLtQsm1+RVkE4MpXzKGrBR7UpePNGeGBRJBZKvam0KjTcGgQMES4X\\\\\\/IR\\\\\\/6aj4y0cE\\\\\\/LoDDKJQgnMR7EHCyrG7UtlC\\\\\\/H9fe36T6V1LXKHhH8y8RAMo9FrhqhECcPYMRfLNcxyb2H8k5Qfed2DW39SGmaN2N+R2RPo8KYtcRqFjbJ1UwkA9C8WOks1cqjHBAKLVD9yHinFeWsOa\\\\\\/lW\\\\\\/jJZRZha99huJXjESdy3cr2AFIdagIOCAXs3\\\\\\/ckaqHvkQ1SlCzgZOdw7pIno+ifN7\\\\\\/CeHHOsCiPLNL3l+VuV4uNfyBeGw2aGWh6LrOafKn0J5LVVSeOmeXLzX+o6NSpMpeO2iHGeBKQLJ\\\\\\/+PVzphbw\\\\\\/CGXuE\\\\\\/2tM8sEd5e4E3cR5tXlVWgeXtyE6z3laTxQPyoKcZ52tP137E72ZPE9rB9L0JSOceZmQEzV7fXNIljdl4Iir4D1dtxWwzt0YjKrO3C+2kV5Odk39aIXVgXhW90DLKjqeF+sP1v6icWJELi54aR8onabMN4YDOBWGaL965U2vSrKIdYzKJNwvaR8XOcGdaksaMi\\\\\\/Kq5LiIazilwWPgc8Qh\\\\\\/hqJHkjK0K2tMRYyAQk1Y1l34mXy6k00t069pM45LZd\\\\\\/+xVg6HYV8jYsQpynayQ3A3KZ5OiP6TaecAtjjZRCqXKaDPqEr5zh5Dk1oOOtuOdjH4495fS4z473VbHTs2E6BCYbZT\\\\\\/dA5cxD6leUSOhkFYb0Zr9jpuXzYV3DYfmppzim15NvOP8gNuiLJkGV3wNIt9aXUfQ9k8VcNPXnvvJSfLiMBSR+dGm39MxbAdARs62SIcXoyaplwZrg5XIALEOfyWp4Y+Ghlt2eyyyYTWR9lPp+SBNdHEfzwG\\\\\\/5EZGGyWdNktvZndcY2F5UsQZz+7cjIIQjEa9qb4xqS9ClmrWl6+ANo52rJhe3WJGHmakpfo3p2FoVRsgDQkuWeHH7xdX2rm1pHV2wLdaeesN8SPOcprW09gPMuOFErFWoAo5fra5dg7cmQX03SGGNBUcccDC+i3USJQuj\\\\\\/uGQyq29sPSNXkaYwUVRslhy6+WSxobnLQ0gV1QFI2xQASpfwoUXMkOeAQOBMk+It+AjroDZjg5MzcznU1ir3x7SZb8DrBUtlgSZfYKq32\\\\\\/p3sQcDbZ\\\\\\/Y7IjMuY32fq9pO4jXQqv\\\\\\/XGPGl6HcHyG3OXVElZtXr3jZVtBcSUEzTDeqXrBE48zFDSl6\\\\\\/hG7C8FjCR4srba+etadhMf+bvd\\\\\\/41d\\\\\\/NTctUH++L2XFQ1Y3g3XoVGkpq\\\\\\/H3jFH7HvQSW9e+AmFEPwhBmu6w4V8V3GVxJohqPTo+e3cFlbC1JkWp6S0MRNkSjiBDs8oY2RyiTE1crbo3X2I5l1SM6Cz0UYITzLrm7YT6Mr3VGu3b7c2mL8+YIhLS9imLnSe66iRHUg6QGj6B2mfE2onEZwX0uDH4jlUXIVlLgAptAEI5fs7ujkn6MXw7cWzQCYxKn0+W2tVYheis5l4SargGMFzBRph+XXk7SpiGK4pUEpys4vVMHbf4cRF7CJqq6h1XkKL2icvs0VLKqfXM0bdfSuqJxgErMYKyNzmcI5xlTblFxYYqDIREZw8W4d4xH2Mede4qouW1rH0wib06TKfvTtGgzrSwfBgk6uF2fm\\\\\\/j2Ym3hU5wgR16F6Se87voHt5FjGFq6Mn07+b5lyT5g1hYDAPnNbtILhvIZU1Cq177mqsass0FKXEndtB95RrS5KoE+thxWrSABzAZ56hX3wneoYBEhgI8ABuGUf2WXQ+YhVUOTProdaQ+abqd8mARVOSSnbyPXUJfE77lUhiL6ppZdQdr4jFi2xLHKgsy5DTylTWXr9yNdeT\\\\\\/f5dg1o3SZwf7G4ueoX+h2unEk1RfflKhs7rBG7OTBtS6JhxTYQupWszX6HibEcsP43JVaib6ngLXiJKHvH71IpuxvnAxpeBcx5bdxh6peZdWPqOXDTJtpCAZsKTV2B4\\\\\\/q8wZvVPAEZml7ZQNF+5nyiC+fSo\\\\\\/vtiuiHc\\\\\\/ndlMJ\\\\\\/SpyLl5w3w1YMeLmkjO\\\\\\/dHxByBBh4LylXZqYF750rai8pbTXbfxF6xTUCnFJF5jwWBGY2ld5jnTlzhRc22flr89CUnsPme4WZBYulN2p8GCGQZ6UuhsH0HHz8ysQKH7W9Q28iKUu04l\\\\\\/EA0TmywlzjHJJoAgHY4FuuCrYt6ubOSVi3Z+WDLFcZyNko85D2EAIRX+aLRIbZsPi8sSsviCdk07gcfWcGtuE1+XzCG8CukFAQ8wMGSEvmHDEp9+WG7cP8wmAyCke6tGjZGnAI+GfeMSWgBrcD6TSGE8IHypzVi3e8FyyxDARna1CgCiVZo2KxiqetvY1npwo2g4ppNBiuPZLUsiwLAgBjRyJhxIWZ2pEW5ATGf2PWIYeIcPXI4RHcfeXbxlGjPnB\\\\\\/V4Z3hnyN71wge6sdDZ096uq6d1M5DGqHFAa1A9dcjw1bT7zE+PS7gVrRpXXWPlfkipWm7ga3FQDhVz78DDVDa9gkDlnu9pnPXSY\\\\\\/hPlbZO98+5NLytVHivCQRFRsI1V4UWM6sgdMFX9X7Pi\\\\\\/MCbU6r53zvqxnZ26Msa1HeGSJz0E72NQhv8Yr0BM+8rJtPhnRZlvjG4NkSUxjQQXa1w+TRS2jjoQG5BLhf1pY5BvwySQBqcPEZSj+wzPX3iXQwdSYUAWGKULX0dkDVs4kyXn1wZTVNfg0VYBM963VfqUGPH8NlniSEr+dNUO5wXy82GqdcvVt0m0v6PxtUTqNIpEn+hRU3HvH6\\\\\\/HymDuzVQ3XQQ0tr9jHHQ+oXU7ODMLVcUsXL9FuOPd55Ajqldja58XfALlwSPWekP2hSkXVxBYHIWD5ePHgShPBmP\\\\\\/IU8zLEWkYqlZwDHtfwPsRq6Uw1bz7acXHeL5NTkZtPqsyfYGVdUsOHX4GdPOezuim1IOlzSgKW7aOBwAl70yrqb6FC2IsHtNc2z0\\\\\\/fYP7zNxTTVSFq+iV9nZUM5ACD777W0Ow04HP6KCfsARxmIFP6hryLmeA7GfaoFDcvCCKEhSFjwLy\\\\\\/zik\\\\\\/GKPOnehZbfeSPLNtvY+0QTateU21SfWh\\\\\\/T+I0jgPR\\\\\\/3wNnZAxvg9uP3c2+Rvv6Ir94qDizKiYXajj2vft5HFcW00laP0jccHp4WVfaJhxDxX0gOW0WfNHgHHNTs1El7JZi7O1547mapL8nCGJ\\\\\\/7DXLYXDvb6KeQKaIf1ZXdep8QO6ge37t0r7fZzElHffIMIjRW4Dy8A\\\\\\/Y+i00o7khEbw7LpIcHSxuXXtbeLnf66TXR3kYGlc51RyVpP5c4vvqM+dv90eUysMb+ClYYWyG9nZAr7J2SuYbj9iaed2GXCZaLcqke+Dqd+SHTPK9DOtcPVwcmCeGmar16yGQfyULjodl5hVzdBYeWBgc0gLs2pN428afj2aHj4gPCdWZIlKyDB6Rsmwht4T7Jd3Z9GHGfaS\\\\\\/JvtCK87aTOk+jdVyHHc3NNmSUBWgSrHNEYgorV6ShKKoJhM0xEwVer\\\\\\/zs3hXh4G7RJR3te15Dhht94fbNFa5A7+NlI8OLNvxqdi5k+uVCLh6\\\\\\/u0w9Tj++cZtyh9GXGRD98qjCr3ZLOy2N9XdvEyNDdW8v5BFP59eQXziCBShUiJToz2qRmWvHxjHj7crblX0Un7P9XM1p9L3Uuq19fpnShBr6eyEYhGt48YkXTyS137QWpJDGDCA9wkXg7rsg+OChcB8Rt\\\\\\/GQoZ5RGCtX0H2srIrVFRQuUiQr3e85XMSnC4XYGslib+K2wkk1otoc1nhh9i9HeWvRq8wLKNtoeFMd7YTl7JQrzmTB2u1lgz0aOzE3+JrCTJu0DeCIIGLqawIQqN6sO6G1MgViX1UT0S33zq6brJHd7tupcSksfolaWlHCYbYrc6f9ijaFsdHyRNndz5xYGh6HKiGDEL0Y0Wy6tBtUhkCS3sIMfMJUfEcAdwqeM18D\\\\\\/Wi\\\\\\/bIUADrh7hN8A5KDjzAvXVkGv3r2s\\\\\\/TKaGixXuCTOiyHgc9x+h50snl6z5VdwvTwSGe59GvHY19fEEBlwjG2d1Gw0y8zex2f7djb6jBIcN3UdqV9misr+PU2adxK+p4vasG9fvuSZXwhzQYOYY9uFQbxjikrD5uaevq+DX\\\\\\/TLuU4OWCLOrjVcoAsDmwfn7j33+4zrw\\\\\\/i3rfaEHsqPriwBPdM+UDdIeHihB6E3Vtav1MKlr5QKxb6q8uTkgm0nfHCYoKFwRu1tdNmuJTH2qeHzrznOxdVYzReCisObeDov12GRiEN7cyBcHA2DhYEGOP4HcBQvkRKfYMkJTypwvgDVLC23frR1N02N0dfZS1MuqHDcDnxmAjXO7ev2RjYuxMffatVSrbMbA5vTmO6zzb4VdWwf0ITraYHIfUaXKBXb1\\\\\\/l3HHOiyOsjZEqoI3Hb4ojDT3\\\\\\/n6yPPPqna7QWAvp2arRRn+4fMABA\\\\\\/Qp1ZbR4IbmmlcvlJZKgWAzPlm+u44SQZkC8u8egKPvl6KjvpSiz94xXLnQybhM25rkkr5agHXfB6bs9aW6z5r7hD5ZBJlQeX1vSA6UsYchFghZQDdOTQXVReqYgMWuwqIkD0fEBwSMwxOns7L3lUkSTSKnMLtMqm5z9QtoE1qDG52ID7RFeHy4s+gBFuwLiHPMT+zGTDGQHuC58c1ji3Dy0lenpyiTbnth60tDquIDJaBab+ilPxuL\\\\\\/+AzovMK6XNeMaiRFzP9aEM\\\\\\/Zk0Gz0YXqUoMO0vIXe3Md5E00DL4DGRpiMGIgrKHyfGO6csaHTA+m8D6HGx4j7yTDshiyPUCDG0z1loinMAcpVE80Wmjrq1xUDNPkzHvYs32xhXr0TK8XDwsPhkh9Uj99YVNgkkv+1XDe8fnr3Nww0MWV6P+hKDDbcaofiL49u373jKXz1gBTlwmPlYd34ISarNi0vRyqM2trBrfsj4pL0F+AZhis0homam8FmQM\\\\\\/cwQUtnvXvVxrw8BUhJv9LvCPrqqrOgCoiqoW3W6sO\\\\\\/tLL5n\\\\\\/hXo6H3ih07VV1JO9hh\\\\\\/elqYOa0XBsljenIrAlVoUGbG\\\\\\/hdYruGBuwbvxxnqFKB\\\\\\/SjpStul3lGJelMc2Y7fDSkqV\\\\\\/7s7ZUMMm6y+xcD9H7xcmz\\\\\\/vuh9Cc\\\\\\/z3MMx9\\\\\\/Xx07oFPapCmCq2ZBs0stA9K+rTNgXhSo3xXLQMxQJgIl\\\\\\/qAUQcivQ5giJQYglob\\\\\\/CnIdLMk26\\\\\\/Am9QKjbaYR+z18CTSsMC4i082TnE8BZVpeKfOHUluzTCKacNWsrc6FeulMKg+umDDVZJ8GLng+ttyKXpAVF7Y83lBu5+ULuK\\\\\\/5dphYuA511YlSSN3\\\\\\/VhNlnNcIkqtb4p9u8Vh5NLFH9gZQBVmVjrK3SDDlKzRqUjrSDa11qhoC2T0YTg\\\\\\/\\\\\\/gqEKKmcYRE0pdDPO6n6fhYp6SG+aJHu\\\\\\/nG\\\\\\/SH05Q4dUIURTsPwZumiPSPRmqlv2IPNKVIvU+MdHqns7o\\\\\\/xw\\\\\\/Z8N65u4Jrl\\\\\\/yvmhaS9sFk7EYdwq8wJE48cUzEo+PSYjL20A5PcUwEVUwZG1sZyuF19ZJea+YCB1VK3TgpsH5c4xqN1ptHSCbxINvI+\\\\\\/hL1\\\\\\/+940HbNBKY0FaRMBEI7HJgx6afp6ycY22P6jsL8RgF94iYz9dZ9KKAzGMVuxd\\\\\\/gwVxdwdaWznOsgDE9Roe9Nc1Zcs7TQCof0j7\\\\\\/xnCaWkgeoda1Y8Lt9BETF8IXcyZ\\\\\\/H6egzI6OMlulmDVG28BsDe+YxlL7W+d4d1XYSZs1rvNkXTWT6+VrL+CYKZV\\\\\\/IqzWiPjfYHAvJw4sBWNCDYYYCBn87WIfsHPRKeqTQ8I+lhO8+f2ijAiwliXhQrqlpngs8XeEw2VpTZ9hiw5cCHerz6awSyq3cFfAkP92hxavpBAlAozl1ZABv9Rf4VyaEybJW0Ao5qDie8CFlaIV5Ab4HbfotJFW\\\\\\/6E35NaufwOn3MhfxYsiVp4fD0NADHyLUoCE0IxfBOa\\\\\\/lH8c4\\\\\\/rxetJ3i0sH2Xn5LtW+8O5gAIals4FnRlrsc3F7gBD3xryHtZlHr6KuDPuML96c2DYx48\\\\\\/9ErriQ\\\\\\/hFVpevCzlHSXfYlEU2OeLUseLIYFW4uX4iCoYXXs12mWGLPFtGdz23+h4H3vcvcHQKjIczk\\\\\\/03hI1arcMNuWBHY+KfFuMV8kNnGzucN64Prt9a49jo4ORomzUoIHO+XdAWoPVsfX97a5hMbcaoU2RTDTgTmjhaoyWs19TxmLuQ+ZKsBMcsF1HwiPoahmBwX1jjxnY6+RiZs\\\\\\/UE63sgepQpyLSyPWGjyySIs1apzI91nvFivIqiCOGij7sLByvyWdmwkHU98g76G\\\\\\/1OyQJhIgz98WYSLFJxrXBvfljXmPX70IYKtIJTTLHTaTZCb6k8ikj3eGOJnlhIjnKuFs34XFAjkXIuIBA9VN2roQDsOhX46otnufglV6vJHqGBcuhHUe5RX2DazYln\\\\\\/orf5FmH8frSW6fBXMOxqXLARXk7MJAJtIUQ4P8p\\\\\\/USSi4fTx6APtEqfnX4V9mxsXvOr1n+xJfVrJwnhps7wBu7+aHRDMoWLRZxK\\\\\\/3m8lycUj1ZDSsezgOFdE3Etwh3yUPtlGXGJL5BH0K2lqFMgPfex8NXdx+NXqD+CQlk+v0IT0TrthKsChlSDIUq2D7g\\\\\\/asczF4CJH6iHwMSOF+62zDePvZpa2HnRdyVpQH26rBKUzBdPK+nnwksAzdhgNzYDkuch7sUmwbRksaZidR\\\\\\/bGBgWkoVp36ztQ3SHXs9124Ko1pPPlhHZft53dGjccQqYC5CL8cQvEmDm+pII3GDcX0felCW6fgem\\\\\\/VinWMl93paYujVvVqhc9n9fKB8ucNKP\\\\\\/WoG\\\\\\/ZWhnmYFKNEv6eUKqy9hzPU39t9Xk35b\\\\\\/o1rl5LHgQTyGFnVC7XfUm5ORZysBLq4Mv\\\\\\/Za5hMGj9mmkNlLS1gsDYnPIjrmZ646FN29qXnqKhHLq9HqMxD4Zn0j2XzF3m2gJm24pSDfrYmAtQtCOjjUnU9Glg2iZJ99VMn1+iE\\\\\\/vDfimcZfRi3fK24s1bY5MNi\\\\\\/JW4ywEvcy4InNvl1uQRziy2ov4YEn254HGn9OnjKE0E6brxPCF0udQ88Wtt0fr\\\\\\/tei6aXdonZZWd1iyKUehWCI0xwnZNBPHvr5fwBT2UQqLsrLd\\\\\\/pubGZ3NSKRmmtXKmkdZLiZRvZmtuWKLrtQg5IgwkQzf6bMR1aWhoSOMEQiAoUM06fIqzlV3kX4g18k6\\\\\\/amTAHMIBHVYzAuCvSTK7hrmfGdsfu9BaCxFGc0P9WaYm1TxT0wmIWvTILOR\\\\\\/xWBuJEFXX1XUbDj\\\\\\/Z1BI5Cy\\\\\\/8OEEH99lcmIjgIEDvQs9m92ipFsjkuK3EYum388\\\\\\/xaAA8puQxOeQzUHwWw3q1q9KlDnqNCgJN9AGjTKnTR\\\\\\/JN3oasG+d8evnEw1hKP6\\\\\\/oMdM+cVqEwCjhzkHNPO2J3ueBKL58RvWQfSwpGSagwW+iN3okUeeZ9chjUlerM+\\\\\\/Im6Hr1BdN4DI1e3I\\\\\\/49rDi9IEpN\\\\\\/7WoGI9Txgo0jmU\\\\\\/7APch+O12536tB0nsA4SaWtKs9HrzHt4NQTMPyjYBvHBhL6JrmeULyRwtjtTbz\\\\\\/+vGrgtsX4gcEJgMEdPaFwRA9NUy3+nCXgIvcy9KqR1uA1EWor0SoggvEYyoSOoRn8c5OIt5ngS4iThfcBWrYT8bPOl1TZ4Bi15aslLpEugySHfUTlyarHWvbFOoSutq4NtgFJxOt5MeOF\\\\\\/AQETHOBa1UMfPR2h0jpr7f+AZG5OMjjLPgFjgjA9nleQiBipxc4o5\\\\\\/HyOhdQQ+gb2KaIkZ24F9tqSEYhYHcWUh4nJ6Pku005TPd5OHSxQ1XGeG5OT0RlKdQLG69MaQn4Qos7v88W+EPyiVUPnGyGQPSdqx6X5EfYjAjB4\\\\\\/CrNETqt0b0qYpaOSLHfTf+rDQviYVy\\\\\\/aMOKDJR0v8rKALcDDRv8vuarCk3LbXF1JOcRXjYy9vaNHGiowS5Sk3vzipuj2MHqYyA+lEs6qNaVzuRyo9gCmk4t7dTbEz9WbLa9Oq1lRqIBxGGcjRC0kKS5BC7ahR9+WtrFOmQuBzeDTK+\\\\\\/YnKdvTyjIi6aVkdfzBDCqv7MAQR\\\\\\/g5M8EWzw+0Cvvc3472rwhJzGOfK057j8dL6IQNCwD2jcIpbjPGMTgCpZElRORTNr8bkhdn8PVGLC+F2U0FttVhebXYZJo5Vs+a7Lt7YQQUK713XtTh2wgyTp06Pqt+lk5LLzS4WNvIIyJL0gkwB3OS56ENRdQRNlAyq8zXa8Oxr0ijPeB8EiSCcjKDHEQJ4AeRGAVNeIAmAvv+rMczYgvZubU965yEV\\\\\\/Fw91x5wRzl1xuRmZ8a34xnSVpysOB\\\\\\/7v7ISH7bmtBtK1KjCeTsLFVzs0ieKk2IZQ=\\\\\\\",\\\\\\\"auction_price\\\\\\\":\\\\\\\"39.135450\\\\\\\"}\\\"},\\\"image\\\":[{\\\"url\\\":\\\"https:\\\\\\/\\\\\\/p0.ipstatp.com\\\\\\/origin\\\\\\/v0201\\\\\\/3874013580cd43d1a8b97d4efd8a0d1b.webp\\\",\\\"height\\\":1920,\\\"width\\\":1080,\\\"image_preview\\\":false,\\\"image_key\\\":\\\"02a1d67da308e8746a83b86bb539a2b9\\\"}],\\\"show_url\\\":[\\\"https:\\\\\\/\\\\\\/s2s.adjust.com\\\\\\/impression\\\\\\/3hnzd4h?campaign=+11-%E8%80%81%E8%99%8E%E6%9C%BA-Kevin-1009%20(1746204963266610)&adgroup=PG-1009-11%20(1746204962033666)&creative=lxf+3%E6%94%B9+-2022.9.22-1080x1920-wyf.mp4_2022-10-09+07%3A19%3A01%20(1746204965481473)&s2s=1&idfa=&gps_adid=dd2f2dd5-7750-4595-b502-86053d275c3c&adgroup_id=1746204962033666&ip_address=179.155.66.228&user_agent=Mozilla%2F5.0+%28Linux%3B+Android+12%3B+SM-A325M+Build%2FSP1A.210812.016%3B+wv%29+AppleWebKit%2F537.36+%28KHTML%2C+like+Gecko%29+Version%2F4.0+Chrome%2F105.0.5195.136+Mobile+Safari%2F537.36&campaign_id=1746204963266610&creative_id=1746204965481473&tracker_limit=250000&tiktok_placement=Pangle&external_tracker_ids=1&tiktok_callback_param=E.C.P.Cq8BPEvGln793XMPDLAZmH0xyUsdjNgEcQcjL2lHwzcAnawEKl8rweTgmDrR4ChS6fp3Ko_lJZKURA6WNx5qrGE8G0DJt76xYdG_ejAVibNcZUZP-FlrM5WOQOtc7LKSZFGDEy6i7yvL8nMBNgtK4mivyyUbwKrkfA_VgSeu0IYD4Nc6mof6NHVDnMEcHQEjZB5OqgJ4B7IXXVsndaBPrmBnrJXosv1xvQEr5oyPmGMgcRIEdjIuMBogLI-inYaQRwsdZ7iRZnAHg7TI0norlS9NMOcuK82kRi4\\\"],\\\"click_url\\\":[],\\\"play_start\\\":[],\\\"phone_num\\\":\\\"\\\",\\\"title\\\":\\\"É muito fácil de ganhar\\\",\\\"description\\\":\\\"É muito fácil de ganhar\\\",\\\"ext\\\":\\\"{\\\\\\\"ad_slot_type\\\\\\\":7,\\\\\\\"language\\\\\\\":\\\\\\\"golang\\\\\\\",\\\\\\\"ug_creative_id\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"ad_id\\\\\\\":1746204962033666,\\\\\\\"creative_id\\\\\\\":1746204965481473,\\\\\\\"convert_id\\\\\\\":0,\\\\\\\"uid\\\\\\\":3491374593508056,\\\\\\\"ad_type\\\\\\\":1,\\\\\\\"pricing\\\\\\\":9,\\\\\\\"ut\\\\\\\":14,\\\\\\\"version_code\\\\\\\":\\\\\\\"1.5.8.25\\\\\\\",\\\\\\\"device_id\\\\\\\":3491374593508056,\\\\\\\"width\\\\\\\":0,\\\\\\\"height\\\\\\\":0,\\\\\\\"mac\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"uuid_md5\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"os\\\\\\\":\\\\\\\"android\\\\\\\",\\\\\\\"os_type\\\\\\\":null,\\\\\\\"app_name\\\\\\\":\\\\\\\"Truco Mania\\\\\\\",\\\\\\\"device_type\\\\\\\":\\\\\\\"SM-A325M\\\\\\\",\\\\\\\"os_version\\\\\\\":\\\\\\\"12\\\\\\\",\\\\\\\"app_id\\\\\\\":\\\\\\\"8050889\\\\\\\",\\\\\\\"template_id\\\\\\\":0,\\\\\\\"template_rate\\\\\\\":0,\\\\\\\"promotion_type\\\\\\\":0,\\\\\\\"img_md5\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"source_type\\\\\\\":1,\\\\\\\"pack_time\\\\\\\":1666265201.178474,\\\\\\\"cid\\\\\\\":1746204965481473,\\\\\\\"interaction_type\\\\\\\":4,\\\\\\\"src_type\\\\\\\":\\\\\\\"app\\\\\\\",\\\\\\\"package_name\\\\\\\":\\\\\\\"com.light.truco.gp\\\\\\\",\\\\\\\"pos\\\\\\\":1,\\\\\\\"landing_type\\\\\\\":3,\\\\\\\"is_sdk\\\\\\\":true,\\\\\\\"is_dsp_ad\\\\\\\":false,\\\\\\\"placement\\\\\\\":\\\\\\\"Pangle\\\\\\\",\\\\\\\"req_id\\\\\\\":\\\\\\\"24b7747a3ac809d2c20ae5b1d8c98528u529\\\\\\\",\\\\\\\"rit\\\\\\\":980189910,\\\\\\\"vid\\\\\\\":\\\\\\\"70310061,70776074,70790573,1009354,1365707,70323212,70449005,70467884,70547318,70608240,70632993,70665236,70682896,70686411,70722895,70724955,70734108,70736053,70743918,70744627,70747467,70753569,70753691,70753876,70772940,70773561,70775165,70775390,70775520,70775917,70776108,70776228,70777454,70778705,70782162,70782668,70784723,70785143,70786707,70788077,70789624,70791519,70505733\\\\\\\",\\\\\\\"orit\\\\\\\":900000000,\\\\\\\"ad_price\\\\\\\":\\\\\\\"Y0-XsAAD71tjT5ewAAPvWwED5v2R4XnTy-VuEA\\\\\\\",\\\\\\\"dynamic_ptpl_id\\\\\\\":2571,\\\\\\\"engine_web_url\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"app_bundle_id\\\\\\\":\\\\\\\"com.light.truco.gp\\\\\\\",\\\\\\\"clickid\\\\\\\":\\\\\\\"E.C.P.CsUBV8hVDoznKf9y5Gbf4M13iMtQHJ7JRvODJVbSHd1HP4U-sWVINczq3VOPRX6AL2cmJ9pCjgxOs5zAavKMfoqe3s8BWFn0Ir3evnZ5Sc6L8w1bJhyVrRgPVREsTBn1JA9vTKmlwUE-sM00MCSwYF3Is8RfZTQXsDO7tr6sorRcwSgjXfvJGK5dd2E2YAEsAAmlJnASBZ5XSliI39HT-RnLrdvfYAMjI6VOH198_JiSqZSECu-CgRavBaC-8tySPnbtdMTYB1USBHYyLjAaICQcA2wGqKITUGP-8QqFHbTz8_HXuZBl-_0s6nZqiYW0\\\\\\\",\\\\\\\"ip\\\\\\\":\\\\\\\"179.155.66.228\\\\\\\",\\\\\\\"ua\\\\\\\":\\\\\\\"Mozilla\\\\\\/5.0 (Linux; Android 12; SM-A325M Build\\\\\\/SP1A.210812.016; wv) AppleWebKit\\\\\\/537.36 (KHTML, like Gecko) Version\\\\\\/4.0 Chrome\\\\\\/105.0.5195.136 Mobile Safari\\\\\\/537.36\\\\\\\",\\\\\\\"cover_click_area\\\\\\\":0,\\\\\\\"country_id\\\\\\\":\\\\\\\"BR\\\\\\\",\\\\\\\"province_id\\\\\\\":3457153,\\\\\\\"city_id\\\\\\\":3445831,\\\\\\\"dma_id\\\\\\\":null,\\\\\\\"playable_url\\\\\\\":null,\\\\\\\"dpa_pangle_video_id\\\\\\\":null,\\\\\\\"idc\\\\\\\":4,\\\\\\\"author_nickname\\\\\\\":null,\\\\\\\"report_idc\\\\\\\":\\\\\\\"useast2a\\\\\\\",\\\\\\\"cohort\\\\\\\":\\\\\\\"\\\\\\\"}\\\",\\\"image_mode\\\":15,\\\"cover_click_area\\\":0,\\\"intercept_flag\\\":0,\\\"button_text\\\":\\\"Obter\\\",\\\"ad_logo\\\":1,\\\"video_adaptation\\\":0,\\\"feed_video_opentype\\\":0,\\\"orientation\\\":2,\\\"aspect_ratio\\\":100,\\\"app\\\":{\\\"app_name\\\":\\\"Truco Star\\\",\\\"package_name\\\":\\\"com.bxhwhy.bxtruco\\\",\\\"download_url\\\":\\\"https:\\\\\\/\\\\\\/play.google.com\\\\\\/store\\\\\\/apps\\\\\\/details?id=com.bxhwhy.bxtruco\\\",\\\"score\\\":4,\\\"comment_num\\\":6870,\\\"app_size\\\":0},\\\"filter_words\\\":[{\\\"id\\\":\\\"6:0\\\",\\\"name\\\":\\\"Denunciar conteúdo do anúncio\\\",\\\"is_selected\\\":false,\\\"options\\\":[{\\\"id\\\":\\\"6:1\\\",\\\"name\\\":\\\"Denunciar conteúdo do anúncio\\\",\\\"is_selected\\\":false},{\\\"id\\\":\\\"6:2\\\",\\\"name\\\":\\\"Fraudulento ou enganador\\\",\\\"is_selected\\\":false},{\\\"id\\\":\\\"6:6\\\",\\\"name\\\":\\\"Clickbait\\\",\\\"is_selected\\\":false}]},{\\\"id\\\":\\\"10:0\\\",\\\"name\\\":\\\"Erro ao apresentar o conteúdo do anúncio\\\",\\\"is_selected\\\":false,\\\"options\\\":[{\\\"id\\\":\\\"10:1\\\",\\\"name\\\":\\\"Imagens de baixa resolução\\\",\\\"is_selected\\\":false},{\\\"id\\\":\\\"10:2\\\",\\\"name\\\":\\\"Conteúdo cortado\\\",\\\"is_selected\\\":false},{\\\"id\\\":\\\"10:3\\\",\\\"name\\\":\\\"Vídeo instável\\\\\\/ecrã em branco\\\",\\\"is_selected\\\":false}]},{\\\"id\\\":\\\"11:0\\\",\\\"name\\\":\\\"Conteúdo do anúncio duplicado\\\",\\\"is_selected\\\":false},{\\\"id\\\":\\\"12:0\\\",\\\"name\\\":\\\"Demasiados anúncios\\\",\\\"is_selected\\\":false}],\\\"is_playable\\\":false,\\\"playable_type\\\":0,\\\"playable_style\\\":\\\"\\\",\\\"count_down\\\":0,\\\"expiration_time\\\":1666275701,\\\"video\\\":{\\\"cover_height\\\":1280,\\\"cover_url\\\":\\\"https:\\\\\\/\\\\\\/p16-sign-sg.tiktokcdn.com\\\\\\/v0201\\\\\\/3874013580cd43d1a8b97d4efd8a0d1b~tplv-noop.image?x-expires=1666274693&x-signature=MtjLTKctBrMa%2FvP%2FJMwLnhdxgCs%3D\\\",\\\"cover_width\\\":720,\\\"endcard\\\":\\\"https:\\\\\\/\\\\\\/ether-pack-sg.pangle.io\\\\\\/union\\\\\\/endcard\\\\\\/1746204965481473\\\\\\/?rit=980189910&req_id=24b7747a3ac809d2c20ae5b1d8c98528u529&ad_sdk_version=4.6.0.4&os=android&lang=pt&union_imei=84be51083a7929df59bbcf8f20ea01a7&union_uuid=84be51083a7929df59bbcf8f20ea01a7&app_version=补充中&app_name=&developer_name=补充中，可于应用官网查看&is_dsp=False&lpt=1&style_id=5348813&use_sabo_v2=true&use_short_phrase_i18n=1&comment_num=94&like_num=97&share_num=99&customer_id=7114125168657629953\\\",\\\"file_hash\\\":\\\"5c92a32e6095b7c9e5d03e5de3513030\\\",\\\"resolution\\\":\\\"720x1280\\\",\\\"size\\\":9715782,\\\"video_duration\\\":30.063,\\\"video_url\\\":\\\"https:\\\\\\/\\\\\\/v16-ad.byteoversea.com\\\\\\/b715c50de5633f7d823ae49343f46418\\\\\\/63515585\\\\\\/video\\\\\\/tos\\\\\\/alisg\\\\\\/tos-alisg-v-0000\\\\\\/5b9a6998f239482eae7f62a030d680fa\\\\\\/toutiao.mp4\\\",\\\"playable_download_url\\\":\\\"\\\",\\\"if_playable_loading_show\\\":0,\\\"remove_loading_page_type\\\":0,\\\"fallback_endcard_judge\\\":2,\\\"video_preload_size\\\":0,\\\"reward_video_cached_type\\\":0,\\\"execute_cached_type\\\":0,\\\"endcard_render\\\":0},\\\"download_conf\\\":{\\\"if_send_click\\\":1},\\\"media_ext\\\":{\\\"sdk_bidding_type\\\":1,\\\"price\\\":3913545,\\\"tag_id\\\":\\\"d4558a7c3b82504be2e5dcaeedc6442d\\\",\\\"request_id\\\":\\\"24b7747a3ac809d2c20ae5b1d8c98528u529\\\"},\\\"tpl_info\\\":{\\\"id\\\":\\\"2571\\\",\\\"md5\\\":\\\"bdd264221c9a606e34ccd8b50411c68f\\\",\\\"url\\\":\\\"https:\\\\\\/\\\\\\/sf-tb-sg.ibytedtos.com\\\\\\/obj\\\\\\/ad-pattern-sg\\\\\\/template\\\\\\/10001\\\\\\/base\\\\\\/2571.json\\\",\\\"data\\\":\\\"{\\\\\\\"id\\\\\\\":\\\\\\\"root\\\\\\\",\\\\\\\"type\\\\\\\":\\\\\\\"root\\\\\\\",\\\\\\\"values\\\\\\\":{\\\\\\\"width\\\\\\\":667,\\\\\\\"bgColor\\\\\\\":\\\\\\\"rgba(255, 255, 255, 0)\\\\\\\",\\\\\\\"justifyHorizontal\\\\\\\":\\\\\\\"flex-start\\\\\\\",\\\\\\\"justifyVertical\\\\\\\":\\\\\\\"center\\\\\\\",\\\\\\\"clickArea\\\\\\\":\\\\\\\"none\\\\\\\",\\\\\\\"adType\\\\\\\":\\\\\\\"reward\\\\\\\"},\\\\\\\"children\\\\\\\":[[{\\\\\\\"id\\\\\\\":\\\\\\\"1cd39b\\\\\\\",\\\\\\\"type\\\\\\\":\\\\\\\"video-vd\\\\\\\",\\\\\\\"values\\\\\\\":{\\\\\\\"height\\\\\\\":0.56,\\\\\\\"marginTop\\\\\\\":null,\\\\\\\"clickArea\\\\\\\":\\\\\\\"none\\\\\\\",\\\\\\\"justifyHorizontal\\\\\\\":\\\\\\\"flex-start\\\\\\\"},\\\\\\\"children\\\\\\\":[]},{\\\\\\\"id\\\\\\\":\\\\\\\"50b2d9\\\\\\\",\\\\\\\"type\\\\\\\":\\\\\\\"vessel\\\\\\\",\\\\\\\"values\\\\\\\":{\\\\\\\"heightMode\\\\\\\":\\\\\\\"auto\\\\\\\",\\\\\\\"justifyHorizontal\\\\\\\":\\\\\\\"center\\\\\\\",\\\\\\\"justifyVertical\\\\\\\":\\\\\\\"space-between\\\\\\\",\\\\\\\"atomBgColor\\\\\\\":[0]},\\\\\\\"children\\\\\\\":[[{\\\\\\\"id\\\\\\\":\\\\\\\"94fd08\\\\\\\",\\\\\\\"type\\\\\\\":\\\\\\\"vessel\\\\\\\",\\\\\\\"values\\\\\\\":{\\\\\\\"heightMode\\\\\\\":\\\\\\\"auto\\\\\\\",\\\\\\\"bgColor\\\\\\\":\\\\\\\"rgba(255, 255, 255, 1)\\\\\\\",\\\\\\\"clickArea\\\\\\\":\\\\\\\"none\\\\\\\",\\\\\\\"justifyHorizontal\\\\\\\":\\\\\\\"flex-end\\\\\\\",\\\\\\\"atomBgColor\\\\\\\":[0]},\\\\\\\"children\\\\\\\":[[{\\\\\\\"id\\\\\\\":\\\\\\\"656c70\\\\\\\",\\\\\\\"type\\\\\\\":\\\\\\\"vessel\\\\\\\",\\\\\\\"values\\\\\\\":{\\\\\\\"heightMode\\\\\\\":\\\\\\\"flex\\\\\\\",\\\\\\\"height\\\\\\\":1,\\\\\\\"paddingRight\\\\\\\":40,\\\\\\\"paddingLeft\\\\\\\":38,\\\\\\\"bgColor\\\\\\\":\\\\\\\"rgba(255, 255, 255, 1)\\\\\\\",\\\\\\\"clickArea\\\\\\\":\\\\\\\"none\\\\\\\",\\\\\\\"justifyHorizontal\\\\\\\":\\\\\\\"center\\\\\\\",\\\\\\\"justifyVertical\\\\\\\":\\\\\\\"center\\\\\\\",\\\\\\\"atomBgColor\\\\\\\":[0]},\\\\\\\"children\\\\\\\":[[{\\\\\\\"id\\\\\\\":\\\\\\\"e3916e\\\\\\\",\\\\\\\"type\\\\\\\":\\\\\\\"app-icon\\\\\\\",\\\\\\\"values\\\\\\\":{\\\\\\\"width\\\\\\\":86,\\\\\\\"marginLeft\\\\\\\":null,\\\\\\\"borderRadius\\\\\\\":16,\\\\\\\"animations\\\\\\\":[{\\\\\\\"animationType\\\\\\\":\\\\\\\"fade\\\\\\\",\\\\\\\"animationDuration\\\\\\\":0.7,\\\\\\\"animationTimeFunction\\\\\\\":\\\\\\\"linear\\\\\\\",\\\\\\\"animationDelay\\\\\\\":0,\\\\\\\"animationIterationCount\\\\\\\":1,\\\\\\\"animationDirection\\\\\\\":\\\\\\\"normal\\\\\\\",\\\\\\\"animationInterval\\\\\\\":0,\\\\\\\"animationFadeStart\\\\\\\":0,\\\\\\\"animationFadeEnd\\\\\\\":100,\\\\\\\"key\\\\\\\":1628663776196}]},\\\\\\\"children\\\\\\\":[]},{\\\\\\\"id\\\\\\\":\\\\\\\"0cbf1f\\\\\\\",\\\\\\\"type\\\\\\\":\\\\\\\"vessel\\\\\\\",\\\\\\\"values\\\\\\\":{\\\\\\\"heightMode\\\\\\\":\\\\\\\"auto\\\\\\\",\\\\\\\"justifyHorizontal\\\\\\\":\\\\\\\"flex-start\\\\\\\",\\\\\\\"atomBgColor\\\\\\\":[0]},\\\\\\\"children\\\\\\\":[[{\\\\\\\"id\\\\\\\":\\\\\\\"6c94c2\\\\\\\",\\\\\\\"type\\\\\\\":\\\\\\\"source\\\\\\\",\\\\\\\"values\\\\\\\":{\\\\\\\"marginTop\\\\\\\":18,\\\\\\\"marginLeft\\\\\\\":17,\\\\\\\"paddingTop\\\\\\\":0,\\\\\\\"paddingRight\\\\\\\":0,\\\\\\\"paddingBottom\\\\\\\":0,\\\\\\\"paddingLeft\\\\\\\":0,\\\\\\\"fontSize\\\\\\\":20,\\\\\\\"color\\\\\\\":\\\\\\\"rgba(51, 51, 51, 1)\\\\\\\",\\\\\\\"animations\\\\\\\":[{\\\\\\\"animationType\\\\\\\":\\\\\\\"fade\\\\\\\",\\\\\\\"animationDuration\\\\\\\":0.7,\\\\\\\"animationTimeFunction\\\\\\\":\\\\\\\"linear\\\\\\\",\\\\\\\"animationDelay\\\\\\\":0,\\\\\\\"animationIterationCount\\\\\\\":1,\\\\\\\"animationDirection\\\\\\\":\\\\\\\"normal\\\\\\\",\\\\\\\"animationInterval\\\\\\\":0,\\\\\\\"animationFadeStart\\\\\\\":0,\\\\\\\"animationFadeEnd\\\\\\\":100,\\\\\\\"key\\\\\\\":1628663800044}]}}],[{\\\\\\\"id\\\\\\\":\\\\\\\"1cae0c\\\\\\\",\\\\\\\"type\\\\\\\":\\\\\\\"title\\\\\\\",\\\\\\\"values\\\\\\\":{\\\\\\\"marginTop\\\\\\\":8,\\\\\\\"paddingTop\\\\\\\":0,\\\\\\\"paddingRight\\\\\\\":0,\\\\\\\"paddingBottom\\\\\\\":0,\\\\\\\"paddingLeft\\\\\\\":17,\\\\\\\"fontSize\\\\\\\":16,\\\\\\\"color\\\\\\\":\\\\\\\"rgba(153, 153, 153, 1)\\\\\\\",\\\\\\\"animations\\\\\\\":[{\\\\\\\"animationType\\\\\\\":\\\\\\\"fade\\\\\\\",\\\\\\\"animationDuration\\\\\\\":0.7,\\\\\\\"animationTimeFunction\\\\\\\":\\\\\\\"linear\\\\\\\",\\\\\\\"animationDelay\\\\\\\":0,\\\\\\\"animationIterationCount\\\\\\\":1,\\\\\\\"animationDirection\\\\\\\":\\\\\\\"normal\\\\\\\",\\\\\\\"animationInterval\\\\\\\":0,\\\\\\\"animationFadeStart\\\\\\\":0,\\\\\\\"animationFadeEnd\\\\\\\":100,\\\\\\\"key\\\\\\\":1628663809046}]}}]]}],[{\\\\\\\"id\\\\\\\":\\\\\\\"bf13ac\\\\\\\",\\\\\\\"type\\\\\\\":\\\\\\\"vessel\\\\\\\",\\\\\\\"values\\\\\\\":{\\\\\\\"heightMode\\\\\\\":\\\\\\\"auto\\\\\\\",\\\\\\\"marginTop\\\\\\\":24,\\\\\\\"justifyHorizontal\\\\\\\":\\\\\\\"flex-start\\\\\\\",\\\\\\\"justifyVertical\\\\\\\":\\\\\\\"center\\\\\\\",\\\\\\\"atomBgColor\\\\\\\":[0],\\\\\\\"animations\\\\\\\":[{\\\\\\\"animationType\\\\\\\":\\\\\\\"fade\\\\\\\",\\\\\\\"animationDuration\\\\\\\":0.7,\\\\\\\"animationTimeFunction\\\\\\\":\\\\\\\"linear\\\\\\\",\\\\\\\"animationDelay\\\\\\\":0,\\\\\\\"animationIterationCount\\\\\\\":1,\\\\\\\"animationDirection\\\\\\\":\\\\\\\"normal\\\\\\\",\\\\\\\"animationInterval\\\\\\\":0,\\\\\\\"animationFadeStart\\\\\\\":0,\\\\\\\"animationFadeEnd\\\\\\\":100,\\\\\\\"key\\\\\\\":1628663856442}]},\\\\\\\"children\\\\\\\":[[{\\\\\\\"id\\\\\\\":\\\\\\\"a0a4e9\\\\\\\",\\\\\\\"type\\\\\\\":\\\\\\\"vessel\\\\\\\",\\\\\\\"values\\\\\\\":{\\\\\\\"widthMode\\\\\\\":\\\\\\\"auto\\\\\\\",\\\\\\\"heightMode\\\\\\\":\\\\\\\"auto\\\\\\\",\\\\\\\"justifyVertical\\\\\\\":\\\\\\\"center\\\\\\\",\\\\\\\"atomBgColor\\\\\\\":[0]},\\\\\\\"children\\\\\\\":[[{\\\\\\\"id\\\\\\\":\\\\\\\"903791\\\\\\\",\\\\\\\"type\\\\\\\":\\\\\\\"text_star\\\\\\\",\\\\\\\"values\\\\\\\":{\\\\\\\"fontSize\\\\\\\":26,\\\\\\\"color\\\\\\\":\\\\\\\"rgba(51, 51, 51, 1)\\\\\\\"}},{\\\\\\\"id\\\\\\\":\\\\\\\"aef213\\\\\\\",\\\\\\\"type\\\\\\\":\\\\\\\"star\\\\\\\",\\\\\\\"values\\\\\\\":{\\\\\\\"marginTop\\\\\\\":6,\\\\\\\"marginLeft\\\\\\\":10,\\\\\\\"paddingTop\\\\\\\":0,\\\\\\\"paddingRight\\\\\\\":0,\\\\\\\"paddingBottom\\\\\\\":0,\\\\\\\"paddingLeft\\\\\\\":0,\\\\\\\"fontSize\\\\\\\":15}}]]},{\\\\\\\"id\\\\\\\":\\\\\\\"c05851\\\\\\\",\\\\\\\"type\\\\\\\":\\\\\\\"vessel\\\\\\\",\\\\\\\"values\\\\\\\":{\\\\\\\"widthMode\\\\\\\":\\\\\\\"fixed\\\\\\\",\\\\\\\"heightMode\\\\\\\":\\\\\\\"auto\\\\\\\",\\\\\\\"marginTop\\\\\\\":7,\\\\\\\"marginLeft\\\\\\\":16,\\\\\\\"borderSize\\\\\\\":1,\\\\\\\"borderColor\\\\\\\":\\\\\\\"rgba(223, 223, 223, 1)\\\\\\\",\\\\\\\"atomBgColor\\\\\\\":[0]},\\\\\\\"children\\\\\\\":[]},{\\\\\\\"id\\\\\\\":\\\\\\\"c7434e\\\\\\\",\\\\\\\"type\\\\\\\":\\\\\\\"score-count\\\\\\\",\\\\\\\"values\\\\\\\":{\\\\\\\"marginTop\\\\\\\":7,\\\\\\\"marginLeft\\\\\\\":33,\\\\\\\"paddingTop\\\\\\\":0,\\\\\\\"paddingRight\\\\\\\":0,\\\\\\\"paddingBottom\\\\\\\":0,\\\\\\\"paddingLeft\\\\\\\":0,\\\\\\\"fontSize\\\\\\\":16}}]]}],[{\\\\\\\"id\\\\\\\":\\\\\\\"dbe162\\\\\\\",\\\\\\\"type\\\\\\\":\\\\\\\"fillButton\\\\\\\",\\\\\\\"values\\\\\\\":{\\\\\\\"marginTop\\\\\\\":48,\\\\\\\"marginLeft\\\\\\\":null,\\\\\\\"bgColor\\\\\\\":\\\\\\\"rgba(0, 136, 255, 1)\\\\\\\",\\\\\\\"animations\\\\\\\":[{\\\\\\\"animationType\\\\\\\":\\\\\\\"fade\\\\\\\",\\\\\\\"animationDuration\\\\\\\":0.7,\\\\\\\"animationTimeFunction\\\\\\\":\\\\\\\"linear\\\\\\\",\\\\\\\"animationDelay\\\\\\\":0,\\\\\\\"animationIterationCount\\\\\\\":1,\\\\\\\"animationDirection\\\\\\\":\\\\\\\"normal\\\\\\\",\\\\\\\"animationInterval\\\\\\\":0,\\\\\\\"animationFadeStart\\\\\\\":0,\\\\\\\"animationFadeEnd\\\\\\\":100,\\\\\\\"key\\\\\\\":1628663870750}]}}]]}]]}],[{\\\\\\\"id\\\\\\\":\\\\\\\"f48801\\\\\\\",\\\\\\\"type\\\\\\\":\\\\\\\"vessel\\\\\\\",\\\\\\\"values\\\\\\\":{\\\\\\\"height\\\\\\\":15,\\\\\\\"paddingRight\\\\\\\":5,\\\\\\\"bgColor\\\\\\\":\\\\\\\"rgba(255, 255, 255, 1)\\\\\\\",\\\\\\\"clickArea\\\\\\\":\\\\\\\"none\\\\\\\",\\\\\\\"justifyHorizontal\\\\\\\":\\\\\\\"flex-start\\\\\\\",\\\\\\\"justifyVertical\\\\\\\":\\\\\\\"flex-end\\\\\\\",\\\\\\\"atomBgColor\\\\\\\":[0]},\\\\\\\"children\\\\\\\":[[{\\\\\\\"id\\\\\\\":\\\\\\\"f32a8a\\\\\\\",\\\\\\\"type\\\\\\\":\\\\\\\"logo-union\\\\\\\",\\\\\\\"values\\\\\\\":{\\\\\\\"paddingTop\\\\\\\":0,\\\\\\\"paddingBottom\\\\\\\":0,\\\\\\\"bgColor\\\\\\\":\\\\\\\"rgba(0, 0, 0, 0)\\\\\\\",\\\\\\\"atomBgColor\\\\\\\":[0],\\\\\\\"openPrivacy\\\\\\\":true,\\\\\\\"openFlowEntrance\\\\\\\":false},\\\\\\\"children\\\\\\\":[[{\\\\\\\"id\\\\\\\":\\\\\\\"dfc176\\\\\\\",\\\\\\\"type\\\\\\\":\\\\\\\"logo\\\\\\\",\\\\\\\"values\\\\\\\":{\\\\\\\"paddingTop\\\\\\\":0,\\\\\\\"paddingRight\\\\\\\":0,\\\\\\\"paddingBottom\\\\\\\":0,\\\\\\\"paddingLeft\\\\\\\":0,\\\\\\\"borderSize\\\\\\\":0,\\\\\\\"data\\\\\\\":\\\\\\\"union\\\\\\\",\\\\\\\"fontSize\\\\\\\":8,\\\\\\\"color\\\\\\\":\\\\\\\"rgba(183, 183, 183, 1)\\\\\\\"}},{\\\\\\\"id\\\\\\\":\\\\\\\"cecab3\\\\\\\",\\\\\\\"type\\\\\\\":\\\\\\\"logo\\\\\\\",\\\\\\\"values\\\\\\\":{\\\\\\\"paddingTop\\\\\\\":0,\\\\\\\"paddingRight\\\\\\\":0,\\\\\\\"paddingBottom\\\\\\\":0,\\\\\\\"paddingLeft\\\\\\\":0,\\\\\\\"borderSize\\\\\\\":0,\\\\\\\"fontSize\\\\\\\":8,\\\\\\\"color\\\\\\\":\\\\\\\"rgba(183, 183, 183, 1)\\\\\\\"}}]]}]]}]]}],[{\\\\\\\"id\\\\\\\":\\\\\\\"17d602\\\\\\\",\\\\\\\"type\\\\\\\":\\\\\\\"vessel\\\\\\\",\\\\\\\"values\\\\\\\":{\\\\\\\"height\\\\\\\":50,\\\\\\\"position\\\\\\\":\\\\\\\"1\\\\\\\",\\\\\\\"clickArea\\\\\\\":\\\\\\\"none\\\\\\\",\\\\\\\"justifyHorizontal\\\\\\\":\\\\\\\"flex-end\\\\\\\",\\\\\\\"atomBgColor\\\\\\\":[0],\\\\\\\"zIndex\\\\\\\":2,\\\\\\\"useTop\\\\\\\":true,\\\\\\\"useLeft\\\\\\\":true,\\\\\\\"useBottom\\\\\\\":false,\\\\\\\"useRight\\\\\\\":false,\\\\\\\"left\\\\\\\":0,\\\\\\\"top\\\\\\\":10},\\\\\\\"children\\\\\\\":[[{\\\\\\\"id\\\\\\\":\\\\\\\"70562e\\\\\\\",\\\\\\\"type\\\\\\\":\\\\\\\"vessel\\\\\\\",\\\\\\\"values\\\\\\\":{\\\\\\\"marginTop\\\\\\\":20,\\\\\\\"marginLeft\\\\\\\":10,\\\\\\\"clickArea\\\\\\\":\\\\\\\"none\\\\\\\",\\\\\\\"justifyHorizontal\\\\\\\":\\\\\\\"flex-start\\\\\\\",\\\\\\\"atomBgColor\\\\\\\":[0]},\\\\\\\"children\\\\\\\":[[{\\\\\\\"id\\\\\\\":\\\\\\\"5cddde\\\\\\\",\\\\\\\"type\\\\\\\":\\\\\\\"muted\\\\\\\",\\\\\\\"values\\\\\\\":{\\\\\\\"borderColor\\\\\\\":\\\\\\\"rgba(74, 74, 74, 0.9)\\\\\\\",\\\\\\\"bgColor\\\\\\\":\\\\\\\"rgba(74, 74, 74, 0.9)\\\\\\\"}}]]},{\\\\\\\"id\\\\\\\":\\\\\\\"3b65f3\\\\\\\",\\\\\\\"type\\\\\\\":\\\\\\\"feedback-dislike\\\\\\\",\\\\\\\"values\\\\\\\":{\\\\\\\"marginTop\\\\\\\":20,\\\\\\\"marginRight\\\\\\\":10,\\\\\\\"borderColor\\\\\\\":\\\\\\\"rgba(74, 74, 74, 0.9)\\\\\\\",\\\\\\\"bgColor\\\\\\\":\\\\\\\"rgba(74, 74, 74, 0.9)\\\\\\\"}},{\\\\\\\"id\\\\\\\":\\\\\\\"d9a4af\\\\\\\",\\\\\\\"type\\\\\\\":\\\\\\\"skip-with-time\\\\\\\",\\\\\\\"values\\\\\\\":{\\\\\\\"marginTop\\\\\\\":20,\\\\\\\"marginRight\\\\\\\":25,\\\\\\\"borderColor\\\\\\\":\\\\\\\"rgba(74, 74, 74, 0.9)\\\\\\\",\\\\\\\"bgColor\\\\\\\":\\\\\\\"rgba(74, 74, 74, 0.9)\\\\\\\",\\\\\\\"atomBgColor\\\\\\\":[0]},\\\\\\\"children\\\\\\\":[[{\\\\\\\"id\\\\\\\":\\\\\\\"8c9ed3\\\\\\\",\\\\\\\"type\\\\\\\":\\\\\\\"skip-with-time-countdown\\\\\\\",\\\\\\\"values\\\\\\\":{}},{\\\\\\\"id\\\\\\\":\\\\\\\"636eb4\\\\\\\",\\\\\\\"type\\\\\\\":\\\\\\\"skip-with-time-skip-btn\\\\\\\",\\\\\\\"values\\\\\\\":{}}]]}]]}]]}\\\",\\\"diff_data\\\":\\\"{\\\\\\\"custom_components\\\\\\\":\\\\\\\"[]\\\\\\\",\\\\\\\"diff_data\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"tag_diff\\\\\\\":\\\\\\\"\\\\\\\"}\\\",\\\"version\\\":\\\"1.0.0\\\",\\\"dynamic_creative\\\":\\\"{\\\\\\\"anchor_icon\\\\\\\":\\\\\\\"https:\\\\\\/\\\\\\/p16-be-pack-va.i18n-pglstatp.com\\\\\\/obj\\\\\\/ad-union-i18n-api\\\\\\/anchor_icon_game.jpg\\\\\\\",\\\\\\\"anchor_text\\\\\\\":\\\\\\\"Truco Star\\\\\\\",\\\\\\\"color\\\\\\\":\\\\\\\"#7da2cc\\\\\\\",\\\\\\\"comment_num\\\\\\\":\\\\\\\"94\\\\\\\",\\\\\\\"cover_blur\\\\\\\":\\\\\\\"http:\\\\\\/\\\\\\/p0.ipstatp.com\\\\\\/obj\\\\\\/ad-pattern\\\\\\/vendor\\\\\\/images\\\\\\/black.png\\\\\\\",\\\\\\\"height\\\\\\\":null,\\\\\\\"i18n\\\\\\\":1,\\\\\\\"layout_type\\\\\\\":0,\\\\\\\"like_num\\\\\\\":\\\\\\\"97\\\\\\\",\\\\\\\"loading_page_type\\\\\\\":1,\\\\\\\"long_phrase\\\\\\\":[\\\\\\\"É muito fácil de ganhar\\\\\\\"],\\\\\\\"material_center\\\\\\\":null,\\\\\\\"share_num\\\\\\\":\\\\\\\"99\\\\\\\",\\\\\\\"splash_clicktext\\\\\\\":\\\\\\\"点击跳转至详情页或第三方应用\\\\\\\",\\\\\\\"target_url\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"top_splash_clicktext\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"width\\\\\\\":null}\\\"},\\\"creative_extra\\\":\\\"\\\",\\\"market_url\\\":\\\"\\\",\\\"auction_price\\\":\\\"39.135450\\\",\\\"ad_info\\\":\\\"EVeB8o3s51RFxKsINEh5ghSxPjmLOgpxpxpsUrRyjbRPL648K69keKEXkdex86bDPcwVtoFpIqWBaneZV07wH7onahorkt7iOGb9+mh8qqlXjGuc7OzyI0RMCPqmlU+wotYMdrKnpnHtG7sohu60kto9JhX7qGfCqYDQU57iOeA=\\\",\\\"is_package_open\\\":0,\\\"playable_duration_time\\\":15,\\\"playable_endcard_close_time\\\":5000,\\\"endcard_close_time\\\":-1,\\\"render\\\":{\\\"render_sequence\\\":0,\\\"backup_render_control\\\":1},\\\"interaction_method_params\\\":{\\\"onlylp_loading_maxtime\\\":10,\\\"straight_lp_showtime\\\":20,\\\"loading_text\\\":\\\"Loading\\\"},\\\"splash_control\\\":{\\\"splash_clickarea\\\":2,\\\"splash_layout_id\\\":1}}\",\"reward_name\":\"Reward\"}}"}];
//    [instance enableAutoTrack:ThinkingAnalyticsEventTypeAll];
//    [instance track:@"Test1" properties:@{@"#os":@"abc"}];
//    [instance track:@"Test2" properties:@{@"#os":@""}];
//    [instance track:@"Test3" properties:@{@"#os":@"哈哈哈"}];
//    [instance enableAutoTrack:ThinkingAnalyticsEventTypeAll callback:^NSDictionary * _Nonnull(ThinkingAnalyticsAutoTrackEventType eventType, NSDictionary * _Nonnull properties) {
//        if (eventType == ThinkingAnalyticsEventTypeAppStart) {
//            return @{@"Type":@"Start"};
//        } else if (eventType == ThinkingAnalyticsEventTypeAppEnd) {
//            return @{@"Type1":@"end"};
//        }
//        return @{};
//    }];
  

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
    
    
//    TDConfig *config1 = [[TDConfig alloc] initWithAppId:APP_ID serverUrl:SERVER_URL];
//    config1.name = @"name1";
//    ThinkingAnalyticsSDK *instance2 = [ThinkingAnalyticsSDK startWithConfig:config1];
    
//    [FIRApp configure];
//    [FIRMessaging messaging].delegate = self;
    
//    double a = 8637.52;
//    double b = 20547.50;
//    double c = a + b;
//    NSLog(@"===>>>:%f",c);
    
    
//    NSLog(@"===>>>1: 来了");
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        NSLog(@"===>>>2: 来了");
//        [[APNSManager Instance] openPush];
//    });
    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        NSLog(@"===>>>2: 来了");
//        [[APNSManager Instance] openPush];
//    });
    
    
    
    
    
    // v2.7.2版本以后为实例设置 name
//    TDConfig *config = [[TDConfig alloc] initWithAppId:APP_ID serverUrl:SERVER_URL];
//    config.launchOptions = launchOptions;
//    config.trackRelaunchedInBackgroundEvents = YES;
//    config.defaultTimeZone = [NSTimeZone timeZoneWithAbbreviation:@"UTC"];
//    config.uploadSize = @10;
//    config.uploadInterval = @3600;
//    config.name = @"Монгол 13";
//    config.debugMode = ThinkingAnalyticsDebug;
//    config.launchOptions = launchOptions;
//    ThinkingAnalyticsSDK *instance = [ThinkingAnalyticsSDK startWithConfig:config];
    
//    [[APNSManager Instance] openPush];
    
    
//    UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
//    center.delegate = self;
//    [center requestAuthorizationWithOptions:(UNAuthorizationOptionSound | UNAuthorizationOptionAlert | UNAuthorizationOptionBadge) completionHandler:^(BOOL granted, NSError * _Nullable error) {
//
//    }];
//    [[UIApplication sharedApplication] registerForRemoteNotifications];
    
    
//    [instance login:@"dengyazhou0906"];
//    [instance user_set:@{@"name":@"deng"}];
//    [instance track:@"Simple_ss3" properties:@{@"name":@"deng123"}];
        
//    [instance login:@"dyz_76_V1"];
//
//    [instance identify:@"iid_num_V5"];
    
//    [instance enableAutoTrack:ThinkingAnalyticsEventTypeAll properties:@{@"namedyz":@"dengyazhou"}];
//
//    // 根据name获取实例
//    ThinkingAnalyticsSDK *ta = [ThinkingAnalyticsSDK sharedInstanceWithAppid:@"Монгол 13"];
//    [instance logout];
    
    
//    [instance enableAutoTrack:ThinkingAnalyticsEventTypeAll];
    
    
//    [instance enableAutoTrack:ThinkingAnalyticsEventTypeAll];
    
    
    
//    [instance enableAutoTrack:ThinkingAnalyticsEventTypeAll properties:@{@"autoName":@"123"}];
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
    
//    [instance login::@"dengauzhou_num2"];
//    [instance logout];
//    [instance identify:@"identify_num2"];
////    [instance logout];
    
//    NSString *str = @"FloatingWindow;{\"url\":\"http:\/\/testjbz.leiting.com\/personal\/gameGotoShelf.do?token=&currDate=xxx&sign=xxx\"}";
    
//    [instance setSuperProperties:@{@"Channel":@"ABC"}];
//
//    [instance user_set:@{@"name":@"123"}];
//
//    [instance track:@"iOS_E_V6"];
    
    
//    [instance track:@"iOS_E_V4" properties:@{@"name":@"event_9"}];
//    [instance track:@"iOS_E_V4" properties:@{@"name":@"event_10"}];
//    [instance track:@"iOS_E_V7" properties:@{@"name":@"123",@"name1":@"123",@"#device_id":@"1231232412"}];
//    [instance track:@"iOS_E_V6" properties:@{@"name":@"",@"name1":@"空字符串"}];
//    [instance track:@"iOS_E_V6" properties:@{@"name":@" ",@"name1":@"空格"}];
//    [instance logout];
//    [instance track:@"iOS_E_V10" properties:@{@"#account_id":@"bbbb"}];
//    [instance track:@"iOS_E_V9" properties:@{@"name":@"印度 8.04.12:25"}];
    
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
    
    // 对&进行百分号编码
//    NSString *string = @"123&321";
//    NSString *charactersToEscape = @"`#%^{}\"[]|\\<>&";
//    NSCharacterSet *allowedCharacters = [[NSCharacterSet characterSetWithCharactersInString:charactersToEscape] invertedSet];
//    NSString * result = [string stringByAddingPercentEncodingWithAllowedCharacters:allowedCharacters];
    
//    [instance track:@"AiTrim_finish01" properties:@{@"name":result}];
    
//    [instance track:@"AiTrim_finish06"];
//    [instance user_uniqAppend:@{@"name1":@[@"邓亚洲",@"嘻嘻"]}];
//    NSDictionary *dic = @{@"par1":@"第一个参数",@"par2":@"第二个参数"};
//    [instance track:@"AiTrim_finish13" properties:@{@"address":dic,@"name":@"来了老弟"}];
//    [instance user_setOnce:@{@"first_login_time":@"123",@"#distinct_id":@"123456789"}];
//    [instance setSuperProperties:@{@"name":@"2.3.6",@"#app_version":@"2.3.8"}];
//    [instance registerDynamicSuperProperties:^NSDictionary<NSString *,id> * _Nonnull{
//
//        return @{@"name":@"2.3.6",@"#app_version":@"2.3.7"};
//    }];
    
//    [instance login:@"abcd_yazhou_123"];
//    [instance user_set:@{@"name":@"呵呵2"}];
//    [instance user_setOnce:@{@"name1":@"呵呵12"}];
//    [instance user_delete];
    
//    [instance track:@"Test_iOS3333"];
    
    
    
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
//    [instance track:@"[aaa]" properties:@{@"product_id": @"A1234"}];
    
    
//    ThinkingAnalyticsSDK *lightInstance = [instance createLightInstance];
//    [lightInstance setSuperProperties:@{@"Channel3": @"ABC",@"isTest3": @YES}];
//    [lightInstance track:@"product_view2" properties:@{@"product_id2": @"A1234"}];
    
//    [instance2 setSuperProperties:@{@"Channel2": @"ABC",@"isTest2": @YES}];
//    [instance2 track:@"product_view1" properties:@{@"product_id": @"A1234"}];
    
    // 相当于在事件中设置了属性：
//    NSDictionary *properties = @{
//        @"Channel": @"ABC",
//        @"isTest": @YES,
//        @"product_id": @"A1234"
//    };
//    [instance track:@"product_view" properties:properties];
    
//    [instance setSuperProperties:@{@"Channel1": @"ABC1", @"isTest1": @YES}];
//    NSLog(@"%@",[instance currentSuperProperties]);//获取所有公共属性
//    // 覆盖"Channel"，此时属性"Channel"的值为"XYZ"
//    [instance setSuperProperties:@{@"Channel": @"XYZ"}];
//    NSLog(@"%@",[instance currentSuperProperties]);
//    // 覆盖"isTest"，"isTest"的值为False
//    [instance track:@"product_view1" properties:@{@"product_id1": @NO}];
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
    // 可选参数
//    firstModel.properties = @{@"rtc":@"zego2222_4"};
//    firstModel1.properties = @{@"rtc":@"zego3333_4"};
//    [firstModel configTime:[NSDate date] timeZone:[NSTimeZone localTimeZone]];
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
    [ThinkingAnalyticsSDK setLogLevel:TDLoggingLevelDebug];
    TDConfig *config = [[TDConfig alloc] init];
//    config.enableEncrypt = YES;// 开启加密功能
//    config.secretKey = [[TDSecretKey alloc] initWithVersion:3 publicKey:@"MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA1b0Vy6oYPnavJDODqaxexZTT0Lb8QEQ4cvJ+Vmk+twUJlQCzMhxXyRgDjqdGYixgHb9vu0DV1r/GzYjnkCfdlIAlxp/Cne4onLw6SLfgol6sYvTwglyAfoagiYUgYbdXRRiqu7V0r/vnOiF1QOvndomKJWIUx1ociK5ITKn1mRbvhPKlr9DlgIcpSPFnOLv3CubhP4BlWdmMBE+Q7iZbQi0gbQSGLV/5XZ83iMgWjDj1QgK0qGZZNFKhdP/68xqNdc2VYXiup6J0ESX0DljQdxruH2S2EMC1CIWyRAorHE4XPYqHjYpdDOTwieMi2DlDCyMkkzASFIN/Jj4M8p1JfQIDAQAB"];// 配置版本号、公钥等密钥信息
    ThinkingAnalyticsSDK *instance = [ThinkingAnalyticsSDK startWithAppId:APP_ID withUrl:SERVER_URL withConfig:config];
    [instance timeEvent:@"TestOne1"];
    [instance timeEvent:@"TestOne1"];
    [instance track:@"TestOne1"];
    [instance track:@"TestOne1"];
    
//    [instance track:@"name1"];
//    sleep(5);
//    [instance track:@"EncryptTest5"];
    
    
//    NSNumber;
//    NSDecimalNumber;
//
//    sleep(3);
    
//    [instance login:@"dyz_num001"];
//    [instance enableAutoTrack:ThinkingAnalyticsEventTypeAll];
    
//    NSNumber *number = [NSNumber numberWithInt:2];
//    number = nil;
//    [instance track:@"Test7" properties:@{@"#device_id":@"123"}];
//    [instance track:@"Test8"];
//    [instance enableAutoTrack:ThinkingAnalyticsEventTypeAll];
//    NSString *local = [ThinkingAnalyticsSDK getLocalRegion];
//    NSLog(@"====>>>>local:%@",local);
    
//    NSDictionary *dic0 = @{@"name1":@"ss四号",@"company1":@"数数科技1"};
//    NSDictionary *dic1 = @{@"name1":@"ss五号",@"company1":@"数数科技2"};
//    NSArray *array = @[dic0, dic1];
//
//    int i = 10;
//
//    while (i < 10000000) {
//        NSString *name = [NSString stringWithFormat:@"Test_%d",i];
//        [instance track:name properties:@{@"key_array":array,@"pet_idx":@"4",@"#ip":@"104.220.226.125"}];
//        i++;
//    }

    
    
//    [ThinkingAnalyticsSDK calibrateTimeWithNtp:@"time.apple.com"];
    
//    [ThinkingAnalyticsSDK calibrateTime:1585633785954];//2020-03-31 13:49:45
//
//    sleep(5);
//
//    [instance track:@"test99"];
//
//    sleep(5);
//
//    [ThinkingAnalyticsSDK calibrateTime:1659095401865];//2022-07-29 19:50:01
//
//    sleep(5);
//
//    [instance track:@"test7"];


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


- (void)applicationDidEnterBackground:(UIApplication *)application {
    
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


//- (void)userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(void (^)(UNNotificationPresentationOptions options))completionHandler API_AVAILABLE(macos(10.14), ios(10.0), watchos(3.0), tvos(10.0)) {
//
//}
//
//- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(void(^)(void))completionHandler API_AVAILABLE(macos(10.14), ios(10.0), watchos(3.0)) API_UNAVAILABLE(tvos) {
//
//}
//
//- (void)userNotificationCenter:(UNUserNotificationCenter *)center openSettingsForNotification:(nullable UNNotification *)notification API_AVAILABLE(macos(10.14), ios(12.0)) API_UNAVAILABLE(watchos, tvos) {
//
//}

@end
