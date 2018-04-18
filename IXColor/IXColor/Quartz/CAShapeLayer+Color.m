//
//  CAShapeLayer+Color.m
//  IXColor
//
//  Created by Seven on 2018/4/18.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import "CAShapeLayer+Color.h"
#import "NSObject+Color.h"

@interface NSObject ()

@property (nonatomic, strong) NSMutableDictionary   <NSString *,id> * pickerDic;

@end

@implementation CAShapeLayer (Color)


#pragma mark -
#pragma mark - fillColorPicker

- (void)setFillColorPicker:(IXColorPicker)fillColorPicker
{
    [self ix_setFillColor:[fillColorPicker(kVersion) CGColor]];
    [self.pickerDic setValue:[fillColorPicker copy] forKey:SELString(@selector(ix_setFillColor:))];
}

- (IXColorPicker)fillColorPicker
{
    return self.pickerDic[SELString(@selector(ix_setFillColor:))];
}


#pragma mark -
#pragma mark - strokeColorPicker

- (void)setStrokeColorPicker:(IXColorPicker)strokeColorPicker
{
    [self ix_setStrokeColor:[strokeColorPicker(kVersion) CGColor]];
    [self.pickerDic setValue:[strokeColorPicker copy] forKey:SELString(@selector(ix_setStrokeColor:))];
}

- (IXColorPicker)strokeColorPicker
{
    return self.pickerDic[SELString(@selector(ix_setStrokeColor:))];
}


#pragma mark -
#pragma mark - func
- (void)ix_setFillColor:(CGColorRef)cgColor
{
    [self setFillColor:cgColor];
}

- (void)ix_setStrokeColor:(CGColorRef)cgColor
{
    [self setStrokeColor:cgColor];
}

@end
