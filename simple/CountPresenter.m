//
// Created by NikSun on 16/1/13.
// Copyright (c) 2016 NikSun. All rights reserved.
//

#import "CountPresenter.h"

@interface CountPresenter()
@property (nonatomic, strong)NSNumberFormatter *countFormatter;
- (NSNumberFormatter *)countFormatter;
- (NSString *)formattedCount:(NSUInteger)count;
- (BOOL)canDecrementCount:(NSUInteger)count;
@end

@implementation CountPresenter {

}

- (void)updateCount:(NSInteger)count {
    [self.view setCountText:[self formattedCount:count]];
    [self.view setDecrementEnabled:[self canDecrementCount:count]];
}

- (void)updateView {
    [self.interactor requestCount];
}

- (void)increment {
    [self.interactor increment];
}

- (void)decrement {
    [self.interactor decrement];
}

- (NSNumberFormatter *)countFormatter {
    if (_countFormatter == nil) {
        _countFormatter = [[NSNumberFormatter alloc] init];
        [_countFormatter setNumberStyle:NSNumberFormatterSpellOutStyle];
    }
    return _countFormatter;
}

- (NSString *)formattedCount:(NSUInteger)count {
    return [self.countFormatter stringFromNumber:[NSNumber numberWithUnsignedInteger:count]];
}

- (BOOL)canDecrementCount:(NSUInteger)count {
    return count > 0;
}


@end