//
//  ServiceProvider.m
//  Natalie
//
//  Created by 浚韩 陈 on 2017/4/22.
//  Copyright © 2017年 IIIidan Stormrage. All rights reserved.
//

#import "ServiceProvider.h"

@interface ServiceProvider ()

@property (nonatomic, strong) NetWorkManager *networkManager;

@end

@implementation ServiceProvider

- (NetWorkManager *)networkManager
{
    if (!_networkManager) {
        _networkManager = [NetWorkManager sharedInstance];
    }
    return _networkManager;
}

@end
