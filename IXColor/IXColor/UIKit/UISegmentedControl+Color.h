//
//  UISegmentedControl+Color.h
//  IXColor
//
//  Created by Seven on 2018/4/16.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IXColor.h"
#import "IXImage.h"

@interface UISegmentedControl (Color)

@property (nonatomic, copy, nullable) IXColorPicker tintColorPicker;

- (void)insertSegmentWithImagePicker:(IXImagePicker _Nullable )imagePicker atIndex:(NSUInteger)segment animated:(BOOL)animated;
- (void)setImagePicker:(IXImagePicker _Nullable )imagePicker forSegmentAtIndex:(NSUInteger)segment;

- (void)setBackgroundImagePicker:(IXImagePicker _Nullable )backgroundImagePicker forState:(UIControlState)state barMetrics:(UIBarMetrics)barMetrics;

@end
