//
//  NSObject+MethodSwizzle.h
//  Universal
//
//  Created by 杜晓星 on 16/2/14.
//  Copyright © 2016年 emiaobao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (MethodSwizzle)


/**
 实例交换方法

 @param originalSelector 原方法
 @param swizzledSelector 交换方法
 @return 交换成功
 */
- (BOOL)instanceMethodSwizzle:(SEL)originalSelector withMethod:(SEL)swizzledSelector;

@end
