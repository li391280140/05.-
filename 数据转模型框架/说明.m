
#import "MJExtension.h"(需要包含该头文件)
- (NSDictionary *)arrayModelClasses
{
    //返回[cities这个数组中装着哪一个(ITGCity)模型.类]
    return @{@"cities":[ITGCity class]};
    
    //如果A数据中包含B模型数据,就在A.m文件中
    //return @{@"B":[B class]};
    //具体使用方法在团购项目0209第3个视屏25分钟处找到用法
}

