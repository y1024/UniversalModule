//
//  YTKNetworkExtensionSetup.m
//  huomo
//
//  Created by 杜晓星 on 2016/12/23.
//  Copyright © 2016年 杜晓星. All rights reserved.
//

#import "NESetup.h"
#import <YTKNetwork/YTKNetwork.h>
@implementation NESetup

- (void)dealloc {
    NSLog(@"%s",__func__);
}

+ (void)setupWithUrl:(NSString*)url {
    YTKNetworkConfig *config = [YTKNetworkConfig sharedConfig];
    config.baseUrl = url;
}


@end
