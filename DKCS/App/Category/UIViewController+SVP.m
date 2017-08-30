//
//  UIViewController+SVP.m
//
//  Created by __End on 2017/5/23.
//  Copyright © 2017年 IIIidan Stormrage. All rights reserved.
//

#import "UIViewController+SVP.h"
#import <SVProgressHUD/SVProgressHUD.h>

@interface UIViewController ()

@end

@implementation UIViewController (SVP)

- (void)showLoading
{
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleCustom];
    [SVProgressHUD setFont:[UIFont systemFontOfSize:14.f]];
    [SVProgressHUD setForegroundColor:[UIColor colorWithHexString:@"#0094D7"]];
    [SVProgressHUD show];
}

- (void)showLoading:(NSString *)message
{
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleCustom];
    [SVProgressHUD setFont:[UIFont systemFontOfSize:14.f]];
    [SVProgressHUD setForegroundColor:[UIColor colorWithHexString:@"#0094D7"]];
    [SVProgressHUD showWithStatus:message];
}

- (void)showSuccess:(NSString *)message
{
    [SVProgressHUD setForegroundColor:[UIColor colorWithHexString:@"#64AE23"]];
    [SVProgressHUD setFont:[UIFont systemFontOfSize:14.f]];
    [SVProgressHUD setMinimumDismissTimeInterval:1.5];
    [SVProgressHUD showSuccessWithStatus:message];
}

- (void)showInfo:(NSString *)message
{
    [SVProgressHUD setForegroundColor:[UIColor colorWithHexString:@"#64AE23"]];
    [SVProgressHUD setFont:[UIFont systemFontOfSize:14.f]];
    [SVProgressHUD setMinimumDismissTimeInterval:1.5];
    [SVProgressHUD showInfoWithStatus:message];
}

- (void)showError:(NSString *)message
{
    [SVProgressHUD setForegroundColor:[UIColor colorWithHexString:@"#ED4359"]];
    [SVProgressHUD setFont:[UIFont systemFontOfSize:14.f]];
    [SVProgressHUD setMinimumDismissTimeInterval:1.5];
    [SVProgressHUD showErrorWithStatus:message];
}

- (void)dismissHUD
{
    if ([SVProgressHUD isVisible]) {
        [SVProgressHUD dismiss];
    }
}

@end


