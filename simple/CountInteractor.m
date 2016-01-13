//
// Created by NikSun on 16/1/13.
// Copyright (c) 2016 NikSun. All rights reserved.
//

#import "CountInteractor.h"

@interface CountInteractor ()
@property(nonatomic, assign) NSUInteger count;

- (void)sendCount;

- (BOOL)canDecrement;
@end

@implementation CountInteractor

- (void)requestCount {
    [self sendCount];
}

- (void)increment {
    ++self.count;
    [self sendCount];
}

- (void)decrement {
    if ([self canDecrement]) {
        --self.count;
        [self sendCount];
    }
}

- (void)sendCount {
    [self.output updateCount:self.count];
}

- (BOOL)canDecrement {
    return self.count > 0;
}


@end