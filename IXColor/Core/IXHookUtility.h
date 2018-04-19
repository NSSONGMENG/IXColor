//
//  IXHookUtility.h
//  IXApp
//
//  Created by Seven on 2017/6/26.
//  Copyright © 2017年 IX. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IXHookUtility : NSObject

/**
 方法替换
 
 @param cls 类名
 @param originalSelector 原始方法
 @param swizzledSelector 新方法
 */
+ (void)swizzlingClass:(Class)cls originalSelector:(SEL)originalSelector swizzledSelector:(SEL)swizzledSelector;

@end
