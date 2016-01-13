//
//  ViewController.m
//  simple
//
//  Created by NikSun on 16/1/13.
//  Copyright (c) 2016 NikSun. All rights reserved.
//


#import "ViewController.h"
#import "CountPresenter.h"
#import "Masonry.h"

@interface ViewController ()
@property(nonatomic, strong) UILabel *label;
@property(nonatomic, strong) UIButton *incrementButton;
@property(nonatomic, strong) UIButton *decrementButton;


- (void)increment;

- (void)decrement;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.label = [[UILabel alloc] init];
    self.incrementButton = [UIButton buttonWithType:UIButtonTypeSystem];
    self.decrementButton = [UIButton buttonWithType:UIButtonTypeSystem];

    [self.incrementButton setTitle:@"increment" forState:UIControlStateNormal];
    [self.decrementButton setTitle:@"decrement" forState:UIControlStateNormal];

    [self.view addSubview:self.label];
    [self.view addSubview:self.incrementButton];
    [self.view addSubview:self.decrementButton];

    self.label.textAlignment = NSTextAlignmentCenter;

    [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@50);
        make.left.equalTo(@0);
        make.right.equalTo(@0);
        make.height.equalTo(@20);
    }];

    [self.incrementButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.label.mas_bottom).offset(5);
        make.left.equalTo(@0);
        make.right.equalTo(self.decrementButton.mas_left).offset(-5);
        make.height.equalTo(@30);
        make.width.equalTo(self.decrementButton);
    }];

    [self.decrementButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.label.mas_bottom).offset(5);
        make.left.equalTo(self.incrementButton.mas_right).offset(5);
        make.right.equalTo(@0);
        make.height.equalTo(@30);
        make.width.equalTo(self.incrementButton);
    }];

    [self.incrementButton addTarget:self action:@selector(increment) forControlEvents:UIControlEventTouchUpInside];
    [self.decrementButton addTarget:self action:@selector(decrement) forControlEvents:UIControlEventTouchUpInside];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.presenter updateView];
}

- (void)setCountText:(NSString *)countText {
    self.label.text = countText;
}

- (void)setDecrementEnabled:(BOOL)enabled {
    self.decrementButton.enabled = enabled;
}

- (void)increment {
    [self.presenter increment];
}

- (void)decrement {
    [self.presenter decrement];
}
@end