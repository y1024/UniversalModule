//
//  UITableView+Extension.h
//  Universal
//
//  Created by 杜晓星 on 15/10/10.
//  Copyright (c) 2015年 emiaobao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (Extension)

- (void)registerCellWithNib:(NSString*)nibName bundle:(NSBundle*)bundle;

- (void)registerCellWithClass:(Class)cls;

- (void)scrollToTopWithAnimated:(BOOL)animated;

- (void)scrollToBottomWithAnimated:(BOOL)animated;

@end
