//
//  UploadSingleImageRequest.m
//  huomo
//
//  Created by 杜晓星 on 2016/12/26.
//  Copyright © 2016年 杜晓星. All rights reserved.
//

#import "UploadSingleImageRequest.h"
#import "AFNetworking.h"
#import <GZIP.h>

@implementation UploadSingleImageRequest

- (instancetype)initWithImage:(UIImage*)image
                         name:(NSString*)imageName
                      formKey:(NSString *)formKey{
    self = [super init];
    if (self) {
        self.image = image;
        self.imageName = imageName;
        self.formKey = formKey;
        
    }
    return self;
}

- (AFConstructingBlock)constructingBodyBlock {
    return ^(id<AFMultipartFormData> formData) {
        NSData *data = UIImageJPEGRepresentation(self.image, 0.8);
        NSData *gipData = [data gzippedDataWithCompressionLevel:0.8];
        NSString *name = [self uploadImageName];
        NSString *formKey = nil;
        if (self.formKey) {
            formKey = self.formKey;
        }else{
            formKey = @"image";
        }
        NSString *type = @"image/jpeg";
        
        [formData appendPartWithFileData:gipData
                                    name:formKey
                                fileName:name
                                mimeType:type];
    };
}

- (NSString*)uploadImageName {
    NSString *name = nil;
    if (self.imageName) {
        name = self.imageName;
        name = [NSString stringWithFormat:@"ios_%@",self.imageName];
    }else{
        long long time = (long long)([[NSDate date]timeIntervalSince1970]);
        name = [NSString stringWithFormat:@"ios_%@.jpg",@(time).stringValue];
    }
    return name;
}

@end
