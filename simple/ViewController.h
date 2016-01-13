//
//  ViewController.h
//  simple
//
//  Created by NikSun on 16/1/13.
//  Copyright (c) 2016 NikSun. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "CountView.h"

@class CountPresenter;

@interface ViewController : UIViewController <CountView>

@property (nonatomic, strong) CountPresenter* presenter;

@end
