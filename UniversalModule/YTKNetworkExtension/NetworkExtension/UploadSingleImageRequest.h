//
//  UploadSingleImageRequest.h
//  huomo
//
//  Created by 杜晓星 on 2016/12/26.
//  Copyright © 2016年 杜晓星. All rights reserved.
//

#import "YTKPostRequest.h"

#import <UIKit/UIKit.h>

@interface UploadSingleImageRequest : YTKPostRequest

@property (copy, nonatomic) NSString *imageName;
@property (strong, nonatomic) UIImage *image;
@property (copy, nonatomic) NSString *formKey;

/**
 上传图片实际名字
 */
@property (copy, nonatomic,readonly) NSString *uploadImageName;

/**
 图片存储地址
 */
@property (copy, nonatomic,readonly) NSString *url;

- (instancetype)initWithImage:(UIImage*)image
                         name:(NSString*)imageName
                      formKey:(NSString*)formKey;

@end
