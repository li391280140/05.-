//
//  IWHttpTool.h
//  01-ItcastWeibo
//
//  Created by apple on 14-1-14.
//  Copyright (c) 2014年 itcast. All rights reserved.
//  封装任何的http请求

#import <Foundation/Foundation.h>
/**
 *  请求成功后的回调
 *
 *  @param json 服务器返回的JSON数据
 */
typedef void (^AFNToolSuccess)(id json);
/**
 *  请求失败后的回调
 *
 *  @param error 错误信息
 */
typedef void (^AFNToolFailure)(NSError *error);


@interface AFNTool : NSObject

/**
 *  发送一POST请求
 *
 *  @param url    请求路径
 *  @param params 请求参数
 *  @param success 请求成功后的回调
 *  @param failure 请求失败后的回调
 */
+ (void)postWithURL:(NSString *)url params:(NSDictionary *)params success:(AFNToolSuccess)success failure:(AFNToolFailure)failure;

/**
 *  发送一GET请求
 *
 *  @param url    请求路径
 *  @param params 请求参数
 *  @param success 请求成功后的回调
 *  @param failure 请求失败后的回调
 */
+ (void)getWithURL:(NSString *)url params:(NSDictionary *)params success:(AFNToolSuccess)success failure:(AFNToolFailure)failure;

@end
