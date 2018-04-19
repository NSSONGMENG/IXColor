//
//  UISwitch+Color.h
//  IXColor
//
//  Created by Seven on 2018/4/16.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IXColor.h"
#import "IXImage.h"

@interface UISwitch (Color)

@property (nonatomic, nullable, copy) IXColorPicker onTintColorPicker;
@property (nonatomic, nullable, copy) IXColorPicker tintColorPicker;
@property (nonatomic, nullable, copy) IXColorPicker thumbTintColorPicker;
@property (nonatomic, nullable, copy) IXImagePicker onImagePicker;
@property (nonatomic, nullable, copy) IXImagePicker offImagePicker;

@end
