//
//  UIButton+Color.h
//  IXColor
//
//  Created by Seven on 2018/4/3.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IXColor.h"
#import "IXImage.h"

@interface UIButton (Color)

- (void)setTitleColorPicker:(IXColorPicker)colorPicker forState:(UIControlState)state;
- (void)setBackgroundImagePicker:(IXImagePicker)imagePicker forState:(UIControlState)state;
- (void)setImagePicker:(IXImagePicker)imagePicker forState:(UIControlState)state;

@end
