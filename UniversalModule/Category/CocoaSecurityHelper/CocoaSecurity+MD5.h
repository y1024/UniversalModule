//
//  CocoaSecurity+MD5.h
//  huomo
//
//  Created by 杜晓星 on 16/6/16.
//  Copyright © 2016年 杜晓星. All rights reserved.
//


#import "CocoaSecurity.h"

@interface CocoaSecurity (MD5)

+ (NSString*)__md5:(NSString*)source;

+ (NSString*)__md5Lower:(NSString*)source;


@end
