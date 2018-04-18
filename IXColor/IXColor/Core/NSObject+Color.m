//
//  NSObject+Color.m
//  IXColor
//
//  Created by Seven on 2018/4/3.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import "NSObject+Color.h"
#import "IXDeallocBlockExecutor.h"
#import <objc/runtime.h>

static void *IXDeallocHelperKey;
static void *IXDeallocBlocksKey;

@interface NSObject ()

@property (nonatomic, strong) NSMutableDictionary   <NSString *,id> * pickerDic;

@end

@implementation NSObject (Color)

- (IXColorMgr *)clrMgr
{
    return [IXColorMgr defaultMgr];
}

- (NSMutableDictionary<NSString *,id> *)pickerDic
{
    NSMutableDictionary * colorPickerDic = objc_getAssociatedObject(self, @selector(pickerDic));
    
    if (!colorPickerDic) {
        @autoreleasepool {
            if (objc_getAssociatedObject(self, &IXDeallocHelperKey) == nil) {
                __unsafe_unretained typeof(self) weakSelf = self;
                id deallocHelper = [self addDeallocBlock:^{
                    [[NSNotificationCenter defaultCenter] removeObserver:weakSelf];
                }];
                objc_setAssociatedObject(self, &IXDeallocHelperKey, deallocHelper, OBJC_ASSOCIATION_ASSIGN);
            }
        }
        
        colorPickerDic = [[NSMutableDictionary alloc] init];
        objc_setAssociatedObject(self, @selector(pickerDic), colorPickerDic, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        
        [[NSNotificationCenter defaultCenter] removeObserver:self name:kIXVersionChangedNoti object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateVersion) name:kIXVersionChangedNoti object:nil];
    }
    
    return colorPickerDic;
}

- (id)addDeallocBlock:(void (^)(void))deallocBlock
{
    if (deallocBlock == nil) {
        return nil;
    }
    
    NSMutableArray *deallocBlocks = objc_getAssociatedObject(self, &IXDeallocBlocksKey);
    if (deallocBlocks == nil) {
        deallocBlocks = [NSMutableArray array];
        objc_setAssociatedObject(self, &IXDeallocBlocksKey, deallocBlocks, OBJC_ASSOCIATION_RETAIN);
    }
    // Check if the block is already existed
    for (IXDeallocBlockExecutor *executor in deallocBlocks) {
        if (executor.deallocBlock == deallocBlock) {
            return nil;
        }
    }
    
    IXDeallocBlockExecutor *executor = [IXDeallocBlockExecutor executorWithDeallocBlock:deallocBlock];
    [deallocBlocks addObject:executor];
    return executor;
}

- (void)updateVersion
{
    [self.pickerDic enumerateKeysAndObjectsUsingBlock:^(NSString * _Nonnull selector, id  _Nonnull obj, BOOL * _Nonnull stop) {
        SEL sel = NSSelectorFromString(selector);
        
        if ([obj isKindOfClass:[NSDictionary class]]) {
            NSLog(@"xxxxxxx");
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
