//
//  NetworkingHelper.m
//  MVVM_Demo
//
//  Created by 浚韩 陈 on 16/5/18.
//  Copyright © 2016年 Dressrosa. All rights reserved.
//

#import "NetworkingHelper.h"

@implementation NetworkingHelper

#pragma mark - Public methods

+ (void)GETNetworkingWith:(NSURL *)url completionHandler:(nullable request_completion_handler_block_t)requestCompletionHandler {
    [self GETNetworkingWithURL:url parameters:nil completionHandler:requestCompletionHandler];
}

+ (void)GETNetworkingWithURL:(NSURL *)url parameters:(NSDictionary *)parameters completionHandler:(nullable request_completion_handler_block_t)requestCompletionHandler {
    NSURLSessionConfiguration *configure = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configure];
    
    NSURLRequest *request;
    
    if (parameters) {
        NSError *error;
        request = [[AFHTTPRequestSerializer serializer] requestWithMethod:@"GET" URLString:url.absoluteString parameters:parameters error:&error];
    } else {
        request = [NSURLRequest requestWithURL:url];
    }
    
    if (requestCompletionHandler) {
        NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
            requestCompletionHandler(response, responseObject, error);
        }];
        [dataTask resume];
    }
}

+ (void)POSTNetworkingWithURL:(NSURL *)url parameters:(NSDictionary *)parameters completionHandler:(request_completion_handler_block_t)requestCompletionHandler {
    NSURLSessionConfiguration *configure = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manage = [[AFURLSessionManager alloc] initWithSessionConfiguration:configure];
    
    NSError *error;
    NSMutableURLRequest *request = [[AFHTTPRequestSerializer serializer] requestWithMethod:@"POST" URLString:url.absoluteString parameters:parameters error:&error];
    
    NSURLSessionDataTask *dataTask = [manage dataTaskWithRequest:request completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        requestCompletionHandler(response, responseObject, error);
    }];
    
    [dataTask resume];
}

@end
































