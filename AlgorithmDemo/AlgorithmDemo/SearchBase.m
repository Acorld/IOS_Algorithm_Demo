//
//  SearchBase.m
//  SearchDemo
//
//  Created by ZhaoJuan on 14-9-13.
//  Copyright (c) 2014年 Acorld. All rights reserved.
//

#import "SearchBase.h"
#define kCountOfNumbers 10

@implementation NSNumber (AC_CompareInt)

- (BOOL)isLargerThan:(NSNumber *)number
{
    if (self.intValue > number.intValue) return YES;
    return NO;
}

@end

@implementation SearchBase

const int kSearchTarget = 8;

+ (id)base
{
    SearchBase *search = [[self alloc] init];    
    return search;
}

+ (id)search
{
    SearchBase *search = [[self alloc] init];
    [search executeSearch];
    
    return search;
}

- (void)executeSearch
{
    NSLog(@"<---------%@--------->",[self description]);
    
    NSMutableArray *numbers = [self data];
    NSLog(@"无序数组:%@",numbers);
    NSLog(@"Target:<<<%d>>>",kSearchTarget);
    
    [self searchTarget:kSearchTarget inData:numbers complemetion:^(int targetIndex)
     {
         if (targetIndex != NSIntegerMax)
         {
             NSLog(@"目标找到:Index---------> %d <-----------",targetIndex);
         }else NSLog(@"目标未找到");
     }];
    
    NSLog(@"<---------%@--------->",[self description]);
}

//查找的实际方法
- (void)searchTarget:(int)target inData:(NSMutableArray *)array complemetion:(SearchResult)result
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
    [data insertObject:@(kSearchTarget) atIndex:(rand() % kCountOfNumbers)];
    return data;
}


@end
