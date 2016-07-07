//
//  CoreTextAttributes.m
//  Calendar
//
//  Created by 浚韩 陈 on 16/6/19.
//  Copyright © 2016年 Dressrosa. All rights reserved.
//

#import "CoreTextAttributes.h"

// Category
#import "UIColor+expanded.h"
#import "UIFont+expanded.h"

// Vendor
#import "TTTAttributedLabel.h"

@interface CoreTextAttributes ()

@end

static NSString * const kPurpleHexString = @"0xD1D5E7";
static NSString * const kPinkHexString = @"0xF4AAEE";

@implementation CoreTextAttributes

+ (NSDictionary<NSString *,id> *)calendarTitleAttributes {
    return @{
             (id)kCTForegroundColorAttributeName: (id)[UIColor colorWithHexString:@"0x77729F"].CGColor,
             NSFontAttributeName : [UIFont fontOfArialRoundedMTBoldWithSize:19]
             };
}

+ (NSDictionary<NSString *,id> *)calendarWeeksDefaultAttributes {
    return @{
             (id)kCTForegroundColorAttributeName: (id)[UIColor colorWithHexString:kPurpleHexString].CGColor,
             NSFontAttributeName : [UIFont fontOfArialRoundedMTBoldWithSize:16]
             };
}

+ (NSDictionary<NSString *,id> *)calendarWeekSundayAttributes {
    return @{
             (id)kCTForegroundColorAttributeName: (id)[UIColor colorWithHexString:kPinkHexString].CGColor,
             NSFontAttributeName : [UIFont fontOfArialRoundedMTBoldWithSize:16]
             };
}

+ (NSDictionary<NSString *,id> *)calendarDaysOutOfThisMonthAttributes {
    return @{
             (id)kCTForegroundColorAttributeName: (id)[UIColor colorWithHexString:@"0xEDEFF6"].CGColor,
             NSFontAttributeName : [UIFont fontOfArialRoundedMTBoldWithSize:16]
             };
}

+ (NSDictionary<NSString *,id> *)calendarDaysDefaultAttributes {
    return @{
             (id)kCTForegroundColorAttributeName: (id)[UIColor colorWithHexString:kPurpleHexString].CGColor,
             NSFontAttributeName : [UIFont fontOfArialRoundedMTBoldWithSize:16]
             };
}

+ (NSDictionary<NSString *,id> *)calendarDaysSundayAttributes {
    return @{
             (id)kCTForegroundColorAttributeName: (id)[UIColor colorWithHexString:kPinkHexString].CGColor,
             NSFontAttributeName : [UIFont fontOfArialRoundedMTBoldWithSize:16]
             };
}

+ (NSDictionary<NSString *,id> *)calendarDaysEventAttributes {
    return @{
             (id)kCTForegroundColorAttributeName: (id)[UIColor colorWithHexString:@"0xFFFFFF"].CGColor,
             NSFontAttributeName : [UIFont fontOfArialRoundedMTBoldWithSize:16]
             };
}

@end






















