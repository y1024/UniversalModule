//
//  UIApplication+Extension.h
//  Universal
//
//  Created by emiaobao on 15/9/1.
//  Copyright (c) 2015年 emiaobao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIApplication (Extension)

+ (id)shareDelegate;

+ (void)openAPPInStore:(NSInteger)APPID;

+ (void)statusBarBlack;

+ (void)statusBarWhite;

+ (BOOL)isHTTPEnable;

@end
