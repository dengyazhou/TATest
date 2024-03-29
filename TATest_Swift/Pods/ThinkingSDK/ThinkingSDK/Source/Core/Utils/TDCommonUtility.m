//
//  TDCommonUtility.m
//  ThinkingSDK
//
//  Created by wwango on 2022/1/11.
//

#import "TDCommonUtility.h"

@implementation TDCommonUtility

+ (NSString *)string:(NSString *)string {
    if ([string isKindOfClass:[NSString class]] && string.length) {
        return string;
    } else {
        return @"";
    }
}

+ (NSDictionary *)dictionary:(NSDictionary *)dic {
    if (dic && [dic isKindOfClass:[NSDictionary class]] && dic.allKeys.count) {
        return dic;
    } else {
        return @{};
    }
}

@end
