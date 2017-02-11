//
//  NSMutableDictionary+Extension.m
//  Universal
//
//  Created by 杜晓星 on 15/10/20.
//  Copyright (c) 2015年 emiaobao. All rights reserved.
//

#import "NSMutableDictionary+Safe.h"

@implementation NSMutableDictionary (Safe)


//+ (void)load
//{
//    @autoreleasepool {
//        static dispatch_once_t onceToken;
//        dispatch_once(&onceToken, ^{
//            NSMutableArray  *mutableArrayInstance = [self dictionary];
//            [self methodSwizzleWithClassName:NSStringFromClass([mutableArrayInstance class])];
//        });
//    }
//}
//
//+ (void)methodSwizzleWithClassName:(NSString*)clsName
//{
//    const char *clsCharName = clsName.UTF8String;
//    
//    Class subclass = objc_getClass(clsCharName);
//    
//    BOOL arrayI =  [subclass methodSwizzle:@selector(setValue:forKey:) withMethod:@selector(safeSetValue:key:) error:nil];
//    if (arrayI) {
//        NSLog(@"SEL:%@",NSStringFromSelector(@selector(safeSetValue:key:)));
//    }
//    
//}

- (void)safeSetValue:(id)value key:(NSString*)key
{
    if (value && [key isKindOfClass:[NSString class]]) {
        [self setValue:value forKey:key];
    }
    else
    {
        return ;
    }
}

@end
