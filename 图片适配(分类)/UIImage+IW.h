//
//  UIImage+IW.h
//  01-ItcastWeibo
//
//  Created by apple on 14-1-12.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (IW)
/**
 *  加载项目中的所有图片
 *
 *  @param name 文件名
 *
 *  @return 一个新的图片对象
 */
+ (UIImage *)imageWithName:(NSString *)name;
/**
 *  返回能够自由拉伸不变形的图片
 *
 *  @param name 文件名
 *
 *  @return 能够自由拉伸不变形的图片
 */
+ (UIImage *)resizedImage:(NSString *)name;
@end
