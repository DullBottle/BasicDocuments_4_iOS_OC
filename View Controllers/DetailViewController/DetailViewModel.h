//
//  DetailViewModel.h
//  MVVM_Demo
//
//  Created by 浚韩 陈 on 16/5/20.
//  Copyright © 2016年 Dressrosa. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Facebook;

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewModel : NSObject

@property (nonatomic, copy) NSString *avatar;
@property (nonatomic, copy) NSString *username;
@property (nonatomic, copy) NSString *time;
@property (nonatomic, copy) NSString *image;
@property (nonatomic, copy) NSString *likes;

- (instancetype)initWithModel:(Facebook *)facebook;

@end

NS_ASSUME_NONNULL_END