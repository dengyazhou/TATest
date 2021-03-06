//
//  TDReYunSyncData.m
//  ThinkingSDK
//
//  Created by 沈和平 on 2022/3/25.
//

#import "TDReYunSyncData.h"

@implementation TDReYunSyncData

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"

- (void)syncThirdData:(id<TDThinkingTrackProtocol>)taInstance property:(NSDictionary *)property {
    
    if (!self.customPropety || [self.customPropety isKindOfClass:[NSDictionary class]]) {
        self.customPropety = @{};
    }
    
    NSString *distinctId = [taInstance getDistinctId] ? [taInstance getDistinctId] : @"";
    
    Class cls = NSClassFromString(@"Tracking");
    SEL sel = NSSelectorFromString(@"setRegisterWithAccountID:");
    if (cls && [cls respondsToSelector:sel]) {
        [cls performSelector:sel withObject: distinctId];
    }
}
#pragma clang diagnostic pop

@end
