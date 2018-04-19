//
//  UITabBarItem+Color.m
//  IXColor
//
//  Created by Seven on 2018/4/16.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import "UITabBarItem+Color.h"
#import "NSObject+Color.h"

@interface NSObject ()

@property (nonatomic, strong) NSMutableDictionary   <NSString *,id> * pickerDic;

@end


@implementation UITabBarItem (Color)


#pragma mark -
#pragma mark - badgeColorPicker

- (void)setSelectedImagePicker:(IXImagePicker)selectedImagePicker
{
    [self setSelectedImage:selectedImagePicker(kVersion)];
    [self.pickerDic setValue:[selectedImagePicker copy]
                      forKey:SELString(@selector(setSelectedImage:))];
}

- (IXImagePicker)selectedImagePicker
{
    return self.pickerDic[SELString(@selector(setSelectedImage:))];
}


#pragma mark -
#pragma mark - badgeColorPicker

- (void)setBadgeColorPicker:(IXColorPicker)badgeColorPicker
{
    [self setBadgeColor:badgeColorPicker(kVersion)];
    [self.pickerDic setValue:[badgeColorPicker copy]
                      forKey:SELString(@selector(setBadgeColor:))];
}

- (IXColorPicker)badgeColorPicker
{
    return self.pickerDic[SELString(@selector(setBadgeColor:))];
}

@end
