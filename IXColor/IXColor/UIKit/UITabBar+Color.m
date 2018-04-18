//
//  UITabBar+Color.m
//  IXColor
//
//  Created by Seven on 2018/4/16.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import "UITabBar+Color.h"
#import "NSObject+Color.h"

@interface NSObject ()

@property (nonatomic, strong) NSMutableDictionary   <NSString *,id> * pickerDic;

@end

@implementation UITabBar (Color)


#pragma mark -
#pragma mark - tintColorPicker

- (void)setTintColorPicker:(IXColorPicker)tintColorPicker
{
    [self setTintColor:tintColorPicker(kVersion)];
    [self.pickerDic setValue:[tintColorPicker copy]
                      forKey:SELString(@selector(setTintColor:))];
}

- (IXColorPicker)tintColorPicker
{
    return self.pickerDic[SELString(@selector(setTintColor:))];
}


#pragma mark -
#pragma mark - barTintColorPicker

- (void)setBarTintColorPicker:(IXColorPicker)barTintColorPicker
{
    [self setBarTintColor:barTintColorPicker(kVersion)];
    [self.pickerDic setValue:[barTintColorPicker copy]
                      forKey:SELString(@selector(setBarTintColor:))];
}

- (IXColorPicker)barTintColorPicker
{
    return self.pickerDic[SELString(@selector(setBarTintColor:))];
}


#pragma mark -
#pragma mark - unselectedItemTintColorPicker

- (void)setUnselectedItemTintColorPicker:(IXColorPicker)unselectedItemTintColorPicker
{
    [self setUnselectedItemTintColor:unselectedItemTintColorPicker(kVersion)];
    [self.pickerDic setValue:[unselectedItemTintColorPicker copy]
                      forKey:SELString(@selector(setUnselectedItemTintColor:))];
}

- (IXColorPicker)unselectedItemTintColorPicker
{
    return self.pickerDic[SELString(@selector(setUnselectedItemTintColor:))];
}


#pragma mark -
#pragma mark - selectedImageTintColorPicker

- (void)setSelectedImageTintColorPicker:(IXColorPicker)selectedImageTintColorPicker
{
    [self setSelectedImageTintColor:selectedImageTintColorPicker(kVersion)];
    [self.pickerDic setValue:[selectedImageTintColorPicker copy]
                      forKey:SELString(@selector(setSelectedImageTintColor:))];
}

- (IXColorPicker)selectedImageTintColorPicker
{
    return self.pickerDic[SELString(@selector(setSelectedImageTintColor:))];
}


#pragma mark -
#pragma mark - backgroundImagePicker

- (void)setBackgroundImagePicker:(IXImagePicker)backgroundImagePicker
{
    [self setBackgroundImage:backgroundImagePicker(kVersion)];
    [self.pickerDic setValue:[backgroundImagePicker copy]
                      forKey:SELString(@selector(setBackgroundImage:))];
}

- (IXImagePicker)backgroundImagePicker
{
    return self.pickerDic[SELString(@selector(setBackgroundImage:))];
}


#pragma mark -
#pragma mark - selectionIndicatorImagePicker

- (void)setSelectionIndicatorImagePicker:(IXImagePicker)selectionIndicatorImagePicker
{
    [self setSelectionIndicatorImage:selectionIndicatorImagePicker(kVersion)];
    [self.pickerDic setValue:[selectionIndicatorImagePicker copy]
                      forKey:SELString(@selector(setSelectionIndicatorImage:))];
}

- (IXImagePicker)selectionIndicatorImagePicker
{
    return self.pickerDic[SELString(@selector(setSelectionIndicatorImage:))];
}


#pragma mark -
#pragma mark - shadowImagePicker

- (void)setShadowImagePicker:(IXImagePicker)shadowImagePicker
{
    [self setShadowImage:shadowImagePicker(kVersion)];
    [self.pickerDic setValue:[shadowImagePicker copy]
                      forKey:SELString(@selector(setShadowImage:))];
}

- (IXImagePicker)shadowImagePicker
{
    return self.pickerDic[SELString(@selector(setShadowImage:))];
}

@end
