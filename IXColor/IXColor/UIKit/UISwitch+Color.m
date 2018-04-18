//
//  UISwitch+Color.m
//  IXColor
//
//  Created by Seven on 2018/4/16.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import "UISwitch+Color.h"
#import "NSObject+Color.h"

@interface NSObject ()

@property (nonatomic, strong) NSMutableDictionary   <NSString *,id> * pickerDic;

@end

@implementation UISwitch (Color)


#pragma mark -
#pragma mark - onTintColorPicker

- (void)setOnTintColorPicker:(IXColorPicker)onTintColorPicker
{
    [self.pickerDic setValue:onTintColorPicker
                      forKey:SELString(@selector(setOnTintColor:))];
    [self setOnTintColor:onTintColorPicker(kVersion)];
}

- (IXColorPicker)onTintColorPicker
{
    return self.pickerDic[SELString(@selector(setOnTintColor:))];
}


#pragma mark -
#pragma mark - tintColorPicker

- (void)setTintColorPicker:(IXColorPicker)tintColorPicker
{
    [self.pickerDic setValue:tintColorPicker
                      forKey:SELString(@selector(setTintColor:))];
    [self setTintColor:tintColorPicker(kVersion)];
}

- (IXColorPicker)tintColorPicker
{
    return self.pickerDic[SELString(@selector(setTintColor:))];
}


#pragma mark -
#pragma mark - thumbTintColorPicker

- (void)setThumbTintColorPicker:(IXColorPicker)thumbTintColorPicker
{
    [self.pickerDic setValue:thumbTintColorPicker
                      forKey:SELString(@selector(setThumbTintColor:))];
    [self setThumbTintColor:thumbTintColorPicker(kVersion)];
}

- (IXColorPicker)thumbTintColorPicker
{
    return self.pickerDic[SELString(@selector(setThumbTintColor:))];
}


#pragma mark -
#pragma mark - onImagePicker

- (void)setOnImagePicker:(IXImagePicker)onImagePicker
{
    [self.pickerDic setValue:onImagePicker
                      forKey:SELString(@selector(setOnImage:))];
    [self setOnImage:onImagePicker(kVersion)];
}

- (IXImagePicker)onImagePicker
{
    return self.pickerDic[SELString(@selector(setOnImage:))];
}


#pragma mark -
#pragma mark - offImagePicker

- (void)setOffImagePicker:(IXImagePicker)offImagePicker
{
    [self.pickerDic setValue:offImagePicker
                      forKey:SELString(@selector(setOffImage:))];
    [self setOffImage:offImagePicker(kVersion)];
}

- (IXImagePicker)offImagePicker
{
    return self.pickerDic[SELString(@selector(setOffImage:))];
}


@end
