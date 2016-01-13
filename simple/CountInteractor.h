//
// Created by NikSun on 16/1/13.
// Copyright (c) 2016 NikSun. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CountInteractorInput <NSObject>
- (void)requestCount;

- (void)increment;

- (void)decrement;
@end

@protocol CountInteractorOutput <NSObject>
- (void)updateCount:(NSInteger)count;
@end

@interface CountInteractor : NSObject <CountInteractorInput>
@property(nonatomic, weak) id <CountInteractorOutput> output;
@end