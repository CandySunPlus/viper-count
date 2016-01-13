//
// Created by NikSun on 16/1/13.
// Copyright (c) 2016 NikSun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CountView.h"
#import "CountInteractor.h"


@interface CountPresenter : NSObject <CountInteractorOutput>
@property(nonatomic, weak) id <CountView> view;
@property(nonatomic, strong) id <CountInteractorInput> interactor;

- (void)updateView;

- (void)increment;

- (void)decrement;
@end