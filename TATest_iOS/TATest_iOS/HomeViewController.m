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

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"首页";
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
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
//    NSArray *array = @[@"str1",@"sr2",@"str3"];
//    NSString *str = array[3];
    
#pragma mark 忽略自动采集事件
//    IgnoredViewController *vc = [[IgnoredViewController alloc] init];
//    [self.navigationController pushViewController:vc animated:YES];
    
#pragma mark 自动采集事件设置自定义属性
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
