//
//  UIImage+IW.m
//  01-ItcastWeibo
//
//  Created by apple on 14-1-12.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "UIImage+IW.h"

@implementation UIImage (IW)
//ios7的图片是在ios6的图片名基础上拼接_os7
+ (UIImage *)imageWithName:(NSString *)name
{
    //判断是否为ios7
    if (iOS7) {
        //在图片名后面拼接后缀_os7
        NSString *newName = [name stringByAppendingString:@"_os7"];
        // 利用新的文件名加载图片
        UIImage *image = [self imageNamed:newName];
        // 如果不存在拼接的这张图片,则直接返回原来的图片(有的项目图片ios6与ios7公用)
        if (image == nil) {
            image = [self imageNamed:name];
        }
        return image;
    } else {
        return [self imageNamed:name];
    }
}

+ (UIImage *)resizedImage:(NSString *)name
{
    UIImage *image = [self imageWithName:name];
    
    return [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
}
@end
