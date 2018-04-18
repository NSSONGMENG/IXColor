//
//  UITableView+Color.h
//  IXColor
//
//  Created by Seven on 2018/4/16.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IXColor.h"

@interface UITableView (Color)

@property (nonatomic, copy, nullable) IXColorPicker sectionIndexColorPicker;
@property (nonatomic, copy, nullable) IXColorPicker sectionIndexBackgroundColorPicker;
@property (nonatomic, copy, nullable) IXColorPicker sectionIndexTrackingBackgroundColorPicker;
@property (nonatomic, copy, nullable) IXColorPicker separatorColorPicker;

@end
