//
//  SortBase.m
//  SortDemo
//
//  Created by ZhaoJuan on 14-9-3.
//  Copyright (c) 2014年 Acorld. All rights reserved.
//



#import "SortBase.h"
#import "SortHeaders.h"

@implementation NSNumber (AC_CompareInt)

- (BOOL)isLargerThan:(NSNumber *)number
{
    if (self.intValue > number.intValue) return YES;
    return NO;
}

@end

#define kCountOfNumbers 10000
@implementation SortBase

+ (id)base
{
    SortBase *sort = [[self alloc] init];    
    return sort;
}

+ (id)sort
{
    SortBase *sort = [[self alloc] init];
    [sort executeSort];
    
    return sort;
}

- (void)executeSort
{
    NSLog(@"<---------%@--------->",[self description]);
    
    NSMutableArray *numbers = [self data];
    NSLog(@"排序前:%@",numbers);
    
    [self sortInData:numbers complemetion:^(NSArray *resultData)
    {
        NSLog(@"排序后:%@",resultData);
    }];
    
    NSLog(@"<---------%@--------->",[self description]);
}

- (NSArray *)sortInData:(NSMutableArray *)numbers
{
    NSString *str = [NSString stringWithFormat:@"implementation (%@) it in subclass!",NSStringFromSelector(_cmd)];
    Crash(str)
    return nil;
}

- (void)sortInData:(NSMutableArray *)numbers complemetion:(SortResult)result
{
    NSString *str = [NSString stringWithFormat:@"implementation (%@) it in subclass!",NSStringFromSelector(_cmd)];
    Crash(str)
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
