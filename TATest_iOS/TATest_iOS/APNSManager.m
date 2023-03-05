//
//  APNSManager.m
//  APNSDemo
//
//  Created by mac on 2020/9/21.
//  Copyright © 2020 Q1. All rights reserved.
//

#import "APNSManager.h"
//#import "ReportDataHelper.h"
//#import "GameSDK.h"
//#import "AL_Basic.h"

@interface APNSManager ()

/**
 *  APP生命进程内第一次
 */
@property(nonatomic, assign) BOOL isFirstCall;

@property(nonatomic, strong) NSString *deviceToken;

@end

@implementation APNSManager

#pragma mark - init

static APNSManager * apnsManager = nil;

+ (instancetype)Instance{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (apnsManager == nil) {
            apnsManager = [[self alloc] init];
        }
    });
    return apnsManager;
}

- (instancetype)init
{
    if (self = [super init]) {
        _isFirstCall = YES;
    }
    return self;
}

- (void)openPush {
    // 注册远程通知 (获取设备令牌)
    [self registerRemoteNotifications];
}

- (void)trackAPNSMessageWithMsdId:(NSString *)msgId pushId:(NSString *)pushId{
    
    NSString *deviceToken = self.deviceToken;
    NSString *uuid = @"123";//[GameSDK getUUID];
    
    NSMutableDictionary *param = [[NSMutableDictionary alloc] init];
    [param setObject:deviceToken.length?deviceToken:@"" forKey:@"deviceToken"];
    [param setObject:uuid.length?uuid:@"" forKey:@"uuid"];
    [param setObject:msgId.length?msgId:@"" forKey:@"messageId"];
    [param setObject:pushId.length?pushId:@"" forKey:@"pushId"];
    
//    [ReportDataHelper track:@"open_push" propertie:param];
}

#pragma mark - registe method

- (void)registerRemoteNotifications {
    /// 设置通知代理
    /// 系统为App提供了内部处理通知的机会(通过user notification代理方法), 比如修改消息内容, 是否显示消息横幅或者声音等
    /// 当App在前台运行时, 我们需要实现user notification的代理方法, 否则不显示通知
    UNUserNotificationCenter* center = [UNUserNotificationCenter currentNotificationCenter];
    center.delegate = self;
    
    /// 注册远程通知 (获取设备令牌)
    /// 如果手机可联网, 将回调
    /// 成功 application:didRegisterForRemoteNotificationsWithDeviceToken:
    /// 失败 application:didFailToRegisterForRemoteNotificationsWithError:
    [self checkNotificationAuthorizationWithCompletion:^(BOOL granted) {
        if (granted) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [[UIApplication sharedApplication] registerForRemoteNotifications];
                NSLog(@"注册通知");
            });
        }
    }];
}

#pragma mark - UNUserNotificationCenterDelegate

/// 仅当App在前台运行时, 准备呈现通知时, 才会调用该委托方法.
/// 一般在此方法里选择将通知显示为声音, 徽章, 横幅, 或显示在通知列表中.
/// @param center 用户通知中心
/// @param notification 当前通知
/// @param completionHandler 回调通知选项: 横幅, 声音, 徽章...
- (void)userNotificationCenter:(UNUserNotificationCenter *)center
       willPresentNotification:(UNNotification *)notification
         withCompletionHandler:(void (^)(UNNotificationPresentationOptions options))completionHandler {

    UNNotificationRequest *request = notification.request;
    UNNotificationContent *conten = request.content;
    NSDictionary *userInfo = conten.userInfo;
    NSString *msgId = [NSString stringWithFormat:@"%@",[userInfo objectForKey:@"messageId"]];
    NSString *pushId = [NSString stringWithFormat:@"%@",[userInfo objectForKey:@"pushId"]];

    if ([request.trigger isKindOfClass:[UNPushNotificationTrigger class]]) {
        NSLog(@"即将展示远程通知");
    }else {
        NSLog(@"即将展示本地通知");
    }
    NSLog(@"title:%@, subtitle:%@, body:%@, categoryIdentifier:%@, sound:%@, badge:%@, userInfo:%@", conten.title, conten.subtitle, conten.body, conten.categoryIdentifier, conten.sound, conten.badge, userInfo);
    
    
    [self trackAPNSMessageWithMsdId:msgId pushId:pushId];

    // 以下是在App前台运行时, 仍要显示的通知选项
    completionHandler(UNNotificationPresentationOptionAlert + UNNotificationPresentationOptionSound + UNNotificationPresentationOptionBadge);
}

