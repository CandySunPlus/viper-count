//
// Created by NikSun on 16/1/13.
// Copyright (c) 2016 NikSun. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CountView <NSObject>
- (void)setCountText:(NSString*)countText;
- (void)setDecrementEnabled:(BOOL)enabled;
@end