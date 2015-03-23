//
//  IWHttpTool.m
//  01-ItcastWeibo
//
//  Created by apple on 14-1-14.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "AFNTool.h"
#import "AFNetworking.h"

@implementation IWHttpTool

+ (void)postWithURL:(NSString *)url params:(NSDictionary *)params success:(IWHttpSuccess)success failure:(IWHttpFailure)failure
{
    [self requestWithMethod:@"POST" url:url params:params success:success failure:failure];
}

+ (void)getWithURL:(NSString *)url params:(NSDictionary *)params success:(IWHttpSuccess)success failure:(IWHttpFailure)failure
{
    [self requestWithMethod:@"GET" url:url params:params success:success failure:failure];
}

+ (void)requestWithMethod:(NSString *)method url:(NSString *)url params:(NSDictionary *)params success:(IWHttpSuccess)success failure:(IWHttpFailure)failure
{
    // 1.创建client对象，设置url路径
    AFHTTPClient *client = [AFHTTPClient clientWithBaseURL:[NSURL URLWithString:url]];
    
    // 2.创建请求对象
    NSURLRequest *request = [client requestWithMethod:method path:nil parameters:params];
    
    // 3.创建操作对象
    AFHTTPRequestOperation *operation = [client HTTPRequestOperationWithRequest:request success:^(AFHTTPRequestOperation *operation, id responseObject) {
        // 请求成功的时候会调用这里的代码
        
        // 通知外面的block，请求成功了
        if (success) {
            id json = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableLeaves error:nil];
            
            success(json);
            
//            IWLog(@"%@", json);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        // 请求失败的时候会调用这里的代码
        
        // 通知外面的block，请求成功了
        if (failure) {
            failure(error);
        }
        
    }];
    
    // 4.执行操作（真正发送请求）
    [operation start];
}

@end
