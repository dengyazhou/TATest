//
//  APNSManager.h
//  APNSDemo
//
//  Created by mac on 2020/9/21.
//  Copyright © 2020 Q1. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <UserNotifications/UserNotifications.h>

@interface APNSManager : NSObject <UIApplicationDelegate,UNUserNotificationCenterDelegate>

+ (instancetype)Instance;

- (void)openPush;

- (void)trackPushDeviceToken:(NSData *)deviceToken;

@end

