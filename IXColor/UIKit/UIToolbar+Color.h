//
//  UIToolbar+Color.h
//  IXColor
//
//  Created by Seven on 2018/4/16.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IXColor.h"
#import "IXImage.h"

@interface UIToolbar (Color)

@property (nonatomic, nullable, copy) IXColorPicker tintColorPicker;
@property (nonatomic, nullable, copy) IXColorPicker barTintColorPicker;

- (void)setBackgroundImagePicker:(IXImagePicker _Nullable )backgroundImagePicker
              forToolbarPosition:(UIBarPosition)topOrBottom
                      barMetrics:(UIBarMetrics)barMetrics NS_AVAILABLE_IOS(5_0) UI_APPEARANCE_SELECTOR;

- (void)setShadowImagePicker:(IXImagePicker _Nullable )shadowImagePicker
          forToolbarPosition:(UIBarPosition)topOrBottom NS_AVAILABLE_IOS(6_0) UI_APPEARANCE_SELECTOR;

@end
