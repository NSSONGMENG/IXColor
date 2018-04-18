//
//  IXColor.m
//  IXColor
//
//  Created by Seven on 2018/4/3.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import "IXColor.h"
#import "IXColorMgr.h"

@implementation IXColor

IXColorPicker   IXColorPickerWithRGB(NSUInteger normal, ...){
    UIColor *normalColor = [UIColor colorWithRed:((float)((normal & 0xFF0000) >> 16))/255.0
                                           green:((float)((normal & 0xFF00) >> 8))/255.0
                                            blue:((float)(normal & 0xFF))/255.0
                                           alpha:1.0];
    NSArray * versions = [IXColorMgr defaultMgr].versions;
    NSMutableArray  * colors = [@[] mutableCopy];
    [colors addObject:normalColor];
    NSUInteger num_args = versions.count - 1;
    
    va_list rgbs;
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wvarargs"
    va_start(rgbs, num_args);
#pragma clang diagnostic pop
    for (NSUInteger i = 0; i < num_args; i++) {
        NSUInteger rgb = va_arg(rgbs, NSUInteger);;
         UIColor    * color = [UIColor colorWithRed:((float)((rgb & 0xFF0000) >> 16))/255.0
                                              green:((float)((rgb & 0xFF00) >> 8))/255.0
                                               blue:((float)(rgb & 0xFF))/255.0
                                              alpha:1.0];
        [colors addObject:color];
    }
    va_end(rgbs);
    
    return ^(NSString *version){
        NSUInteger    idx = [[IXColorMgr defaultMgr].versions indexOfObject:[IXColorMgr defaultMgr].curVersion];
        
        if (idx < [IXColorMgr defaultMgr].versions.count) {
            return colors[idx];
        }
        return [colors lastObject];
    };
}

@end
