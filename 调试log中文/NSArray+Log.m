//
//  NSArray+Log.m
//  JSON & XML
//
//  Created by apple on 13-12-30.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import "NSArray+Log.h"

@implementation NSArray (Log)

// 重写此方法，可以Log输出中文
- (NSString *)descriptionWithLocale:(id)locale
{
    NSMutableString *str = [NSMutableString stringWithFormat:@"%d (\n", self.count];
    
    for (id obj in self) {
        [str appendFormat:@"\t%@,\n", obj];
    }
    
    [str appendString:@")"];
    
    return str;
}

@end
