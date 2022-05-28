//
//  IgnoredViewController.m
//  TATest_iOS
//
//  Created by xmly on 2022/5/28.
//

#import "IgnoredViewController.h"
#import <Masonry/Masonry.h>
#import <ThinkingSDK/ThinkingSDK.h>

static NSString *APP_ID = @"a5bf4fc2f8a248a7a02b9a62a58bf1e9";

@interface IgnoredViewController ()

@property (nonatomic, strong) UIButton *btn1;

@end

@implementation IgnoredViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"忽略VC";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.backgroundColor = [UIColor redColor];
    [self.view addSubview:button1];
    self.btn1 = button1;
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

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"IgnoredViewController touchesBegan 开始");
    
    
#pragma mark 忽略某个页面的自动采集事件
//    NSMutableArray *array = [[NSMutableArray alloc] init];
//    [array addObject:@"IgnoredViewController"];
//
//    [[ThinkingAnalyticsSDK sharedInstanceWithAppid:APP_ID] ignoreAutoTrackViewControllers:array];
    
#pragma mark 忽略某个类型控件的点击事件
//    [[ThinkingAnalyticsSDK sharedInstanceWithAppid:APP_ID] ignoreViewType:[UIButton class]];
    
#pragma mark 忽略某个元素（View）的点击事件
//    self.btn1.thinkingAnalyticsIgnoreView = YES;
    
    
    
    NSLog(@"IgnoredViewController touchesBegan 结束");
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
