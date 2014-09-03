//
//  BubbleSort.m
//  SortDemo
//
//  Created by ZhaoJuan on 14-9-3.
//  Copyright (c) 2014年 Acorld. All rights reserved.
//

#import "BubbleSort.h"

@implementation BubbleSort

+ (id)sort
{
    BubbleSort *sort = [[BubbleSort alloc] init];
    [sort executeSort];
    return sort;
}

- (void)executeSort
{
    NSLog(@"<---------冒泡排序--------->");
    NSMutableArray *numbers = [self data];
    NSLog(@"排序前:%@",numbers);
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
    NSLog(@"排序后:%@",numbers);
    NSLog(@"<---------冒泡排序--------->\n\n");
}

@end
