//
//  UITabBar+Color.h
//  IXColor
//
//  Created by Seven on 2018/4/16.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IXColor.h"
#import "IXImage.h"

@interface UITabBar (Color)

@property (nonatomic, copy, nullable) IXColorPicker tintColorPicker;
@property (nonatomic, copy, nullable) IXColorPicker barTintColorPicker;
@property (nonatomic, copy, nullable) IXColorPicker unselectedItemTintColorPicker;
@property (nonatomic, copy, nullable) IXColorPicker selectedImageTintColorPicker  NS_DEPRECATED_IOS(5_0,8_0,"Use tintColor Picker") UI_APPEARANCE_SELECTOR __TVOS_PROHIBITED;;


@property (nonatomic, copy, nullable) IXImagePicker backgroundImagePicker;
@property (nonatomic, copy, nullable) IXImagePicker selectionIndicatorImagePicker;
@property (nonatomic, copy, nullable) IXImagePicker shadowImagePicker;

@end
