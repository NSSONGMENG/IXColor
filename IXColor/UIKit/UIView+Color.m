//
//  UIView+Color.m
//  IXColor
//
//  Created by Seven on 2018/4/3.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import "UIView+Color.h"
#import "NSObject+Color.h"

@interface NSObject ()

@property (nonatomic, strong) NSMutableDictionary   <NSString *,id> * pickerDic;

@end

@implementation UIView (Color)

- (void)setBackgroundColorPicker:(IXColorPicker)backgroundColorPicker
{
    [self.pickerDic setValue:backgroundColorPicker
                      forKey:SELString(@selector(setBackgroundColor:))];
    self.backgroundColor = backgroundColorPicker(kVersion);
}

- (IXColorPicker)backgroundColorPicker
{
    return self.pickerDic[SELString(@selector(setBackgroundColor:))];
}

@end
