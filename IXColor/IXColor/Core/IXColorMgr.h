//
//  IXColorMgr.h
//  IXColor
//
//  Created by Seven on 2018/4/3.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import <Foundation/Foundation.h>


extern  NSString * const kIXVersionChangedNoti;   //color change notifaction

@interface IXColorMgr : NSObject

@property (nonatomic, strong) NSArray   * versions;
@property (nonatomic, copy) NSString    * curVersion;

+ (instancetype)defaultMgr;


/**
 change color version with the index of colorVersions

 @param idx colorVersions index
 */
- (void)changeColorVersionWithIndex:(int)idx;

@end
