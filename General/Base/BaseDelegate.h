//
//  BaseDelegate.h
//  Calendar
//
//  Created by 浚韩 陈 on 16/6/28.
//  Copyright © 2016年 Dressrosa. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BaseDelegate <NSObject>

/**
 Auto layout func.
 */
- (void) autoLayoutSpecThatFits;

/**
 Keep the connection between view-model and view.
 */
- (void) reactiveBinding;

@end
