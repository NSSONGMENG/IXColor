//
//  UIBarItem+Color.m
//  IXColor
//
//  Created by Seven on 2018/4/16.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import "UIBarItem+Color.h"
#import "NSObject+Color.h"

@interface NSObject ()

@property (nonatomic, strong) NSMutableDictionary   <NSString *,id> * pickerDic;

@end

@implementation UIBarItem (Color)

//imagePicker
- (void)setImagePicker:(IXImagePicker)imagePicker
{
    [self setImage:imagePicker(kVersion)];
    [self.pickerDic setValue:[imagePicker copy] forKey:SELString(@selector(setImage:))];
}

- (IXImagePicker)imagePicker
{
    return self.pickerDic[SELString(@selector(setImage:))];
}


@end
