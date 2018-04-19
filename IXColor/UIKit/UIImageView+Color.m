//
//  UIImageView+Color.m
//  IXColor
//
//  Created by Seven on 2018/4/3.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import "UIImageView+Color.h"
#import "NSObject+Color.h"

@interface NSObject ()

@property (nonatomic, strong) NSMutableDictionary   <NSString *,id> * pickerDic;

@end

@implementation UIImageView (Color)

- (void)setImagePicker:(IXImagePicker)imagePicker
{
    [self.pickerDic setValue:imagePicker
                      forKey:SELString(@selector(setImage:))];
    self.image = imagePicker(kVersion);
}

- (IXImagePicker)imagePicker
{
    return self.pickerDic[SELString(@selector(setImage:))];
}

@end
