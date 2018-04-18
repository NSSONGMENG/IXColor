//
//  IXHookUtility.m
//  IXApp
//
//  Created by Seven on 2017/6/26.
//  Copyright © 2017年 IX. All rights reserved.
//

#import "IXHookUtility.h"
#import <objc/runtime.h>

@implementation IXHookUtility

+ (void)swizzlingClass:(Class)cls originalSelector:(SEL)originalSelector swizzledSelector:(SEL)swizzledSelector{
    Class class = cls;
    
    Method originalMethod = class_getInstanceMethod(class, originalSelector);
    Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
    
    //添加swizzledMethod方法，并将originalSelector作为其选择器
    BOOL didAddMethod = class_addMethod(class,
                                        originalSelector,
                                        method_getImplementation(swizzledMethod),
                                        method_getTypeEncoding(swizzledMethod));
    
    if (didAddMethod) {
        //用swizzledSelector作为originalMethod方法实现的选择器
        class_replaceMethod(class,
                            swizzledSelector,
                            method_getImplementation(originalMethod),
                            method_getTypeEncoding(originalMethod));
    } else {
        //调换两个方法的方法实现
        method_exchangeImplementations(originalMethod, swizzledMethod);
    }
    
}

@end
