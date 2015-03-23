//
//  UIImage+IW.m
//  01-ItcastWeibo
//
//  Created by apple on 14-1-12.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "UIImage+IW.h"

@implementation UIImage (IW)
+ (UIImage *)imageWithName:(NSString *)name
{
    if (iOS7) {
        NSString *newName = [name stringByAppendingString:@"_os7"];
        
        // 利用新的文件名加载图片
        UIImage *image = [self imageNamed:newName];
        // 不存在这张图片
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
    return [self resizedImage:name leftScale:0.5 topScale:0.5];
}

+ (UIImage *)resizedImage:(NSString *)name leftScale:(CGFloat)leftScale topScale:(CGFloat)topScale
{
    UIImage *image = [self imageWithName:name];
    
    return [image stretchableImageWithLeftCapWidth:image.size.width * leftScale topCapHeight:image.size.height * topScale];
}
@end
