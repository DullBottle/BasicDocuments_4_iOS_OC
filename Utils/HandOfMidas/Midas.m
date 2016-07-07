//
//  BeadedBag.m
//  Calendar
//
//  Created by 浚韩 陈 on 16/6/27.
//  Copyright © 2016年 Dressrosa. All rights reserved.
//

#import "Midas.h"

@implementation Midas

+ (CGPoint)calculateThePointWithTheCenter:(CGPoint)center radius:(CGFloat)radius angle:(CGFloat)angle {
    
    // calculate the result of sin() & cos() & x & y.
    CGFloat x = sin(angle) * radius;
    CGFloat y = cos(angle) * radius;
    
    return CGPointMake(center.x + y, center.y + x);
}

@end














