//
//  UISearchBar+Color.h
//  IXColor
//
//  Created by Seven on 2018/4/16.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IXColor.h"
#import "IXImage.h"

@interface UISearchBar (Color)

@property (nonatomic, nullable, copy) IXColorPicker tintColorPicker;
@property (nonatomic, nullable, copy) IXColorPicker barTintColorPicker;
@property (nonatomic, nullable, copy) IXImagePicker backgroundImagePicker;
@property (nonatomic, nullable, copy) IXImagePicker scopeBarBackgroundImagePicker;


- (void)setSearchFieldBackgroundImagePicker:(IXImagePicker _Nullable )backgroundImagePicker
                                   forState:(UIControlState)state NS_AVAILABLE_IOS(5_0) UI_APPEARANCE_SELECTOR;
- (void)setScopeBarButtonBackgroundImagePicker:(IXImagePicker _Nullable )backgroundImagePicker
                                      forState:(UIControlState)state;
@end
