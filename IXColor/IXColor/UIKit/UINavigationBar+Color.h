//
//  UINavigationBar+Color.h
//  IXColor
//
//  Created by Seven on 2018/4/16.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IXColor.h"
#import "IXImage.h"

@interface UINavigationBar (Color)

@property (nonatomic, copy, nullable) IXColorPicker tintColorPicker;
@property (nonatomic, copy, nullable) IXColorPicker barTintColorPicker NS_AVAILABLE_IOS(7_0);

@property (nonatomic, copy, nullable) IXImagePicker shadowImagePicker  NS_AVAILABLE_IOS(6_0) UI_APPEARANCE_SELECTOR;
@property (nonatomic, copy, nullable) IXImagePicker backIndicatorImagePicker NS_AVAILABLE_IOS(7_0) UI_APPEARANCE_SELECTOR __TVOS_PROHIBITED;
@property (nonatomic, copy, nullable) IXImagePicker backIndicatorTransitionMaskImagePicker NS_AVAILABLE_IOS(7_0) UI_APPEARANCE_SELECTOR __TVOS_PROHIBITED;

- (void)setBackgroundImagePicker:(IXImagePicker _Nullable )backgroundImagePicker forBarPosition:(UIBarPosition)barPosition barMetrics:(UIBarMetrics)barMetrics NS_AVAILABLE_IOS(7_0) UI_APPEARANCE_SELECTOR;
- (void)setBackgroundImage:(IXImagePicker _Nullable )backgroundImagePicker forBarMetrics:(UIBarMetrics)barMetrics NS_AVAILABLE_IOS(5_0) UI_APPEARANCE_SELECTOR;

@end
