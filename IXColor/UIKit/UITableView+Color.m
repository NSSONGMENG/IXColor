//
//  UITableView+Color.m
//  IXColor
//
//  Created by Seven on 2018/4/16.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import "UITableView+Color.h"
#import "NSObject+Color.h"

@interface NSObject ()

@property (nonatomic, strong) NSMutableDictionary   <NSString *,id> * pickerDic;

@end

@implementation UITableView (Color)


#pragma mark -
#pragma mark - sectionIndexColorPicker

- (void)setSectionIndexColorPicker:(IXColorPicker)sectionIndexColorPicker
{
    [self setSectionIndexColor:sectionIndexColorPicker(kVersion)];
    [self.pickerDic setValue:[sectionIndexColorPicker copy] forKey:SELString(@selector(setSectionIndexColor:))];
}

- (IXColorPicker)sectionIndexColorPicker
{
    return self.pickerDic[SELString(@selector(setSectionIndexColor:))];
}


#pragma mark -
#pragma mark - sectionIndexBackgroundColorPicker

- (void)setSectionIndexBackgroundColorPicker:(IXColorPicker)sectionIndexBackgroundColorPicker
{
    [self setSectionIndexBackgroundColor:sectionIndexBackgroundColorPicker(kVersion)];
    [self.pickerDic setValue:[sectionIndexBackgroundColorPicker copy]
                      forKey:SELString(@selector(setSectionIndexBackgroundColor:))];
}

- (IXColorPicker)sectionIndexBackgroundColorPicker
{
    return self.pickerDic[SELString(@selector(sectionIndexBackgroundColorPicker))];
}


#pragma mark -
#pragma mark - sectionIndexTrackingBackgroundColorPicker

- (void)setSectionIndexTrackingBackgroundColorPicker:(IXColorPicker)sectionIndexTrackingBackgroundColorPicker
{
    [self setSectionIndexTrackingBackgroundColor:sectionIndexTrackingBackgroundColorPicker(kVersion)];
    [self.pickerDic setValue:[sectionIndexTrackingBackgroundColorPicker copy]
                      forKey:SELString(@selector(setSectionIndexTrackingBackgroundColor:))];
}

- (IXColorPicker)sectionIndexTrackingBackgroundColorPicker
{
    return self.pickerDic[SELString(@selector(setSectionIndexTrackingBackgroundColor:))];
}


#pragma mark -
#pragma mark - separatorColorPicker

- (void)setSeparatorColorPicker:(IXColorPicker)separatorColorPicker
{
    [self setSeparatorColor:separatorColorPicker(kVersion)];
    [self.pickerDic setValue:[separatorColorPicker copy] forKey:SELString(@selector(setSeparatorColor:))];
}

- (IXColorPicker)separatorColorPicker
{
    return self.pickerDic[SELString(@selector(setSeparatorColor:))];
}

@end
