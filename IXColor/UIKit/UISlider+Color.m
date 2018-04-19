//
//  UISlider+Color.m
//  IXColor
//
//  Created by Seven on 2018/4/16.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import "UISlider+Color.h"
#import "NSObject+Color.h"

@interface NSObject ()

@property (nonatomic, strong) NSMutableDictionary   <NSString *,id> * pickerDic;

@end

@implementation UISlider (Color)


#pragma mark -
#pragma mark - minimumValueImagePicker

- (void)setMinimumValueImagePicker:(IXImagePicker)minimumValueImagePicker
{
    [self.pickerDic setValue:[minimumValueImagePicker copy]
                      forKey:SELString(@selector(setMinimumValueImage:))];
    [self setMinimumValueImage:minimumValueImagePicker(kVersion)];
}

- (IXImagePicker)minimumValueImagePicker
{
    return self.pickerDic[SELString(@selector(setMinimumValueImage:))];
}


#pragma mark -
#pragma mark - maximumValueImagePicker

- (void)setMaximumValueImagePicker:(IXImagePicker)maximumValueImagePicker
{
    [self.pickerDic setValue:[maximumValueImagePicker copy]
                      forKey:SELString(@selector(setMaximumValueImage:))];
    [self setMaximumValueImage:maximumValueImagePicker(kVersion)];
}

- (IXImagePicker)maximumValueImagePicker
{
    return self.pickerDic[SELString(@selector(setMaximumValueImage:))];
}


#pragma mark -
#pragma mark - minimumTrackTintColorPicker

- (void)setMinimumTrackTintColorPicker:(IXColorPicker)minimumTrackTintColorPicker
{
    [self.pickerDic setValue:[minimumTrackTintColorPicker copy]
                      forKey:SELString(@selector(setMinimumTrackTintColor:))];
    [self setMinimumTrackTintColor:minimumTrackTintColorPicker(kVersion)];
}

- (IXColorPicker)minimumTrackTintColorPicker
{
    return self.pickerDic[SELString(@selector(setMinimumTrackTintColor:))];
}


#pragma mark -
#pragma mark - maximumTrackTintColorPicker

- (void)setMaximumTrackTintColorPicker:(IXColorPicker)maximumTrackTintColorPicker
{
    [self.pickerDic setValue:[maximumTrackTintColorPicker copy]
                      forKey:SELString(@selector(setMaximumTrackTintColor:))];
    [self setMaximumTrackTintColor:maximumTrackTintColorPicker(kVersion)];
}

- (IXColorPicker)maximumTrackTintColorPicker
{
    return self.pickerDic[SELString(@selector(setMaximumTrackTintColor:))];
}

//@property (nonatomic, nullable, copy) IXColorPicker thumbTintColor;
- (void)setThumbTintColorPicker:(IXColorPicker)thumbTintColorPicker
{
    [self setThumbTintColor:thumbTintColorPicker(kVersion)];
    [self.pickerDic setValue:[thumbTintColorPicker copy]
                      forKey:SELString(@selector(setThumbTintColor:))];
}

- (IXColorPicker)thumbTintColorPicker
{
    return self.pickerDic[SELString(@selector(setThumbTintColor:))];
}

#pragma mark -
#pragma mark - func

- (void)setThumbImagePicker:(IXImagePicker _Nullable )imagePicker
                   forState:(UIControlState)state
{
    [self setThumbImage:imagePicker(kVersion) forState:state];
    NSString    * key = SELString(@selector(setThumbImage:forState:));
    NSString    * stateKey = [NSString stringWithFormat:@"%@",@(state)];
    
    NSMutableDictionary *dic = [self.pickerDic valueForKey:key];
    if (!dic) {
        dic = [@{} mutableCopy];
    }
    
    NSMutableDictionary * subDic = dic[stateKey];
    if (!subDic) {
        subDic = [@{} mutableCopy];
    }
    
    [subDic setValue:[imagePicker copy] forKey:@"picker"];
    [subDic setValue:@(state) forKey:@"state"];
    [dic setValue:subDic forKey:stateKey];
    
    [self.pickerDic setValue:dic forKey:key];
}

- (void)setMinimumTrackImagePicker:(IXImagePicker _Nullable )imagePicker
                          forState:(UIControlState)state
{
    [self setMinimumTrackImage:imagePicker(kVersion) forState:state];
    NSString    * key = SELString(@selector(setMinimumTrackImage:forState:));
    NSString    * stateKey = [NSString stringWithFormat:@"%@",@(state)];
    
    NSMutableDictionary *dic = [self.pickerDic valueForKey:key];
    if (!dic) {
        dic = [@{} mutableCopy];
    }
    
    NSMutableDictionary * subDic = dic[stateKey];
    if (!subDic) {
        subDic = [@{} mutableCopy];
    }
    
    [subDic setValue:[imagePicker copy] forKey:@"picker"];
    [subDic setValue:@(state) forKey:@"state"];
    [dic setValue:subDic forKey:stateKey];
    
    [self.pickerDic setValue:dic forKey:key];
}

- (void)setMaximumTrackImagePicker:(IXImagePicker _Nullable )imagePicker
                          forState:(UIControlState)state
{
    [self setMaximumTrackImage:imagePicker(kVersion)
                      forState:state];
    NSString    * key = SELString(@selector(setMaximumTrackImage:forState:));
    NSString    * stateKey = [NSString stringWithFormat:@"%@",@(state)];
    
    NSMutableDictionary *dic = [self.pickerDic valueForKey:key];
    if (!dic) {
        dic = [@{} mutableCopy];
    }
    
    NSMutableDictionary * subDic = dic[stateKey];
    if (!subDic) {
        subDic = [@{} mutableCopy];
    }
    
    [subDic setValue:[imagePicker copy] forKey:@"picker"];
    [subDic setValue:@(state) forKey:@"state"];
    [dic setValue:subDic forKey:stateKey];
    
    [self.pickerDic setValue:dic forKey:key];
}


#pragma mark -
#pragma mark - update

- (void)updateVersion
{
    [self.pickerDic enumerateKeysAndObjectsUsingBlock:^(NSString * _Nonnull selector, id  _Nonnull obj, BOOL * _Nonnull stop) {
        SEL sel = NSSelectorFromString(selector);
        
        if ([obj isKindOfClass:[NSDictionary class]]) {
            NSDictionary * dic = (NSDictionary *)obj;
            [dic enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, NSDictionary * _Nonnull subDic, BOOL * _Nonnull stop) {
                IXImagePicker picker = (IXImagePicker)subDic[@"picker"];
                UIControlState  state = [subDic[@"state"] integerValue];
                
                if ([selector isEqualToString:SELString(@selector(setThumbImage:forState:))]) {
                    [self setThumbImage:picker(kVersion) forState:state];
                }
                else if ([selector isEqualToString:SELString(@selector(setMinimumTrackImage:forState:))]) {
                    [self setMinimumTrackImage:picker(kVersion) forState:state];
                }
                else if ([selector isEqualToString:SELString(@selector(setMaximumTrackImage:forState:))]) {
                    [self setMaximumTrackImage:picker(kVersion) forState:state];
                }
            }];
        } else {
            IXColorPicker picker = (IXColorPicker)obj;
            id aimObj = picker(kVersion);
            if ([self respondsToSelector:sel]) {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
                [self performSelector:sel withObject:aimObj];
#pragma clang diagnostic pop
            }
        }
    }];
}

@end
