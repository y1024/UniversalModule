//
//  UIViewController+LifeCircle.m
//  XFOldDriver
//
//  Created by 杜晓星 on 2016/12/29.
//  Copyright © 2016年 XFOldDriver. All rights reserved.
//

#import "UIViewController+LifeCircle.h"
#import <Aspects.h>


@implementation UIViewController (LifeCircle)

+ (void)load {
    [super load];
    
#ifdef DEBUG
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        SEL deallocSEL = NSSelectorFromString(@"dealloc");
        [self aspect_hookSelector:deallocSEL withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo){
            NSLog(@"\n\n😆😆:%@\n\n",[aspectInfo instance]);
        } error:nil];
        
    });
    
    
#endif
    
}

@end
