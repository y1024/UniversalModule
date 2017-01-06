//
//  UIView+Border.m
//  UniversalModule
//
//  Created by 杜晓星 on 2017/1/6.
//  Copyright © 2017年 杜晓星. All rights reserved.
//

#import "UIView+Border.h"

@implementation UIView (Border)

- (void)border:(CGFloat)width color:(UIColor*)color {
    self.layer.borderColor = color.CGColor;
    self.layer.borderWidth = width;
}

@end
