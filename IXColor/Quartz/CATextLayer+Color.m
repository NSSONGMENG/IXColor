//
//  CATextLayer+Color.m
//  IXColor
//
//  Created by Seven on 2018/4/18.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import "CATextLayer+Color.h"
#import "NSObject+Color.h"

@interface NSObject ()

@property (nonatomic, strong) NSMutableDictionary   <NSString *,id> * pickerDic;

@end

@implementation CATextLayer (Color)

#pragma mark -
#pragma mark - foregroundColorPicker

- (void)setForegroundColorPicker:(IXColorPicker)foregroundColorPicker
{
    [self ix_setForegroundColor:[foregroundColorPicker(kVersion) CGColor]];
    [self.pickerDic setValue:[foregroundColorPicker copy]
                      forKey:SELString(@selector(ix_setForegroundColor:))];
}

- (IXColorPicker)foregroundColorPicker
{
    return self.pickerDic[SELString(@selector(ix_setForegroundColor:))];
}


#pragma mark -
#pragma mark - func

- (void)ix_setForegroundColor:(CGColorRef)cgColor
{
    [self setForegroundColor:cgColor];
}

@end
