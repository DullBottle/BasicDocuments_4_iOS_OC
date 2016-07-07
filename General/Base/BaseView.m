//
//  BaseView.m
//  Calendar
//
//  Created by 浚韩 陈 on 16/6/28.
//  Copyright © 2016年 Dressrosa. All rights reserved.
//

#import "BaseView.h"

@interface BaseView ()

@end

@implementation BaseView

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

#pragma mark - BaseDelegate methods

- (void)autoLayoutSpecThatFits {
    
}

- (void)reactiveBinding {
    
}

@end
