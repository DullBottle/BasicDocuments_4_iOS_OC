//
//  CoreTextAttributes.h
//  Calendar
//
//  Created by 浚韩 陈 on 16/6/19.
//  Copyright © 2016年 Dressrosa. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CoreTextAttributes : NSObject

+ (NSDictionary<NSString *, id> *) calendarTitleAttributes;                                     // 标题字体属性
+ (NSDictionary<NSString *, id> *) calendarWeeksDefaultAttributes;                              // 星期默认字体属性
+ (NSDictionary<NSString *, id> *) calendarWeekSundayAttributes;                                // 星期天字体属性
+ (NSDictionary<NSString *, id> *) calendarDaysOutOfThisMonthAttributes;                        // 不是本月的日期天数的字体属性
+ (NSDictionary<NSString *, id> *) calendarDaysDefaultAttributes;                               // 本月日期默认字体属性
+ (NSDictionary<NSString *, id> *) calendarDaysSundayAttributes;                                // 本月星期天字体属性
+ (NSDictionary<NSString *, id> *) calendarDaysEventAttributes;                                 // 事件日期字体属性（本日 or 之前有事件的日期）

@end

NS_ASSUME_NONNULL_END
