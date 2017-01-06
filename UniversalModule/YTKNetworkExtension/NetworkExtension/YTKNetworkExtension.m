//
//  YTKNetworkExtension.m
//  huomo
//
//  Created by 杜晓星 on 2016/12/23.
//  Copyright © 2016年 杜晓星. All rights reserved.
//

#import "YTKNetworkExtension.h"
#import <MJExtension.h>

@implementation YTKNetworkExtension

- (instancetype)initWithResponseClass:(NSString *)cls {
    self = [super init];
    if (self) {
        self.responseClass = cls;
    }
    return self;
}

- (void)ex_startWithCompletionBlockWithSuccess:(ex_YTKRequestSuccessCompletionBlock)success failure:(ex_YTKRequestFailureCompletionBlock)failure {
    [self startWithCompletionBlockWithSuccess:^(__kindof YTKBaseRequest * _Nonnull request) {
        if (self.responseClass) {
            Class cls = NSClassFromString(self.responseClass);
            id obj = [[cls alloc]mj_setKeyValues:request.responseJSONObject];
            success(obj,request);
        }else{
            success(nil,request);
        }
    } failure:^(__kindof YTKBaseRequest * _Nonnull request) {
        failure(request.error,request);
    }];
}



@end
