//
//  UIApplication+Extension.m
//  Universal
//
//  Created by emiaobao on 15/9/1.
//  Copyright (c) 2015年 emiaobao. All rights reserved.
//

#import "UIApplication+Extension.h"

#import <CoreTelephony/CTCarrier.h>
#import <CoreTelephony/CTTelephonyNetworkInfo.h>

#import "UIWindow+Extension.h"

@implementation UIApplication (Extension)

+ (id)shareDelegate {
    id app = [UIApplication sharedApplication].delegate;
    return app;
}

+ (void)openAPPInStore:(NSInteger)APPID {
    NSString *appURLString = [NSString stringWithFormat:@"http://itunes.apple.com/us/app/id%ld", (long)APPID];

    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:appURLString]];
}

+ (void)statusBarBlack {
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault animated:NO];
}

+ (void)statusBarWhite {
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent animated:NO];
}

+ (void)endEditing {
    [[UIWindow __ldx_keyWindow] resignFirstResponder];
}
#pragma mark HTTP权限
+ (BOOL)isHTTPEnable {
    if ([[[UIDevice currentDevice] systemVersion] compare:@"9.0" options:NSNumericSearch] != NSOrderedAscending) {
        NSDictionary *infoDict = [[NSBundle mainBundle] infoDictionary];
        return [[[infoDict objectForKey:@"NSAppTransportSecurity"] objectForKey:@"NSAllowsArbitraryLoads"] boolValue];
    } else {
        return NO;
    }
}

@end
