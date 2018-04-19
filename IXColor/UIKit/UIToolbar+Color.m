//
//  UIToolbar+Color.m
//  IXColor
//
//  Created by Seven on 2018/4/16.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import "UIToolbar+Color.h"
#import "NSObject+Color.h"

@interface NSObject ()

@property (nonatomic, strong) NSMutableDictionary   <NSString *,id> * pickerDic;

@end

@implementation UIToolbar (Color)

#pragma mark -
#pragma mark - tintColorPicker

- (void)setTintColorPicker:(IXColorPicker)tintColorPicker
{
    [self setTintColor:tintColorPicker(kVersion)];
    [self.pickerDic setValue:tintColorPicker forKey:SELString(@selector(setTintColor:))];
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
    [self.pickerDic setValue:barTintColorPicker forKey:SELString(@selector(setBarTintColor:))];
}

- (IXColorPicker)barTintColorPicker
{
    return self.pickerDic[SELString(@selector(setBarTintColor:))];
}


#pragma mark -
#pragma mark - func

- (void)setBackgroundImagePicker:(IXImagePicker _Nullable )backgroundImagePicker
              forToolbarPosition:(UIBarPosition)topOrBottom
                      barMetrics:(UIBarMetrics)barMetrics
{
    [self setBackgroundImage:backgroundImagePicker(kVersion)
          forToolbarPosition:topOrBottom
                  barMetrics:barMetrics];
    
    NSString    * key = SELString(@selector(setBackgroundImage:forToolbarPosition:barMetrics:));
    NSString    * stateKey = [NSString stringWithFormat:@"%@_%ld",key,topOrBottom];
    
    NSMutableDictionary *dic = [self.pickerDic valueForKey:key];
    if (!dic) {
        dic = [@{} mutableCopy];
    }
    
    NSMutableDictionary * subDic = dic[stateKey];
    if (!subDic) {
        subDic = [@{} mutableCopy];
    }
    
    [subDic setValue:[backgroundImagePicker copy] forKey:@"picker"];
    [subDic setValue:@(topOrBottom) forKey:@"position"];
    [subDic setValue:@(barMetrics) forKey:@"metrics"];
    [dic setValue:subDic forKey:stateKey];
    
    [self.pickerDic setValue:dic forKey:key];
}

- (void)setShadowImagePicker:(IXImagePicker _Nullable )shadowImagePicker
          forToolbarPosition:(UIBarPosition)topOrBottom
{
    [self setShadowImage:shadowImagePicker(kVersion) forToolbarPosition:topOrBottom];
    NSString    * key = SELString(@selector(setShadowImage:forToolbarPosition:));
    NSString    * stateKey = [NSString stringWithFormat:@"%@_%ld",key,topOrBottom];
    
    NSMutableDictionary *dic = [self.pickerDic valueForKey:key];
    if (!dic) {
        dic = [@{} mutableCopy];
    }
    
    NSMutableDictionary * subDic = dic[stateKey];
    if (!subDic) {
        subDic = [@{} mutableCopy];
    }
    
    [subDic setValue:[shadowImagePicker copy] forKey:@"picker"];
    [subDic setValue:@(topOrBottom) forKey:@"position"];
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
            id content = [[dic allValues] firstObject];
            id obj1 = [[dic allKeys] firstObject];
            
            NSString * str = SELString(sel);
            if ([str isEqualToString:SELString(@selector(setShadowImage:forToolbarPosition:))]) {
                IXImagePicker picker = (IXImagePicker)content;
                UIImage * img = picker(kVersion);
                [self setShadowImage:img forToolbarPosition:[obj1 integerValue]];
            }
            else if ([str isEqualToString:SELString(@selector(setBackgroundImage:forToolbarPosition:barMetrics:))]) {
                NSArray * arr = (NSArray *)content;
                IXImagePicker   picker = [arr firstObject];
                NSNumber    * position = [arr lastObject];
                UIImage * img = picker(kVersion);
                [self setBackgroundImage:img forToolbarPosition:[position integerValue] barMetrics:[obj1 integerValue]];
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
