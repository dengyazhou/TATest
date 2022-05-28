//
//  AppClickViewController.m
//  TATest_iOS
//
//  Created by xmly on 2022/5/28.
//

#import "AppClickViewController.h"
#import <Masonry/Masonry.h>
#import <ThinkingSDK/ThinkingSDK.h>

@interface AppClickViewController ()

@end

@implementation AppClickViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"ta_app_click事件";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.backgroundColor = [UIColor redColor];
    [self.view addSubview:button1];
    [button1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
        make.centerY.mas_equalTo(self.view);
        make.height.mas_equalTo(50);
    }];
    [button1 addTarget:self action:@selector(buybutton1Click:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:button2];
    [button2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(button1.mas_right).offset(10);
        make.right.mas_equalTo(-10);
        make.centerY.mas_equalTo(button1);
        make.size.mas_equalTo(button1);
    }];
    [button2 addTarget:self action:@selector(buybutton2Click:) forControlEvents:UIControlEventTouchUpInside];
    
#pragma mark 设置控件元素 ID
    //对所有APPID实例进行设置
    button1.thinkingAnalyticsViewID = @"testButtonID1";
    button2.thinkingAnalyticsViewID = @"testButtonID2";
    // 多APPID实例单独进行设置
//    button1.thinkingAnalyticsViewIDWithAppid = @{ @"app1" : @"testButtonID2",
//                                                  @"app2" : @"testButtonID2" }
    
#pragma mark 自定义控件点击事件的属性
    button1.thinkingAnalyticsViewProperties = @{@"key_button_V1":@"button1_dyz"};
    // 多APPID实例单独进行设置
//    button1.thinkingAnalyticsViewPropertiesWithAppid = @{ @"app1":@{@"tablekey":@"tablevalue"},
//                                                          @"app2":@{@"tablekey2":@"tablevalue2"};
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"ta_app_click页面touchesBegan点击开始");
    NSLog(@"ta_app_click页面touchesBegan点击结束");
}

- (void)buybutton1Click:(UIButton *)sender {
    NSLog(@"%s",__func__);
}

- (void)buybutton2Click:(UIButton *)sender {
    NSLog(@"%s",__func__);
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
