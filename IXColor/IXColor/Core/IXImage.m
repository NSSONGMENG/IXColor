//
//  IXImage.m
//  IXColor
//
//  Created by Seven on 2018/4/3.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import "IXImage.h"
#import "IXColorMgr.h"

@implementation IXImage

IXImagePicker IXImagePickerWithImages(UIImage * normal, ...) {
    NSArray * versions = [IXColorMgr defaultMgr].versions;
    NSMutableArray  * imgNames = [@[] mutableCopy];
    [imgNames addObject:normal];
    NSUInteger num_args = versions.count - 1;
    
    va_list images;
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wvarargs"
    va_start(images, num_args);
#pragma clang diagnostic pop
    for (NSUInteger i = 0; i < num_args; i++) {
        UIImage * img = va_arg(images, UIImage *);
        [imgNames addObject:img];
    }
    va_end(images);
    
    return ^(NSString *version){
        NSUInteger    idx = [[IXColorMgr defaultMgr].versions indexOfObject:[IXColorMgr defaultMgr].curVersion];
        
        if (idx < [IXColorMgr defaultMgr].versions.count) {
            return imgNames[idx];
        }
        return [imgNames lastObject];
    };
    
    return nil;
}

@end
