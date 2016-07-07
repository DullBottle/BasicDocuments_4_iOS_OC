//
//  BaseViewController.m
//  Calendar
//
//  Created by 浚韩 陈 on 16/6/28.
//  Copyright © 2016年 Dressrosa. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

#pragma mark - Override

- (instancetype)initWithViewModel:(id<BaseViewModelDelegate>)viewModel {
    if (self = [super init]) {
        
        // auto layout.
        [self autoLayoutSpecThatFits];
        
        // binding data.
        [self reactiveBinding];
        
    }
    return self;
}

#pragma mark - Life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - BaseDelegate methods

- (void)autoLayoutSpecThatFits {
    
}

- (void)reactiveBinding {
    
}

@end
