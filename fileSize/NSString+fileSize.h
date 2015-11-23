//
//  NSString+fileSize.h
//  fileSize
//
//  Created by 侯宝伟 on 13/11/8.
//  Copyright © 2013年 ZHUNJIEE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (fileSize)
// 计算并返回文件的大小
- (unsigned long long)fileSize;

//以字符串形式返回文件的大小
- (NSString *)fileSizeString;
@end
