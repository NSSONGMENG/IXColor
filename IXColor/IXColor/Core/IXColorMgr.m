//
//  IXColorMgr.m
//  IXColor
//
//  Created by Seven on 2018/4/3.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import "IXColorMgr.h"
#import "NSObject+Color.h"

NSString * const kIXVersionChangedNoti = @"kIXVersionChangedNoti";

@implementation IXColorMgr

static  IXColorMgr * instance;
+ (instancetype)defaultMgr
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [IXColorMgr new];
    });
    return instance;
}


- (void)changeColorVersionWithIndex:(int)idx
{
    if (self.versions.count > idx) {
        self.curVersion = self.versions[idx];
        [[NSNotificationCenter defaultCenter] postNotificationName:kIXVersionChangedNoti object:self.versions];
    } else {
        NSLog(@"##### update field. reason : idx beyound colorVersions count  #####");
    }
    
}


@end
