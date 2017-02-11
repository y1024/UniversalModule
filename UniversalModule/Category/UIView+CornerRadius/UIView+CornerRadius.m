//
//  UIView+CornerRadius.m
//  UniversalModule
//
//  Created by 杜晓星 on 2017/1/6.
//  Copyright © 2017年 杜晓星. All rights reserved.
//

#import "UIView+CornerRadius.h"

@implementation UIView (CornerRadius)

- (void)corner:(CGFloat)corner {
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = corner;
}

@end
