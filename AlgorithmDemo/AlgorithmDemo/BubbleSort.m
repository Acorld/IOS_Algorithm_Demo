//
//  BubbleSort.m
//  SortDemo
//
//  Created by ZhaoJuan on 14-9-3.
//  Copyright (c) 2014年 Acorld. All rights reserved.
//

#import "BubbleSort.h"

@implementation BubbleSort

- (void)sortInData:(NSMutableArray *)numbers complemetion:(SortResult)result
{
    for (int i = 0; i < numbers.count - 1; i++)
    {
        for (int j = 0; j < numbers.count - i - 1; j++)
        {
            @autoreleasepool
            {
                NSNumber *number = numbers[j];
                NSNumber *nextNumber = numbers[j+1];
                if (number.intValue > nextNumber.intValue)
                {
                    [numbers replaceObjectAtIndex:j withObject:nextNumber];
                    [numbers replaceObjectAtIndex:j+1 withObject:number];
                }
            }
        }
    }
    result(numbers);
}

- (NSString *)description
{
    return @"冒泡排序";
}

@end
