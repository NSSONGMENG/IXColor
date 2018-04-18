//
//  UIButton+Color.m
//  IXColor
//
//  Created by Seven on 2018/4/3.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import "UIButton+Color.h"
#import "NSObject+Color.h"

@interface NSObject ()

@property (nonatomic, strong) NSMutableDictionary   <NSString *,id> * pickerDic;

@end

@implementation UIButton (Color)

- (void)setTitleColorPicker:(IXColorPicker)colorPicker forState:(UIControlState)state
{
    [self setTitleColor:colorPicker(kVersion) forState:state];
    NSString    * key = SELString(@selector(setTitleColor:forState:));
    NSString    * stateKey = [NSString stringWithFormat:@"%@_%@",key,@(state)];
    
    NSMutableDictionary *dic = [self.pickerDic valueForKey:key];
    if (!dic) {
        dic = [@{} mutableCopy];
    }
    
    NSMutableDictionary * subDic = dic[stateKey];
    if (!subDic) {
        subDic = [@{} mutableCopy];
    }
    
    [subDic setValue:[colorPicker copy] forKey:@"picker"];
    [subDic setValue:@(state) forKey:@"state"];
    [dic setValue:subDic forKey:stateKey];
    
    [self.pickerDic setValue:dic forKey:key];
}

- (void)setBackgroundImagePicker:(IXImagePicker)imagePicker forState:(UIControlState)state
{
    [self setBackgroundImage:imagePicker(kVersion) forState:state];
    NSString    * key = SELString(@selector(setBackgroundImage:forState:));
    NSString    * stateKey = [NSString stringWithFormat:@"%@_%@",key,@(state)];
    
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

- (void)setImagePicker:(IXImagePicker)imagePicker forState:(UIControlState)state
{
    [self setImage:imagePicker(kVersion) forState:state];
    NSString    * key = SELString(@selector(setImage:forState:));
    NSString    * stateKey = [NSString stringWithFormat:@"%@_%@",key,@(state)];
    
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
                IXColorPicker picker = (IXColorPicker)subDic[@"picker"];
                UIControlState  state = [subDic[@"state"] integerValue];
                
                if ([selector isEqualToString:SELString(@selector(setTitleColor:forState:))]) {
                    [self setTitleColor:picker(kVersion) forState:state];
                }
                else if ([selector isEqualToString:SELString(@selector(setBackgroundImage:forState:))]) {
                    IXImagePicker   imgPicker = (IXImagePicker)picker;
                    [self setBackgroundImage:imgPicker(kVersion) forState:state];
                }
                else if ([selector isEqualToString:SELString(@selector(setImage:forState:))]) {
                    IXImagePicker   imgPicker = (IXImagePicker)picker;
                    [self setImage:imgPicker(kVersion) forState:state];
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
