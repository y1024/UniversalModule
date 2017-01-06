//
//  CocoaSecurity+MD5.m
//  huomo
//
//  Created by 杜晓星 on 16/6/16.
//  Copyright © 2016年 杜晓星. All rights reserved.
//

#import "CocoaSecurity+MD5.h"

@implementation CocoaSecurity (MD5)

+ (NSString*)__md5:(NSString*)source {
    CocoaSecurityResult *result = [CocoaSecurity md5:source];
    return result.hex;
}

+ (NSString*)__md5Lower:(NSString*)source {
    CocoaSecurityResult *result = [CocoaSecurity md5:source];
    return result.hexLower;
}

@end
