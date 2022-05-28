//
//  AppClickTableViewVC.m
//  TATest_iOS
//
//  Created by xmly on 2022/5/28.
//

#import "AppClickTableViewVC.h"
#import <ThinkingSDK/ThinkingSDK.h>

@interface AppClickTableViewVC () <UITableViewDelegate, UITableViewDataSource, TDUIViewAutoTrackDelegate>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation AppClickTableViewVC

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    self.tableView.thinkingAnalyticsDelegate = nil;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"ta_app_click事件_TB";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, 300) style:UITableViewStylePlain];
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.thinkingAnalyticsDelegate = self;
    tableView.backgroundColor = [UIColor redColor];
    [self.view addSubview:tableView];
    self.tableView = tableView;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = [NSString stringWithFormat:@"第%ld section,第%ld row",indexPath.section,indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"section:%ld,row:%ld",indexPath.section,indexPath.row);
}

#pragma mark TDUIViewAutoTrackDelegate
//对所有APPID实例进行设置，设置UITableView的自定义属性
- (NSDictionary *)thinkingAnalytics_tableView:(UITableView *)tableView autoTrackPropertiesAtIndexPath:(NSIndexPath *)indexPath {
    return @{@"testProperty_TB":@"tableView",@"testProperty_TB_index":[NSString stringWithFormat:@"section:%ld,row:%ld",indexPath.section,indexPath.row]};
}
//多APPID实例单独进行设置
//- (NSDictionary *)thinkingAnalyticsWithAppid_tableView:(UITableView *)tableView autoTrackPropertiesAtIndexPath:(NSIndexPath *)indexPath {
//    return @{@"app1":@{@"autoPro":@"tablevalue"},
//             @"app2":@{@"autoPro2":@"tablevalue2"}};
//}



// UICollectionView需要实现的方法
//- (NSDictionary *)thinkingAnalytics_collectionView:(UICollectionView *)collectionView autoTrackPropertiesAtIndexPath:(NSIndexPath *)indexPath {
//
//}

//- (NSDictionary *)thinkingAnalyticsWithAppid_collectionView:(UICollectionView *)collectionView autoTrackPropertiesAtIndexPath:(NSIndexPath *)indexPath {
//
//}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
