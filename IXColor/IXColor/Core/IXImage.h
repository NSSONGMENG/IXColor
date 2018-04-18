//
//  IXImage.h
//  IXColor
//
//  Created by Seven on 2018/4/3.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef UIImage *(^IXImagePicker)(NSString * version);
IXImagePicker   IXImagePickerWithImages(UIImage * normal, ...);

@interface IXImage : NSObject

@end