/// 当用户通过点击通知打开App/关闭通知或点击通知按钮时, 调用该方法.
/// (必须在application:didFinishLaunchingWithOptions:里设置代理)
/// @param center 用户通知中心
/// @param response 响应事件
/// @param completionHandler 处理完成的回调
- (void)userNotificationCenter:(UNUserNotificationCenter *)center
didReceiveNotificationResponse:(UNNotificationResponse *)response
         withCompletionHandler:(void (^)(void))completionHandler {

    UNNotificationRequest *request = response.notification.request;
    UNNotificationContent *conten = request.content;
    NSDictionary *userInfo = conten.userInfo;
    NSString *msgId = [NSString stringWithFormat:@"%@",[userInfo objectForKey:@"messageId"]];
    NSString *pushId = [NSString stringWithFormat:@"%@",[userInfo objectForKey:@"pushId"]];
    
    if ([request.trigger isKindOfClass:[UNPushNotificationTrigger class]]) {
        NSLog(@"点击了远程通知");
    }else {
        NSLog(@"点击了本地通知");
    }
    
    [self trackAPNSMessageWithMsdId:msgId pushId:pushId];
    NSLog(@"title:%@, subtitle:%@, body:%@, categoryIdentifier:%@, sound:%@, badge:%@, userInfo:%@, actionIdentifier:%@", conten.title, conten.subtitle, conten.body, conten.categoryIdentifier, conten.sound, conten.badge, userInfo, response.actionIdentifier);

    completionHandler();
}

#pragma mark - public method

- (void)trackPushDeviceToken:(NSData *)deviceToken {
    NSString *deviceTokenStr = [self deviceTokenStrWithDeviceToken:deviceToken];
        
    if (deviceTokenStr == nil || deviceTokenStr.length == 0) {
        return;
    }
    
    self.deviceToken = deviceTokenStr;
//    [AL_Basic DebugLog:[NSString stringWithFormat:@"deviceToken:%@",deviceTokenStr]];
    
    NSMutableDictionary *parse = [[NSMutableDictionary alloc] init];
    [parse setObject:deviceTokenStr forKey:@"latest_deviceToken"];
//    [ReportDataHelper user_set:parse];
}

#pragma mark - private method

// 将deviceToken转换成字符串
- (NSString *)deviceTokenStrWithDeviceToken:(NSData *)deviceToken {

    NSString *tokenStr;
    
    if (deviceToken) {
        if ([[deviceToken description] containsString:@"length = "]) {  // iOS 13 DeviceToken 适配。
            NSMutableString *deviceTokenString = [NSMutableString string];
            const char *bytes = deviceToken.bytes;
            NSInteger count = deviceToken.length;
            for (int i = 0; i < count; i++) {
                [deviceTokenString appendFormat:@"%02x", bytes[i]&0x000000FF];
            }
            tokenStr = [NSString stringWithString:deviceTokenString];
        }else {
            tokenStr = [[[[deviceToken description]stringByReplacingOccurrencesOfString:@"<" withString:@""]stringByReplacingOccurrencesOfString:@">" withString:@""]stringByReplacingOccurrencesOfString:@" " withString:@""];
        }
    }
    
    return tokenStr;
}

// 检查通知授权状态
- (void)checkNotificationAuthorizationWithCompletion:(void (^) (BOOL granted))completion {
    
    UNUserNotificationCenter* center = [UNUserNotificationCenter currentNotificationCenter];
    [center getNotificationSettingsWithCompletionHandler:^(UNNotificationSettings * _Nonnull settings) {
        switch (settings.authorizationStatus) {
                
            // 未询问
            case UNAuthorizationStatusNotDetermined:
                {
                    // 询问之 (注意options中要列举要使用到的权限选项, 不然在设置中将不显示该权限选项)
                    [center requestAuthorizationWithOptions:(UNAuthorizationOptionAlert + UNAuthorizationOptionSound + UNAuthorizationOptionBadge)
                                          completionHandler:^(BOOL granted, NSError * _Nullable error) {
                        if (granted) {
                            NSLog(@"用户首次授权通知");
                            if (completion) completion(YES);
                        }else {
                            NSLog(@"用户首次拒绝通知");
                            if (completion) completion(NO);
                        }
                    }];
                }
                break;
                
            // 已拒绝
            case UNAuthorizationStatusDenied:
                {
                    NSLog(@"用户已拒绝通知");
                    if (completion) completion(NO);
                }
                break;
                
            // 已授权
            case UNAuthorizationStatusAuthorized:
            default:
                {
                    NSLog(@"用户已授权通知");
                    if (completion) completion(YES);
                }
                break;
        }
    }];
}


@end
