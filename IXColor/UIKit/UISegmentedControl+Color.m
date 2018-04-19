//
//  UISegmentedControl+Color.m
//  IXColor
//
//  Created by Seven on 2018/4/16.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import "UISegmentedControl+Color.h"
#import "NSObject+Color.h"

@interface NSObject ()

@property (nonatomic, strong) NSMutableDictionary   <NSString *,id> * pickerDic;

@end

@implementation UISegmentedControl (Color)


#pragma mark -
#pragma mark - tintColorPicker

- (void)setTintColorPicker:(IXColorPicker)tintColorPicker
{
    [self setTintColor:tintColorPicker(kVersion)];
    [self.pickerDic setValue:[tintColorPicker copy]
                      forKey:SELString(@selector(setTintColor:))];
}

- (IXColorPicker)tintColorPicker
{
    return self.pickerDic[SELString(@selector(setTintColor:))];
}


#pragma mark -
#pragma mark - func

- (void)insertSegmentWithImagePicker:(IXImagePicker _Nullable )imagePicker
                             atIndex:(NSUInteger)segment
                            animated:(BOOL)animated
{
    [self insertSegmentWithImage:imagePicker(kVersion) atIndex:segment animated:animated];
    
    NSString    * key = SELString(@selector(insertSegmentWithImage:atIndex:animated:));
    NSString    * segKey = [NSString stringWithFormat:@"%@_%ld",key,segment];
    NSMutableDictionary * dic = self.pickerDic[key];
    if (!dic) {
        dic = [@{} mutableCopy];
    }
    
    NSMutableDictionary * subDic = dic[segKey];
    if (!subDic) {
        subDic = [@{} mutableCopy];
    }
    [subDic setValue:[imagePicker copy] forKey:@"picker"];
    [subDic setValue:@(segment) forKey:@"segment"];
    [subDic setValue:@(animated) forKey:@"animated"];
    [dic setValue:subDic forKey:segKey];
    
    [dic setValue:[imagePicker copy] forKey:segKey];
    [self.pickerDic setValue:dic forKey:key];
}

- (void)setImagePicker:(IXImagePicker _Nullable )imagePicker
     forSegmentAtIndex:(NSUInteger)segment
{
    [self setImage:imagePicker(kVersion) forSegmentAtIndex:segment];
    
    NSString    * key = SELString(@selector(setImage:forSegmentAtIndex:));
    NSString    * segKey = [NSString stringWithFormat:@"%@_%ld",key,segment];
    NSMutableDictionary * dic = self.pickerDic[key];
    if (!dic) {
        dic = [@{} mutableCopy];
    }
    
    NSMutableDictionary * subDic = dic[segKey];
    if (!subDic) {
        subDic = [@{} mutableCopy];
    }
    
    [subDic setValue:[imagePicker copy] forKey:@"picker"];
    [subDic setValue:@(segment) forKey:@"segment"];
    [dic setValue:subDic forKey:segKey];
    
    [self.pickerDic setValue:dic forKey:key];
}

- (void)setBackgroundImagePicker:(IXImagePicker _Nullable )backgroundImagePicker
                        forState:(UIControlState)state
                      barMetrics:(UIBarMetrics)barMetrics
{
    [self setBackgroundImage:backgroundImagePicker(kVersion) forState:state barMetrics:barMetrics];
    
    NSString    * key = SELString(@selector(setBackgroundImage:forState:barMetrics:));
    NSString    * stateKey = [NSString stringWithFormat:@"%@_%ld",key,state];
    NSMutableDictionary * dic = self.pickerDic[key];
    if (!dic) {
        dic = [@{} mutableCopy];
    }
    
    NSMutableDictionary * subDic = dic[stateKey];
    if (!subDic) {
        subDic = [@{} mutableCopy];
    }
    
    [subDic setValue:[backgroundImagePicker copy] forKey:@"picker"];
    [subDic setValue:@(state) forKey:@"state"];
    [subDic setValue:@(barMetrics) forKey:@"barMetrics"];
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
            
            [dic enumerateKeysAndObjectsUsingBlock:^(NSString * _Nonnull key, NSDictionary * _Nonnull subDic, BOOL * _Nonnull stop) {
                IXImagePicker   picker = subDic[@"picker"];
                
                if ([selector isEqualToString:SELString(@selector(insertSegmentWithImage:atIndex:animated:))]) {
                    NSInteger idx = [subDic[@"segment"] integerValue];
                    BOOL    animated = [subDic[@"animated"] boolValue];
                    [self insertSegmentWithImage:picker(kVersion) atIndex:idx animated:animated];
                }
                else if ([selector isEqualToString:SELString(@selector(setImage:forSegmentAtIndex:))]) {
                    NSInteger idx = [subDic[@"segment"] integerValue];
                    [self setImage:picker(kVersion) forSegmentAtIndex:idx];
                }
                else if ([selector isEqualToString:SELString(@selector(setBackgroundImage:forState:barMetrics:))]) {
                    UIControlState state = [subDic[@"state"] integerValue];
                    UIBarMetrics met = [subDic[@"barMetrics"] integerValue];
                    [self setBackgroundImage:picker(kVersion) forState:state barMetrics:met];
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
