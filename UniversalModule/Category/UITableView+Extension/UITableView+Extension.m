//
//  UITableView+Extension.m
//  Universal
//
//  Created by 杜晓星 on 15/10/10.
//  Copyright (c) 2015年 emiaobao. All rights reserved.
//

#import "UITableView+Extension.h"

@implementation UITableView (Extension)

- (void)registerCellWithNib:(NSString*)nibName bundle:(NSBundle*)bundle {
    [self registerNib:[UINib nibWithNibName:nibName bundle:bundle] forCellReuseIdentifier:nibName];
}
- (void)registerCellWithClass:(Class)cls;
{
    [self registerClass:cls forCellReuseIdentifier:NSStringFromClass(cls)];
}

- (void)scrollToTopWithAnimated:(BOOL)animated
{
    if ([self numberOfSections] > 0 && [self numberOfRowsInSection:0] > 0) {
        [self scrollToRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:0] atScrollPosition:UITableViewScrollPositionTop animated:animated];
    }
}

- (void)scrollToBottomWithAnimated:(BOOL)animated
{
    if ([self numberOfSections] > 0) {
        NSInteger lastSectionIndex = [self numberOfSections] - 1;
        NSInteger lastRowIndex = [self numberOfRowsInSection:lastSectionIndex] - 1;
        if (lastRowIndex > 0) {
            NSIndexPath *lastIndexPath = [NSIndexPath indexPathForRow:lastRowIndex inSection:lastSectionIndex];
            [self scrollToRowAtIndexPath:lastIndexPath atScrollPosition: UITableViewScrollPositionBottom animated:animated];
        }
    }
}

@end
