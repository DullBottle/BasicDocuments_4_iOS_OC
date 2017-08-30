//
//  UIViewController+SVP.h
//
//  Created by __End on 2017/5/23.
//  Copyright © 2017年 IIIidan Stormrage. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (SVP)

- (void)showLoading;

- (void)showLoading:(NSString *)message;

- (void)showSuccess:(NSString *)message;

- (void)showInfo:(NSString *)message;

- (void)showError:(NSString *)message;

- (void)dismissHUD;

@end

NS_ASSUME_NONNULL_END
