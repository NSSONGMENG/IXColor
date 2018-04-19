//
//  CAGradientLayer+Color.m
//  IXColor
//
//  Created by Seven on 2018/4/18.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import "CAGradientLayer+Color.h"
#import "NSObject+Color.h"

@interface NSObject ()

@property (nonatomic, strong) NSMutableDictionary   <NSString *,id> * pickerDic;

@end

@implementation CAGradientLayer (Color)


#pragma mark -
#pragma mark - ixColors

- (void)setIxColors:(NSArray<IXColorPicker> *)ixColors
{
    [self ix_setColors:ixColors];
    [self.pickerDic setValue:ixColors forKey:SELString(@selector(ix_setColors:))];
}

- (NSArray<IXColorPicker> *)ixColors
{
    return self.pickerDic[SELString(@selector(ix_setColors:))];
}


#pragma mark -
#pragma mark - func

- (void)ix_setColors:(NSArray<IXColorPicker> *)ixColors
{
    NSMutableArray  * colors = [@[] mutableCopy];
    for (int i = 0; i < ixColors.count; i ++) {
        IXColorPicker   picker = ixColors[i];
        [colors addObject:(__bridge id)picker(kVersion).CGColor];
    }
    [self setColors:colors];

}



@end
