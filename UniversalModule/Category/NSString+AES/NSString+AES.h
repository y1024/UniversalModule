//
//  NSString+AES.h
//  UniversalModule
//
//  Created by 杜晓星 on 2017/1/3.
//  Copyright © 2017年 杜晓星. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (AES)


+ (NSString*)encryAESWithSrc:(NSString*)src key:(NSString*)keyString ivString:(NSString*)ivString;

+ (NSString*)dencryAESWithSrc:(NSString*)src key:(NSString*)keyString ivString:(NSString*)ivString;


/*
 
 
 - (NSString*)hexASIIWithString:(NSString*)string {
 NSString *iv = @"";
 for (int i = 0 ; i < string.length; i ++) {
 iv = [iv stringByAppendingString:[NSString stringWithFormat:@"%x",[string characterAtIndex:i]]];
 };
 return iv;
 }
 
 NSString *src = @"VERIFYCODE_KEY|1459911352|13907550001";
 NSString *keyString = @"P)KSU0JNU&D=&^Dyuu^DB!#D";
 NSString *ivString  = @"AGS1WIG!IE*IQ9UW";
 
 NSString *keyHexString = [self hexASIIWithString:keyString];
 NSString *ivHexString  = [self hexASIIWithString:ivString];
 
 CocoaSecurityDecoder *keyHexDecoder = [CocoaSecurityDecoder new];
 
 NSData *keyHexStringData = [keyHexDecoder hex:keyHexString];
 NSData *ivHexStringData = [keyHexDecoder hex:ivHexString];
 
 NSData *encryptKeyHexStringData = [keyHexStringData subdataWithRange:NSMakeRange(0, 16)];
 NSData *encryptIvHexStringData = [ivHexStringData subdataWithRange:NSMakeRange(0, 16)];
 
 CocoaSecurityResult *encryptResult = [CocoaSecurity aesEncrypt:src key:encryptKeyHexStringData iv:encryptIvHexStringData];
 
 NSLog(@"encryptResult:%@",encryptResult.base64);
 CocoaSecurityResult *decryptResult = [CocoaSecurity aesDecryptWithBase64:encryptResult.base64 key:encryptKeyHexStringData iv:encryptIvHexStringData];
 NSLog(@"decryptResult:%@",decryptResult.utf8String);
 
 */


@end
