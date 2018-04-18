//
//  UISlider+Color.h
//  IXColor
//
//  Created by Seven on 2018/4/16.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IXColor.h"
#import "IXImage.h"

@interface UISlider (Color)

@property (nonatomic, nullable, copy) IXImagePicker minimumValueImagePicker;
@property (nonatomic, nullable, copy) IXImagePicker maximumValueImagePicker;
@property (nonatomic, nullable, copy) IXColorPicker minimumTrackTintColorPicker;
@property (nonatomic, nullable, copy) IXColorPicker maximumTrackTintColorPicker;
@property (nonatomic, nullable, copy) IXColorPicker thumbTintColorPicker;

- (void)setThumbImagePicker:(IXImagePicker _Nullable )imagePicker
                   forState:(UIControlState)state;

- (void)setMinimumTrackImagePicker:(IXImagePicker _Nullable )imagePicker
                          forState:(UIControlState)state;

- (void)setMaximumTrackImagePicker:(IXImagePicker _Nullable )imagePicker
                          forState:(UIControlState)state;

@end
