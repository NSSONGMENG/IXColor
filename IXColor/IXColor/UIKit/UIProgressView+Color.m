//
//  UIProgressView+Color.m
//  IXColor
//
//  Created by Seven on 2018/4/16.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import "UIProgressView+Color.h"
#import "NSObject+Color.h"

@interface NSObject ()

@property (nonatomic, strong) NSMutableDictionary   <NSString *,id> * pickerDic;

@end

@implementation UIProgressView (Color)


#pragma mark -
#pragma mark - progressTintColorPicker

- (void)setProgressTintColorPicker:(IXColorPicker)progressTintColorPicker
{
    [self setProgressTintColor:progressTintColorPicker(kVersion)];
    [self.pickerDic setValue:[progressTintColorPicker copy]
                      forKey:SELString(@selector(setProgressTintColor:))];
}

- (IXColorPicker)progressTintColorPicker
{
    return self.pickerDic[SELString(@selector(setProgressTintColor:))];
}


#pragma mark -
#pragma mark - trackTintColorPicker

- (void)setTrackTintColorPicker:(IXColorPicker)trackTintColorPicker
{
    [self setTrackTintColor:trackTintColorPicker(kVersion)];
    [self.pickerDic setValue:[trackTintColorPicker copy]
                      forKey:SELString(@selector(setTrackTintColor:))];
}

- (IXColorPicker)trackTintColorPicker
{
    return self.pickerDic[SELString(@selector(setTrackTintColor:))];
}


#pragma mark -
#pragma mark - progressImagePicker

- (void)setProgressImagePicker:(IXImagePicker)progressImagePicker
{
    [self setProgressImage:progressImagePicker(kVersion)];
    [self.pickerDic setValue:[progressImagePicker copy]
                      forKey:SELString(@selector(setProgressImage:))];
}

- (IXImagePicker)progressImagePicker
{
    return self.pickerDic[SELString(@selector(setProgressImage:))];
}


#pragma mark -
#pragma mark - trackImagePicker

- (void)setTrackImagePicker:(IXImagePicker)trackImagePicker
{
    [self setTrackImage:trackImagePicker(kVersion)];
    [self.pickerDic setValue:trackImagePicker forKey:SELString(@selector(setTrackImage:))];
}

- (IXImagePicker)trackImagePicker
{
    return self.pickerDic[SELString(@selector(setTrackImage:))];
}
@end
