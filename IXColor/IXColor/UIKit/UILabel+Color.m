//
//  UILabel+Color.m
//  IXColor
//
//  Created by Seven on 2018/4/3.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import "UILabel+Color.h"
#import "NSObject+Color.h"

@interface NSObject()

@property (nonatomic, strong) NSMutableDictionary   <NSString *,id> * pickerDic;

@end


@implementation UILabel (Color)

- (void)setTextColorPicker:(IXColorPicker)textColorPicker
{
    [self.pickerDic setValue:textColorPicker
                      forKey:SELString(@selector(setTextColor:))];
    self.textColor = textColorPicker(kVersion);
}

- (IXColorPicker)textColorPicker
{
    return self.pickerDic[SELString(@selector(setTextColor:))];
}

@end
