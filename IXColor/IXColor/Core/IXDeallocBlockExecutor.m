//
//  IXDeallocBlockExecutor.m
//  IXColor
//
//  Created by Seven on 2018/4/3.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import "IXDeallocBlockExecutor.h"

@implementation IXDeallocBlockExecutor

+ (instancetype _Nonnull )executorWithDeallocBlock:(void (^)(void))deallocBlock {
    IXDeallocBlockExecutor * executor = [IXDeallocBlockExecutor new];
    executor.deallocBlock = deallocBlock;
    return executor;
}

- (void)dealloc {
    if (self.deallocBlock) {
        self.deallocBlock();
        self.deallocBlock = nil;
    }
}

@end
