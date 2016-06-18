//
//  DetailView.h
//  MVVM_Demo
//
//  Created by 浚韩 陈 on 16/5/21.
//  Copyright © 2016年 Dressrosa. All rights reserved.
//

#import <AsyncDisplayKit/AsyncDisplayKit.h>

@class DetailViewModel;

NS_ASSUME_NONNULL_BEGIN

@interface DetailView : ASDisplayNode

@property (nonatomic, strong) DetailViewModel *viewModel;

@end

NS_ASSUME_NONNULL_END
