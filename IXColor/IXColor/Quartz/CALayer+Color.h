//
//  CALayer+Color.h
//  IXColor
//
//  Created by Seven on 2018/4/18.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "IXColor.h"

@interface CALayer (Color)

@property (nonatomic, copy, nullable) IXColorPicker shadowColorPicker;
@property (nonatomic, copy, nullable) IXColorPicker borderColorPicker;
@property (nonatomic, copy, nullable) IXColorPicker backgroundColorPicker;

@end
