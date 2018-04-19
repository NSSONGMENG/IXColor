//
//  UIPageControl+Color.m
//  IXColor
//
//  Created by Seven on 2018/4/16.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import "UIPageControl+Color.h"
#import "NSObject+Color.h"

@interface NSObject ()

@property (nonatomic, strong) NSMutableDictionary   <NSString *,id> * pickerDic;

@end

@implementation UIPageControl (Color)


#pragma mark -
#pragma mark - pageIndicatorTintColorPicker

- (void)setPageIndicatorTintColorPicker:(IXColorPicker)pageIndicatorTintColorPicker
{
    [self setPageIndicatorTintColor:pageIndicatorTintColorPicker(kVersion)];
    [self.pickerDic setValue:[pageIndicatorTintColorPicker copy]
                      forKey:SELString(@selector(setPageIndicatorTintColor:))];
}

- (IXColorPicker)pageIndicatorTintColorPicker
{
    return self.pickerDic[SELString(@selector(setPageIndicatorTintColor:))];
}


#pragma mark -
#pragma mark - currentPageIndicatorTintColorPicker

- (void)setCurrentPageIndicatorTintColorPicker:(IXColorPicker)currentPageIndicatorTintColorPicker
{
    [self setCurrentPageIndicatorTintColor:currentPageIndicatorTintColorPicker(kVersion)];
    [self.pickerDic setValue:[currentPageIndicatorTintColorPicker copy]
                      forKey:SELString(@selector(setCurrentPageIndicatorTintColor:))];
}

- (IXColorPicker)currentPageIndicatorTintColorPicker
{
    return self.pickerDic[SELString(@selector(setCurrentPageIndicatorTintColor:))];
}

@end
