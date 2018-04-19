//
//  IXColor.h
//  IXColor
//
//  Created by Seven on 2018/4/3.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef UIColor *(^IXColorPicker)(NSString * version);
IXColorPicker   IXColorPickerWithRGB(NSUInteger normal, ...);

@interface IXColor : NSObject



@end
