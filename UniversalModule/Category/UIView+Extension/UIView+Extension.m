//
//  UIView+CornerRadius.m
//  UniversalModule
//
//  Created by 杜晓星 on 2017/1/6.
//  Copyright © 2017年 杜晓星. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)

+ (instancetype)loadFromNibWithNibName:(NSString *)nibName {
    return [[[NSBundle mainBundle] loadNibNamed:nibName
                                          owner:nil options:nil]
            firstObject];
}


- (void)cornerRadius:(CGFloat)corner {
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = corner;
}

- (void)border:(CGFloat)width color:(UIColor*)color {
    self.layer.borderColor = color.CGColor;
    self.layer.borderWidth = width;
}

- (void)removeAllSubViews {
    for (UIView *subView in self.subviews) {
        [subView removeFromSuperview];
    }
}

- (void)removeSubView:(Class)cls {
    for (UIView *subView in self.subviews) {
        if ([subView isKindOfClass:cls]) {
            [subView removeFromSuperview];
        }
    }
}

@end
