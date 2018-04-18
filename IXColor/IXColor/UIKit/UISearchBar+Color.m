//
//  UISearchBar+Color.m
//  IXColor
//
//  Created by Seven on 2018/4/16.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import "UISearchBar+Color.h"
#import "NSObject+Color.h"

@interface NSObject ()

@property (nonatomic, strong) NSMutableDictionary   <NSString *,id> * pickerDic;

@end

@implementation UISearchBar (Color)


#pragma mark -
#pragma mark - tintColorPicker

- (void)setTintColorPicker:(IXColorPicker)tintColorPicker
{
    [self setTintColor:tintColorPicker(kVersion)];
    [self.pickerDic setValue:tintColorPicker
                      forKey:SELString(@selector(setTintColor:))];
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
    [self.pickerDic setValue:barTintColorPicker
                      forKey:SELString(@selector(setBarTintColor:))];
}

- (IXColorPicker)barTintColorPicker
{
    return self.pickerDic[SELString(@selector(setBarTintColor:))];
}


#pragma mark -
#pragma mark - backgroundImagePicker

- (void)setBackgroundImagePicker:(IXImagePicker)backgroundImagePicker
{
    [self setBackgroundImage:backgroundImagePicker(kVersion)];
    [self.pickerDic setValue:backgroundImagePicker
                      forKey:SELString(@selector(setBackgroundImage:))];
}

- (IXImagePicker)backgroundImagePicker
{
    return self.pickerDic[SELString(@selector(setBackgroundImage:))];
}

#pragma mark -
#pragma mark - scopeBarBackgroundImagePicker

- (void)setScopeBarBackgroundImagePicker:(IXImagePicker)scopeBarBackgroundImagePicker
{
    [self setScopeBarBackgroundImage:scopeBarBackgroundImagePicker(kVersion)];
    [self.pickerDic setValue:scopeBarBackgroundImagePicker
                      forKey:SELString(@selector(setScopeBarBackgroundImage:))];
}

- (IXImagePicker)scopeBarBackgroundImagePicker
{
    return self.pickerDic[SELString(@selector(setScopeBarBackgroundImage:))];
}


#pragma mark -
#pragma mark - func

- (void)setSearchFieldBackgroundImagePicker:(IXImagePicker _Nullable )backgroundImagePicker
                             forState:(UIControlState)state
{
    [self setSearchFieldBackgroundImage:backgroundImagePicker(kVersion)
                               forState:state];
    NSString    * key = SELString(@selector(setSearchFieldBackgroundImage:forState:));
    NSString    * stateKey = [NSString stringWithFormat:@"%@",@(state)];
    
    NSMutableDictionary *dic = [self.pickerDic valueForKey:key];
    if (!dic) {
        dic = [@{} mutableCopy];
    }
    [dic setValue:[backgroundImagePicker copy] forKey:stateKey];
    [self.pickerDic setValue:dic forKey:key];
}

- (void)setScopeBarButtonBackgroundImagePicker:(IXImagePicker _Nullable )backgroundImagePicker
                                      forState:(UIControlState)state
{
    [self setScopeBarButtonBackgroundImage:backgroundImagePicker(kVersion)
                                  forState:state];
    NSString    * key = SELString(@selector(setScopeBarButtonBackgroundImage:forState:));
    NSString    * stateKey = [NSString stringWithFormat:@"%@",@(state)];
    
    NSMutableDictionary *dic = [self.pickerDic valueForKey:key];
    if (!dic) {
        dic = [@{} mutableCopy];
    }
    [dic setValue:[backgroundImagePicker copy] forKey:stateKey];
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
            IXColorPicker picker = (IXColorPicker)[[dic allValues] firstObject];
            id obj1 = [[dic allKeys] firstObject];
            id obj2 = picker(kVersion);
            
            NSString * str = SELString(sel);
            if ([str isEqualToString:SELString(@selector(setSearchFieldBackgroundImage:forState:))]) {
                [self setSearchFieldBackgroundImage:obj2
                                                          forState:[obj1 integerValue]];
            }
            else if ([str isEqualToString:SELString(@selector(setScopeBarButtonBackgroundImage:forState:))]) {
                [self setScopeBarButtonBackgroundImage:obj2
                                                             forState:[obj1 integerValue]];
            }
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
