//
//  Constants.h
//  MVVM_Demo
//
//  Created by 浚韩 陈 on 16/5/13.
//  Copyright © 2016年 Dressrosa. All rights reserved.
//

#import <Availability.h>

#ifndef Constants_h
#define Constants_h

#ifdef __OBJC__

// ReactiveCocoa
#import <ReactiveCocoa/ReactiveCocoa.h>
#import <AFNetworking/AFNetworking.h>

#endif

// ---------------- configure Masonry
#define MAS_SHORTHAND        // Masonry with no mas_

// ---------------- NavigationBar 相关
#define kStatusBarHeight 20
#define kNavagationBarHeight 44
#define kNavigationBarTitleFontSize 18


// ---------------- 获取设备大小
#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

// ---------------- 系统版本
#define Current_System_Version [[[UIDevice currentDevice] systemVersion] floatValue]
#define iOS_Version_7_OR_Lower (([[[UIDevice currentDevice] systemVersion] floatValue] <= 7.0) ? (YES) : (NO))
#define Current_Language [[NSLocale preferr]]


#endif /* Constants_h */
