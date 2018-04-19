//
//  CAShapeLayer+Color.h
//  IXColor
//
//  Created by Seven on 2018/4/18.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "IXColor.h"

@interface CAShapeLayer (Color)

@property (nonatomic, copy, nullable) IXColorPicker fillColorPicker;
@property (nonatomic, copy, nullable) IXColorPicker strokeColorPicker;

@end
