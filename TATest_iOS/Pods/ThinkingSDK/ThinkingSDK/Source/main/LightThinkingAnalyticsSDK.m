#import "ThinkingAnalyticsSDKPrivate.h"
#import "TDLogging.h"

@implementation LightThinkingAnalyticsSDK

- (instancetype)initWithAPPID:(NSString *)appID withServerURL:(NSString *)serverURL withConfig:(TDConfig *)config {
    if (self = [self initLight:appID withServerURL:serverURL withConfig:config]) {
    }
    
    return self;
}

- (void)login:(NSString *)accountId {
    if ([self hasDisabled])
        return;
    
    if (![accountId isKindOfClass:[NSString class]] || accountId.length == 0) {
        TDLogError(@"accountId invald", accountId);
        return;
    }
    
    @synchronized (self.accountId) {
        self.accountId = accountId;
    }
}

- (void)logout {
    if ([self hasDisabled])
        return;
    
    @synchronized (self.accountId) {
        self.accountId = nil;
    };
}

- (void)identify:(NSString *)distinctId {
    if ([self hasDisabled])
        return;
    
    if (![distinctId isKindOfClass:[NSString class]] || distinctId.length == 0) {
        TDLogError(@"identify cannot null");
        return;
    }
    
    @synchronized (self.identifyId) {
        self.identifyId = distinctId;
    };
}

- (NSString *)getDistinctId {
    return [self.identifyId copy];
}

- (void)setSuperProperties:(NSDictionary *)properties {
    if ([self hasDisabled])
        return;
    
    if (properties == nil) {
        return;
    }
    properties = [properties copy];
    
    if (![self checkEventProperties:properties withEventType:nil haveAutoTrackEvents:NO]) {
        TDLogError(@"%@ propertieDict error.", properties);
        return;
    }
    
    @synchronized (self.superProperty) {
        NSMutableDictionary *tmp = [NSMutableDictionary dictionaryWithDictionary:self.superProperty];
        [tmp addEntriesFromDictionary:[properties copy]];
        self.superProperty = [NSDictionary dictionaryWithDictionary:tmp];
    }
}

- (void)unsetSuperProperty:(NSString *)propertyKey {
    if ([self hasDisabled])
        return;
    
    if (![propertyKey isKindOfClass:[NSString class]] || propertyKey.length == 0)
        return;
    
    @synchronized (self.superProperty) {
        NSMutableDictionary *tmp = [NSMutableDictionary dictionaryWithDictionary:self.superProperty];
        tmp[propertyKey] = nil;
        self.superProperty = [NSDictionary dictionaryWithDictionary:tmp];
    }
}

- (void)clearSuperProperties {
    if ([self hasDisabled])
        return;
    
    @synchronized (self.superProperty) {
        self.superProperty = @{};
    }
}

- (NSDictionary *)currentSuperProperties {
    return [self.superProperty copy];
}

- (void)enableAutoTrack:(ThinkingAnalyticsAutoTrackEventType)eventType {
    return;
}

- (void)flush {
    return;
}

#pragma mark - EnableTracking
- (void)enableTracking:(BOOL)enabled {
    TDLogDebug(@"%@?????????: enableTracking...", self);
    self.isEnabled = enabled;
}

- (void)optOutTracking {
    TDLogDebug(@"%@?????????: optOutTracking...", self);
    self.isEnabled = NO;
}

- (void)optOutTrackingAndDeleteUser {
    TDLogDebug(@"%@?????????: optOutTrackingAndDeleteUser...", self);
    self.isEnabled = NO;
}

- (void)optInTracking {
    TDLogDebug(@"%@?????????: optInTracking...", self);
    self.isEnabled = YES;
}

/// ??????????????????
/// @param status ??????????????????
- (void)setTrackStatus: (TATrackStatus)status {
    switch (status) {
            // ??????SDK??????
        case TATrackStatusPause: {
            TDLogDebug(@"%@????????? - switchTrackStatus: TATrackStatusStop...", self);
            self.isEnabled = NO;
            break;
        }
            // ??????SDK?????????????????????
        case TATrackStatusStop: {
            TDLogDebug(@"%@????????? - switchTrackStatus: TATrackStatusStopAndClean...", self);
            self.isEnabled = NO;
            break;
        }
            // ???????????? ??????????????????
        case TATrackStatusSaveOnly: {
            TDLogDebug(@"%@????????? - switchTrackStatus: TATrackStatusPausePost...", self);
            self.trackPause = YES;
            break;
        }
            // ??????????????????
        case TATrackStatusNormal: {
            TDLogDebug(@"%@????????? - switchTrackStatus: TATrackStatusRestartAll...", self);
            self.trackPause = NO;
            self.isEnabled = YES;
            [self flush];
            break;
        }
        default:
            break;
    }
}


@end
