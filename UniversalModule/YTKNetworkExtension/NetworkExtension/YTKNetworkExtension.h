//
//  YTKNetworkExtension.h
//  huomo
//
//  Created by 杜晓星 on 2016/12/23.
//  Copyright © 2016年 杜晓星. All rights reserved.
//

#import <YTKNetwork/YTKNetwork.h>

@interface YTKNetworkExtension : YTKRequest


typedef void(^ex_YTKRequestSuccessCompletionBlock)(id obj,__kindof YTKBaseRequest *request);
typedef void(^ex_YTKRequestFailureCompletionBlock)(NSError *error,__kindof YTKBaseRequest *request);


@property (copy, nonatomic) NSString *responseClass;

- (instancetype)initWithResponseClass:(NSString*)cls;


- (void)ex_startWithCompletionBlockWithSuccess:(ex_YTKRequestSuccessCompletionBlock)success failure:(ex_YTKRequestFailureCompletionBlock)failure;



@end
