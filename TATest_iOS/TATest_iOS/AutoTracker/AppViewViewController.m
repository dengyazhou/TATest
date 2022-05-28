//
//  AppViewViewController.m
//  TATest_iOS
//
//  Created by xmly on 2022/5/28.
//

#import "AppViewViewController.h"
#import <ThinkingSDK/ThinkingSDK.h>

@interface AppViewViewController () <TDScreenAutoTracker>

@end

@implementation AppViewViewController

//对所有APPID实例进行设置
- (NSDictionary *)getTrackProperties {
    return @{@"PageName_V1" : @"商品详情页dyz", @"ProductId_V1" : @1234};
}

- (NSString *)getScreenUrl {
    return @"App://AutoTracker_dyz_page";
}

//多APPID实例单独进行设置
//- (NSDictionary *)getTrackPropertiesWithAppid {
//    return @{@"appid1" : @{@"testTrackProperties" : @"测试页"},
//             @"appid2" : @{@"testTrackProperties2" : @"测试页2"},
//             };
//}
//
//- (NSDictionary *)getScreenUrlWithAppid {
//    return @{@"appid1" : @"APP://test1",
//             @"appid2" : @"APP://test2",
//             };
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"ta_app_view事件";
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"ta_app_view页面touchesBegan点击开始");
    NSLog(@"ta_app_view页面touchesBegan点击结束");
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
