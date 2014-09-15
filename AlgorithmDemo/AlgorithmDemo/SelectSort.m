//
//  SelectSort.m
//  SortDemo
//
//  Created by ZhaoJuan on 14-9-5.
//  Copyright (c) 2014年 Acorld. All rights reserved.
//

#import "SelectSort.h"

@implementation SelectSort

- (void)sortInData:(NSMutableArray *)numbers complemetion:(SortResult)result
{
    int pos;//当前循环，最小值的索引
    for (int i = 0; i < numbers.count - 1; i ++)
    {
        pos = i;
        for (int j = i + 1; j < numbers.count; j ++)//求当前循环最新索引
        {
            if ([numbers[pos] intValue] > [numbers[j] intValue])
            {
                pos = j;
            }
        }
        
        //把最小值放到当前循环的第一位
        NSNumber *value = numbers[i];
        [numbers replaceObjectAtIndex:i withObject:numbers[pos]];
        [numbers replaceObjectAtIndex:pos withObject:value];
    }
    result(numbers);
}

- (NSString *)description
{
    return @"选择排序";
}

@end
