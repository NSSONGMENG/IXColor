//
//  UITabBarItem+Color.h
//  IXColor
//
//  Created by Seven on 2018/4/16.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IXColor.h"
#import "IXImage.h"

@interface UITabBarItem (Color)

@property (nonatomic, copy, nullable) IXImagePicker selectedImagePicker;
@property (nonatomic, copy, nullable) IXColorPicker badgeColorPicker;

@end
