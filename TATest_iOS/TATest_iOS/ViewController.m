//
//  ViewController.m
//  TATest_iOS
//
//  Created by xmly on 2022/5/28.
//

#import "ViewController.h"
#import "HomeViewController.h"
#import <AFNetworking/AFNetworking.h>
#import <MJExtension/MJExtension.h>
#import <ThinkingSDK/ThinkingSDK.h>

#import "TEObject.h"

static NSString *APP_ID = @"af6861d085e14b5c948662e1fcdce6ef";
static NSString *SERVER_URL = @"https://receiver-ta-demo.thinkingdata.cn";


static NSMutableDictionary *instances;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"第一个页面";
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    
//    [ThinkingAnalyticsSDK setLogLevel:TDLoggingLevelDebug];
//    TDConfig *config = [[TDConfig alloc] initWithAppId:APP_ID serverUrl:SERVER_URL];
//    ThinkingAnalyticsSDK *instance = [ThinkingAnalyticsSDK startWithConfig:config];
    
//    TEObject *obj = [[TEObject alloc] init];
//
//
//    instances = [[NSMutableDictionary alloc] init];
////    instances[@"aa"] = @"shushu";
//    instances[@"obj1"] = obj;
//
//    NSLog(@"====>>>>:%@",instances);
    
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    NSLog(@"====>>>>:%@",instances);
    
    
    
    [[ThinkingAnalyticsSDK sharedInstance] getDeviceId];
    
//    TDConfig *config = [[TDConfig alloc] initWithAppId:APP_ID serverUrl:SERVER_URL];
//    ThinkingAnalyticsSDK *instance = [ThinkingAnalyticsSDK startWithConfig:config];
    ThinkingAnalyticsSDK *instance = [ThinkingAnalyticsSDK sharedInstanceWithAppid:APP_ID];
    [instance track:@"TestA"];
    [instance track:@"TestB"];
//
//    [instance track:@"duration"];
    
//    HomeViewController *vc = [[HomeViewController alloc] init];
//    [self.navigationController pushViewController:vc animated:YES];
//    static int a = 0;
//    if (a % 2 == 0) {
//        NSLog(@"11111");
//        TDConfig *config = [[TDConfig alloc] initWithAppId:APP_ID serverUrl:SERVER_URL];
//        ThinkingAnalyticsSDK *instance = [ThinkingAnalyticsSDK startWithConfig:config];
//        [instance enableAutoTrack:ThinkingAnalyticsEventTypeAll];
//    } else {
//        NSLog(@"22222");
//        HomeViewController *vc = [[HomeViewController alloc] init];
//        [self.navigationController pushViewController:vc animated:YES];
//    }
//    a++;
    
    
#pragma mark NSURLSession form-data
    //form-data：NSMutableURLRequest 可以不用设置
//    NSString *str = @"FloatingWindow;{\"url\":\"http:\/\/testjbz.leiting.com\/personal\/gameGotoShelf.do?token=&currDate=xxx&sign=xxx\"}";
//
//    NSDictionary *dataDic = @{@"#type": @"track",
//                              @"#event_name": @"test_one",
//                              @"#time": @"2022-06-30 13:35:53.648",
//                              @"properties": @{@"name":str},
//                              @"#distinct_id":@"1111222"
//    };
//
//    NSString *jsonStr = [dataDic mj_JSONString];
//
//    NSString *charactersToEscape = @"`#%^{}\"[]|\\<>&";
//    NSCharacterSet *allowedCharacters = [[NSCharacterSet characterSetWithCharactersInString:charactersToEscape] invertedSet];
//    jsonStr = [jsonStr stringByAddingPercentEncodingWithAllowedCharacters:allowedCharacters];
//
//    NSString *postData = [NSString stringWithFormat:@"appid=%@&client=1&data=%@",@"af6861d085e14b5c948662e1fcdce6ef",jsonStr];
//
//    NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];
//    NSURLSession *session = [NSURLSession sessionWithConfiguration:config];
//
//    NSURL *url = [NSURL URLWithString:@"https://receiver-ta-demo.thinkingdata.cn/sync_data"];
//    NSMutableURLRequest *requst = [NSMutableURLRequest requestWithURL:url];
//    requst.HTTPMethod = @"POST";
//    requst.HTTPBody = [postData dataUsingEncoding:NSUTF8StringEncoding];
//
//    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:requst completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//        NSString *dataStr = [data mj_JSONString];
//        NSLog(@"====>>>>:%@",dataStr);
//    }];
//    [dataTask resume];
    
    
#pragma mark NSURLSession  json
//    NSString *str = @"FloatingWindow;{\"url\":\"http:\/\/testjbz.leiting.com\/personal\/gameGotoShelf.do?token=&currDate=xxx&sign=xxx\"}";
//
//    NSDictionary *dataDic = @{@"#type": @"track",
//                              @"#event_name": @"test123456789",
//                              @"#time": @"2022-06-29 11:35:53.648",
//                              @"properties": @{@"name":str},
//                              @"#distinct_id":@"1111222"
//    };
//
//    NSDictionary *dic = @{@"appid":@"af6861d085e14b5c948662e1fcdce6ef",
//                          @"data":dataDic,
//                          @"debug":@1
//    };
//
//    NSString *postData = [dic mj_JSONString];
//
//    NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];
//    NSURLSession *session = [NSURLSession sessionWithConfiguration:config];
//
//    NSURL *url = [NSURL URLWithString:@"https://receiver-ta-demo.thinkingdata.cn/sync_json"];
//    NSMutableURLRequest *requst = [NSMutableURLRequest requestWithURL:url];
//    requst.HTTPMethod = @"POST";
//    requst.HTTPBody = [postData dataUsingEncoding:NSUTF8StringEncoding];
//    [requst setValue:@"application/json;charset=utf-8" forHTTPHeaderField:@"Content-Type"];
//
//    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:requst completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//        NSString *dataStr = [data mj_JSONString];
//        NSLog(@"====>>>>:%@",dataStr);
//    }];
//    [dataTask resume];
    
    
#pragma mark AFNetWorking  json
//    NSString *str = @"FloatingWindow;{\"url\":\"http:\/\/testjbz.leiting.com\/personal\/gameGotoShelf.do?token=&currDate=xxx&sign=xxx\"}";
//
//    NSDictionary *dataDic = @{@"#type": @"track",
//                              @"#event_name": @"test123456",
//                              @"#time": @"2022-06-29 11:35:53.648",
//                              @"properties": @{@"name":str},
//                              @"#distinct_id":@"1111222"
//    };
//
//    NSDictionary *dic = @{@"appid":@"af6861d085e14b5c948662e1fcdce6ef",
//                          @"data":dataDic,
//                          @"debug":@1
//    };
//
//    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
//    manager.requestSerializer = [AFJSONRequestSerializer serializer];
//
//    [manager POST:@"https://receiver-ta-demo.thinkingdata.cn/sync_json" parameters:dic headers:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//        NSString *str = [responseObject mj_JSONString];
//        NSLog(@"===>>>:%@",str);
//        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//
//        }];
    
}


@end
