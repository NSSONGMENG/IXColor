//
//  NSObject+Color.h
//  IXColor
//
//  Created by Seven on 2018/4/3.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IXColor.h"
#import "IXImage.h"
#import "IXColorMgr.h"

#define SELString(sel)  NSStringFromSelector(sel)
#define kVersion        self.clrMgr.curVersion

@interface NSObject (Color)

@property (nonatomic, readonly) IXColorMgr  * clrMgr;

- (void)updateVersion;

@end
