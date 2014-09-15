//
//  ShellSort.m
//  SortDemo
//
//  Created by JD_Acorld on 14-9-11.
//  Copyright (c) 2014年 Acorld. All rights reserved.
//

#import "ShellSort.h"

@implementation ShellSort

- (void)insertSort:(NSMutableArray *)numbers delta:(int)delta
{
    NSNumber *temp;//插入排序的核心
    int pos;
    for (int i = delta; i < numbers.count; i++)
    {        
        temp = numbers[i];//复制为哨兵，即存储待排序元素
        pos = i - delta;
        while (pos >= 0 && [numbers[pos] isLargerThan:temp])//查找在有序表的插入位置
        {
            numbers[pos+delta] = numbers[pos];
            pos -= delta;//元素后移
        }
        numbers[pos+delta] = temp;//将temp插入到正确位置
    }
}

- (void)sortInData:(NSMutableArray *)numbers complemetion:(SortResult)result
{
    int dk = numbers.count / 2;
    while( dk >= 1  )
    {
        //直接插入操作
        [self insertSort:numbers delta:dk];
        dk = dk / 2;
    }
    result(numbers);
}

- (NSString *)description
{
    return @"Shell排序";
}

@end
