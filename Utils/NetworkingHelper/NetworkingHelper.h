//
//  NetworkingHelper.h
//  MVVM_Demo
//
//  Created by 浚韩 陈 on 16/5/18.
//  Copyright © 2016年 Dressrosa. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^request_completion_handler_block_t)(NSURLResponse *response, id responseObject, NSError *error);

@interface NetworkingHelper : NSObject

/**
 HTTP GET request.
 @param url The url.
 @param requestCompletionHandler The request completion handler block.
 */
+ (void)GETNetworkingWith:(NSURL *)url
        completionHandler:(nullable request_completion_handler_block_t)requestCompletionHandler;

/**
 HTTP GET request with query string.
 @param url The url.
 @param parameters The query string dictionary.
 @param requestCompletionHandler The request completion handler block.
 */
+ (void)GETNetworkingWithURL:(NSURL *)url
                  parameters:(nullable NSDictionary *)parameters
           completionHandler:(nullable request_completion_handler_block_t)requestCompletionHandler;

/**
 HTTP POST request with query string.
 @param url The url.
 @param parameters The query string dictionary.
 @param requestCompletionHandler The request completion handler block.
 */
+ (void)POSTNetworkingWithURL:(NSURL *)url
                   parameters:(NSDictionary *)parameters
            completionHandler:(nullable request_completion_handler_block_t)requestCompletionHandler;


@end

NS_ASSUME_NONNULL_END



































