//
//  BeadedBag.h
//  Calendar
//
//  Created by 浚韩 陈 on 16/6/27.
//  Copyright © 2016年 Dressrosa. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Midas : NSObject

/**
 Calculate the point with the center point, the radius and the angle.
 
 @param center The center point.
 @param radius The radius.
 @param angle The angle.
 @return A CGPoint value.
 */
+ (CGPoint) calculateThePointWithTheCenter:(CGPoint)center radius:(CGFloat)radius angle:(CGFloat)angle;

@end

NS_ASSUME_NONNULL_END
