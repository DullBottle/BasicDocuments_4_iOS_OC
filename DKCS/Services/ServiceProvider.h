//
//  ServiceProvider.h
//
//  Created by __End on 2017/4/22.
//  Copyright © 2017年 IIIidan Stormrage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NetWorkManager.h"

@protocol ServiceProviderType <NSObject>

@end

@interface ServiceProvider : NSObject <ServiceProviderType>

@property (nonatomic, readonly, strong) NetWorkManager *networkManager;

@end
