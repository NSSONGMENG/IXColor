//
//  UINavigationBar+Color.m
//  IXColor
//
//  Created by Seven on 2018/4/16.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import "UINavigationBar+Color.h"
#import "NSObject+Color.h"

@interface NSObject ()

@property (nonatomic, strong) NSMutableDictionary   <NSString *,id> * pickerDic;

@end

@implementation UINavigationBar (Color)

#pragma mark -
#pragma mark - tintColorPicker

- (void)setTintColorPicker:(IXColorPicker)tintColorPicker
{
    [self setTintColor:tintColorPicker(kVersion)];
    [self.pickerDic setValue:[tintColorPicker copy] forKey:SELString(@selector(setTintColor:))];
}

- (IXColorPicker)tintColorPicker
{
    return self.pickerDic[SELString(@selector(setTintColor:))];
}


#pragma mark -
#pragma mark - barTintColorPicker

- (void)setBarTintColorPicker:(IXColorPicker)barTintColorPicker
{
    [self setBarTintColor:barTintColorPicker(kVersion)];
    [self.pickerDic setValue:[barTintColorPicker copy] forKey:SELString(@selector(setBarTintColor:))];
}

- (IXColorPicker)barTintColorPicker
{
    return self.pickerDic[SELString(@selector(setBarTintColor:))];
}


#pragma mark -
#pragma mark - shadowImagePicker

- (void)setShadowImagePicker:(IXImagePicker)shadowImagePicker
{
    [self setShadowImage:shadowImagePicker(kVersion)];
    [self.pickerDic setValue:[shadowImagePicker copy] forKey:SELString(@selector(setShadowImage:))];
}

- (IXImagePicker)shadowImagePicker
{
    return self.pickerDic[SELString(@selector(setShadowImage:))];
}


#pragma mark -
#pragma mark - backIndicatorImagePicker

- (void)setBackIndicatorImagePicker:(IXImagePicker)backIndicatorImagePicker
{
    [self setBackIndicatorImage:backIndicatorImagePicker(kVersion)];
    [self.pickerDic setValue:[backIndicatorImagePicker copy]
                      forKey:SELString(@selector(setBackIndicatorImage:))];
}

- (IXImagePicker)backIndicatorImagePicker
{
    return self.pickerDic[SELString(@selector(setBackIndicatorImage:))];
}


#pragma mark -
#pragma mark - backIndicatorTransitionMaskImagePicker

 - (void)setBackIndicatorTransitionMaskImagePicker:(IXImagePicker)backIndicatorTransitionMaskImagePicker
{
    [self setBackIndicatorTransitionMaskImage:backIndicatorTransitionMaskImagePicker(kVersion)];
    [self.pickerDic setValue:[backIndicatorTransitionMaskImagePicker copy]
                      forKey:SELString(@selector(setBackIndicatorTransitionMaskImage:))];
}

- (IXImagePicker)backIndicatorTransitionMaskImagePicker
{
    return self.pickerDic[SELString(@selector(setBackIndicatorTransitionMaskImage:))];
}


#pragma mark -
#pragma mark - func

- (void)setBackgroundImagePicker:(IXImagePicker _Nullable )backgroundImagePicker
                  forBarPosition:(UIBarPosition)barPosition
                      barMetrics:(UIBarMetrics)barMetrics
{
    [self setBackgroundImage:backgroundImagePicker(kVersion) forBarPosition:barPosition barMetrics:barMetrics];
    
    NSString    * key = SELString(@selector(setBackgroundImage:forBarPosition:barMetrics:));
    NSString    * posKey = [NSString stringWithFormat:@"%@_%ld",key,barPosition];
    NSMutableDictionary * dic = self.pickerDic[key];
    if (!dic) {
        dic = [@{} mutableCopy];
    }
    
    NSMutableDictionary * subDic = dic[posKey];
    if (!subDic) {
        subDic = [@{} mutableCopy];
    }
    
    [subDic setValue:[backgroundImagePicker copy] forKey:@"picker"];
    [subDic setValue:@(barPosition) forKey:@"barPosition"];
    [subDic setValue:@(barMetrics) forKey:@"barMetrics"];
    [dic setValue:subDic forKey:posKey];
    
    [self.pickerDic setValue:dic forKey:key];
}

- (void)setBackgroundImage:(IXImagePicker _Nullable )backgroundImagePicker
             forBarMetrics:(UIBarMetrics)barMetrics
{
    [self setBackgroundImage:backgroundImagePicker(kVersion) forBarMetrics:barMetrics];
    
    NSString    * key = SELString(@selector(setBackgroundImage:forBarMetrics:));
    NSString    * metKey = [NSString stringWithFormat:@"%@_%ld",key,(long)barMetrics];
    
    NSMutableDictionary * dic = self.pickerDic[key];
    if (!dic) {
        dic = [@{} mutableCopy];
    }
    
    NSMutableDictionary * subDic = dic[metKey];
    if (!subDic) {
        subDic = [@{} mutableCopy];
    }
    
    [subDic setValue:[backgroundImagePicker copy] forKey:@"picker"];
    [subDic setValue:@(barMetrics) forKey:@"barMetrics"];
    [dic setValue:subDic forKey:metKey];
    
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
            
            [dic enumerateKeysAndObjectsUsingBlock:^(NSString * _Nonnull key, NSDictionary * _Nonnull subDic, BOOL * _Nonnull stop) {
                IXImagePicker   picker = subDic[@"picker"];
                
                if ([selector isEqualToString:SELString(@selector(setBackgroundImage:forBarPosition:barMetrics:))]) {
                    UIBarPosition pos = [subDic[@"barPosition"] integerValue];
                    UIBarMetrics  met = [subDic[@"barMetrics"] integerValue];
                    
                    [self setBackgroundImage:picker(kVersion) forBarPosition:pos barMetrics:met];
                }
                else if ([selector isEqualToString:SELString(@selector(setBackgroundImage:forBarMetrics:))]) {
                    UIBarMetrics  met = [subDic[@"barMetrics"] integerValue];
                    
                    [self setBackgroundImage:picker(kVersion) forBarMetrics:met];
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
