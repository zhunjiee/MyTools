//
//  NSObject+performSelector.h
//  10-NSInvocation基本使用
//
//  Created by 侯宝伟 on 13/9/17.
//  Copyright (c) 2013年 ZHUNJIEE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (performSelector)

- (id)performSelector:(SEL)aSelector withObjects:(NSArray *)objects;

@end
