//
//  UIPageControl+Color.h
//  IXColor
//
//  Created by Seven on 2018/4/16.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IXColor.h"

@interface UIPageControl (Color)

@property (nonatomic, copy, nullable) IXColorPicker pageIndicatorTintColorPicker;
@property (nonatomic, copy, nullable) IXColorPicker currentPageIndicatorTintColorPicker;

@end
