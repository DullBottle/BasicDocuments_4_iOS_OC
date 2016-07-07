//
//  BaseViewModel.m
//  Calendar
//
//  Created by 浚韩 陈 on 16/6/28.
//  Copyright © 2016年 Dressrosa. All rights reserved.
//

#import "BaseViewModel.h"

@interface BaseViewModel ()

@end

@implementation BaseViewModel

#pragma mark - Override

- (instancetype) init {
    if (self = [super init]) {
        
        // binding data.
        [self reactiveBinding];
        
    }
    return self;
}

#pragma mark - Public methods

- (void)reactiveBinding {
    
}

@end
