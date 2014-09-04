//
//  SortBase.m
//  SortDemo
//
//  Created by ZhaoJuan on 14-9-3.
//  Copyright (c) 2014年 Acorld. All rights reserved.
//

#import "SortBase.h"
#import "Headers.h"
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
    for (int i = 0; i < 10; i ++)
    {
        [data addObject:@(rand() % 100)];
    }
    return data;
}

@end
