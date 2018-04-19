//
//  UIProgressView+Color.h
//  IXColor
//
//  Created by Seven on 2018/4/16.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IXColor.h"
#import "IXImage.h"

@interface UIProgressView (Color)

@property (nonatomic, copy, nullable) IXColorPicker progressTintColorPicker;
@property (nonatomic, copy, nullable) IXColorPicker trackTintColorPicker;
@property (nonatomic, copy, nullable) IXImagePicker progressImagePicker;
@property (nonatomic, copy, nullable) IXImagePicker trackImagePicker;

@end
