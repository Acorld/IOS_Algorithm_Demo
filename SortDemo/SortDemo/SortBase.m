//
//  SortBase.m
//  SortDemo
//
//  Created by ZhaoJuan on 14-9-3.
//  Copyright (c) 2014年 Acorld. All rights reserved.
//



#import "SortBase.h"
#import "Headers.h"

@implementation NSNumber (AC_CompareInt)

- (BOOL)isLargerThan:(NSNumber *)number
{
    if (self.intValue > number.intValue) return YES;
    return NO;
}

@end

#define kCountOfNumbers 50
@implementation SortBase

+ (id)sort
{
    SortBase *sort = [[self alloc] init];
    [sort executeSort];
    
    return sort;
}

- (void)executeSort
{
    Crash(@"implementation it in subclass!")
}

#pragma mark - Data
#pragma mark -
- (NSMutableArray *)data
{
    srand(time(0));//设置随机数种子
    NSMutableArray *data = [NSMutableArray new];
    for (int i = 0; i < kCountOfNumbers; i ++)
    {
        [data addObject:@(rand() % (kCountOfNumbers * 10))];
    }
    return data;
}

@end
