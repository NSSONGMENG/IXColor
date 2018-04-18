//
//  IXDeallocBlockExecutor.h
//  IXColor
//
//  Created by Seven on 2018/4/3.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IXDeallocBlockExecutor : NSObject

+ (instancetype _Nonnull )executorWithDeallocBlock:(void (^_Nullable)(void))deallocBlock;

@property (nonatomic, nullable, copy) void (^deallocBlock)(void);

@end
