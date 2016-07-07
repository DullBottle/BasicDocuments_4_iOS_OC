//
//  BaseView.h
//  Calendar
//
//  Created by 浚韩 陈 on 16/6/28.
//  Copyright © 2016年 Dressrosa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseDelegate.h"
#import "BaseViewModelDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseView : UIView <BaseDelegate>

- (instancetype)initWithViewModel:(id<BaseViewModelDelegate>)viewModel;

@end

NS_ASSUME_NONNULL_END