//
//  DetailViewModel.m
//  MVVM_Demo
//
//  Created by 浚韩 陈 on 16/5/20.
//  Copyright © 2016年 Dressrosa. All rights reserved.
//

#import "DetailViewModel.h"
#import "Facebook.h"
#import "NetworkingHelper.h"
#import "CoreUrl.h"
#import "CoreTextAttributes.h"

@interface DetailViewModel ()

@property (nonatomic, strong) Facebook *facebook;

@end

@implementation DetailViewModel

#pragma mark - Override

- (void)dealloc{
    NSLog(@"View model dealloc.");
}

- (instancetype)initWithModel:(Facebook *)facebook {
    if (self = [super init]) {

        _facebook = facebook;
        
        // data binding.
        RAC(self, avatar) = [RACObserve(self.facebook, avatar) map:^id(NSString *avatar) {
            return [NSURL URLWithString:avatar];
        }];
        
        RAC(self, username) = [RACObserve(self.facebook, username) map:^id(NSString *username) {
            return [[NSAttributedString alloc] initWithString:username attributes:[CoreTextAttributes usernameAttributes]];
        }];
        
        RAC(self, image) = [RACObserve(self.facebook, image) map:^id(NSString *image) {
            return [NSURL URLWithString:image];
        }];
        
        RAC(self, time) = [RACObserve(self.facebook, time) map:^id(NSString *time) {
            return [[NSAttributedString alloc] initWithString:time attributes:[CoreTextAttributes timeAttributes]];
        }];
        
    }
    return self;
}

@end


























