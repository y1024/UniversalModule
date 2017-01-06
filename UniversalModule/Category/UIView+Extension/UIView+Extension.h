//
//  UIView+CornerRadius.h
//  UniversalModule
//
//  Created by 杜晓星 on 2017/1/6.
//  Copyright © 2017年 杜晓星. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Extension)



/**
 从nib加载

 @param nibName nibName
 @return instance
 */
+ (instancetype)loadFromNibWithNibName:(NSString*)nibName;

/**
 切圆角

 @param corner 圆角大小
 */
- (void)cornerRadius:(CGFloat)corner;


/**
 borderWith

 @param width 宽度
 @param color 颜色
 */
- (void)border:(CGFloat)width color:(UIColor*)color;

/**
 移除所有子视图
 */
- (void)removeAllSubViews;


/**
 移除指定子视图

 @param cls
 */
- (void)removeSubView:(Class)cls;


@end
