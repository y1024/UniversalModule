//
//  UIDevice+Extension.m
//  Universal
//
//  Created by emiaobao on 15/9/1.
//  Copyright (c) 2015年 emiaobao. All rights reserved.
//

#import "UIDevice+Extension.h"

#include <sys/socket.h>
#include <sys/sysctl.h>
#include <net/if.h>
#include <net/if_dl.h>


@interface UIDevice (private)

+ (NSString *)macAddress;

@end

@implementation UIDevice (Extension)

+ (BOOL)IPhone
{
    return [[UIDevice currentDevice]userInterfaceIdiom] == UIUserInterfaceIdiomPhone;
}

+ (float)systemVersion
{
    return [[UIDevice currentDevice].systemVersion floatValue];
}

+ (BOOL)IOS10
{
    return [self systemVersion] >= 10.0 && [self systemVersion] < 11.0;
}


+ (BOOL)IOS9
{
    return [self systemVersion] >= 9.0 && [self systemVersion] < 10.0;
}

+ (BOOL)IOS8
{
    return [self systemVersion] >= 8.0 && [self systemVersion] < 9.0;
}

+ (BOOL)IOS7
{
    return [self systemVersion] >= 7.0 && [self systemVersion] < 8.0 ;
}

+ (BOOL)IOS6
{
    return [self systemVersion] >= 6.0 && [self systemVersion] < 7.0;
}

+ (NSString *)uuidString {
    return [self currentDevice].identifierForVendor.UUIDString;
}



@end
