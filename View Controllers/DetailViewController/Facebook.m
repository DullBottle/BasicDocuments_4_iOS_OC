//
//  Facebook.m
//  MVVM_Demo
//
//  Created by 浚韩 陈 on 16/5/20.
//  Copyright © 2016年 Dressrosa. All rights reserved.
//

#import "Facebook.h"

@implementation Facebook

- (void)dealloc {
    NSLog(@"Facebook is Gone.");
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Username: %@, time: %@", self.username, self.time];
}

@end
