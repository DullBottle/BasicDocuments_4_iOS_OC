//
//  APIStateEnumeration.h
//
//  Created by __End on 2016/12/9.
//  Copyright © 2016年 IIIidan Stormrage. All rights reserved.
//

#import <Foundation/Foundation.h>

//
// 闪屏页导向结果
//
typedef NS_ENUM(NSUInteger, SplashResult) {
    SplashResultNone = 0,                               // default.
    SplashResultSystemNoticeCanLogin,                   // 有系统公告可登录
    SplashResultSystemNoticeCantLogin,                  // 有系统公告不可登录
    SplashResultWithoutSystemNotice,                    // 没有系统公告
};










