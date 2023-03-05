//
//  HomeViewController.m
//  TATest_iOS
//
//  Created by xmly on 2022/5/28.
//

#import "HomeViewController.h"
#import "AutoTracker/AppViewViewController.h"
#import "AutoTracker/AppClickViewController.h"
#import "AutoTracker/AppClickTableViewVC.h"
#import "AutoTracker/IgnoredViewController.h"

#import <ThinkingSDK/ThinkingSDK.h>
#import "KJException.h"

static NSString *APP_ID = @"af6861d085e14b5c948662e1fcdce6ef";
static NSString *SERVER_URL = @"https://receiver-ta-demo.thinkingdata.cn";

static NSMutableDictionary *instances;

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"首页";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 100, 50);
    [button setTitle:@"按钮" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    button.backgroundColor = [UIColor redColor];
    [self.view addSubview:button];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake(100, 200, 100, 50);
    [button1 setTitle:@"按钮数数" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(buttonClick1:) forControlEvents:UIControlEventTouchUpInside];
    button1.backgroundColor = [UIColor redColor];
    [self.view addSubview:button1];
    
    NSLog(@"=======>>>>>>viewDidLoad:instances:%@",instances);
}

- (void)buttonClick:(UIButton *)sender {
    NSLog(@"=====>>>>> 调用KJException");
//    instances = nil;
//    [KJException kj_openCrashProtectorType:(FoggyTypeAll) exception:^(_Foggy * _Nonnull _f) {}];
//    
//    TDConfig *config = [[TDConfig alloc] initWithAppId:APP_ID serverUrl:SERVER_URL];
//    [ThinkingAnalyticsSDK startWithConfig:config];
//    
//    [[ThinkingAnalyticsSDK sharedInstanceWithAppid:APP_ID] enableAutoTrack:ThinkingAnalyticsEventTypeAppStart | ThinkingAnalyticsEventTypeAppInstall | ThinkingAnalyticsEventTypeAppEnd];
//    [ThinkingAnalyticsSDK setLogLevel:TDLoggingLevelDebug];
}

- (void)buttonClick1:(UIButton *)sender {
    NSLog(@"=====>>>>> 调用ThinkingAnalyticsSDK");
//    instances = nil;
//    [ThinkingAnalyticsSDK setLogLevel:TDLoggingLevelDebug];
//    TDConfig *config = [[TDConfig alloc] initWithAppId:APP_ID serverUrl:SERVER_URL];
//    ThinkingAnalyticsSDK *instance = [ThinkingAnalyticsSDK startWithConfig:config];
//    
//    [instance track:@"testiOS"];
    
    
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"====>>>touchesBegan 开始");
    
//    instances = [[NSMutableDictionary alloc] init];
//    instances[@"aa1"] = self;
    
    NSLog(@"=====>>>1%@",instances);
    
    
    
#pragma mark
    
    
//    [instance user_setOnce:@{@"userdyz":@"ddddd2"}];
    
    
////
//    [instance track:@"TA2"];
//    [instance track:@"AiTrim_finish04"];
//    [instance track:@"iOS_E_V4"];
//    [instance track:@"test1"];
//    [instance track:@"AiTrim_finish03"];
//    [instance track:@"AiTrim_finish04"];
//    [instance track:@"test2"];
//    [instance track:@"test3"];
//    [instance track:@"test4"];
//    [instance track:@"test5"];
    
    
//    [instance track:@"AiTrim_finish01"];
//    [instance track:@"AiTrim_finish02"];
//    [instance track:@"AiTrim_finish03"];
//    [instance track:@"AiTrim_finish04"];
//    [instance track:@"AiTrim_finish05"];
//    [instance track:@"AiTrim_finish06"];
//    [instance track:@"event_7777" properties:@{@"name1":@"莫斯科时间 对时成功 之后"}];
//    [instance setSuperProperties:@{@"Channel": @"ABC", @"isTest": @YES}];
//    cn.thinkingdata.analytics.log
    //TATest_iOS
    
#pragma mark APP 安装事件 ta_app_install
    
#pragma mark APP 启动事件 ta_app_start
    
#pragma mark APP 关闭事件 ta_app_end
    
#pragma mark APP 浏览页面事件 ta_app_view
//    AppViewViewController *vc = [[AppViewViewController alloc] init];
//    [self.navigationController pushViewController:vc animated:YES];
    
#pragma mark APP 控件点击事件 ta_app_click
//    AppClickViewController *vc = [[AppClickViewController alloc] init];
//    [self.navigationController pushViewController:vc animated:YES];
    
//    AppClickTableViewVC *vc = [[AppClickTableViewVC alloc] init];
//    [self.navigationController pushViewController:vc animated:YES];
    
#pragma mark APP 崩溃事件 ta_app_crash
    NSArray *array = @[@"str1",@"sr2",@"str3"];
    NSString *str = array[3];
    
#pragma mark 忽略自动采集事件
//    IgnoredViewController *vc = [[IgnoredViewController alloc] init];
//    [self.navigationController pushViewController:vc animated:YES];
    
#pragma mark 自动采集事件设置自定义属性
    
    NSLog(@"====>>>touchesBegan 结束");
}


- (void)dealloc {
    NSLog(@"%s",__FUNCTION__);
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
