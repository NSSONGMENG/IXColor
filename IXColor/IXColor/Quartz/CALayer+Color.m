//
//  CALayer+Color.m
//  IXColor
//
//  Created by Seven on 2018/4/18.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import "CALayer+Color.h"
#import "NSObject+Color.h"

@interface NSObject ()

@property (nonatomic, strong) NSMutableDictionary   <NSString *,id> * pickerDic;

@end

@implementation CALayer (Color)


#pragma mark -
#pragma mark - shadowColorPicker

- (void)setShadowColorPicker:(IXColorPicker)shadowColorPicker
{
    [self ix_setShadowColor:[shadowColorPicker(kVersion) CGColor]];
    [self.pickerDic setValue:[shadowColorPicker copy] forKey:SELString(@selector(ix_setShadowColor:))];
}

- (IXColorPicker)shadowColorPicker
{
    return self.pickerDic[SELString(@selector(ix_setShadowColor:))];
}


#pragma mark -
#pragma mark - borderColorPicker

- (void)setBorderColorPicker:(IXColorPicker)borderColorPicker
{
    [self ix_setBorderColor:[borderColorPicker(kVersion) CGColor]];
    [self.pickerDic setValue:[borderColorPicker copy] forKey:SELString(@selector(ix_setBorderColor:))];
}

- (IXColorPicker)borderColorPicker
{
    return self.pickerDic[SELString(@selector(ix_setBorderColor:))];
}


#pragma mark -
#pragma mark - backgroundColorPicker

- (void)setBackgroundColorPicker:(IXColorPicker)backgroundColorPicker
{
    [self ix_setBackgroundColorPicker:[backgroundColorPicker(kVersion) CGColor]];
    [self.pickerDic setValue:[backgroundColorPicker copy]
                      forKey:SELString(@selector(ix_setBackgroundColorPicker:))];
}

- (IXColorPicker)backgroundColorPicker
{
    return self.pickerDic[SELString(@selector(ix_setBackgroundColorPicker:))];
}


#pragma mark -
#pragma mark - func

- (void)ix_setShadowColor:(CGColorRef)cgColor
{
    [self setShadowColor:cgColor];
}

- (void)ix_setBorderColor:(CGColorRef)cgColor
{
    [self setBorderColor:cgColor];
}

- (void)ix_setBackgroundColorPicker:(CGColorRef)cgColor
{
    [self setBackgroundColor:cgColor];
}

@end
