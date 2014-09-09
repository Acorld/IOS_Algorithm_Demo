//
//  BubbleSortNew1.m
//  SortDemo
//
//  Created by JD_Acorld on 14-9-9.
//  Copyright (c) 2014年 Acorld. All rights reserved.
//

#import "BubbleSortNew1.h"

@implementation BubbleSortNew1

- (void)executeSort
{
    NSLog(@"<---------冒泡排序升级版1--------->");
    NSMutableArray *numbers = [self data];
    NSLog(@"排序前:%@",numbers);
    int max = numbers.count - 1;//初始时,最后位置保持不变
    int min = 0;
    int j;
    NSNumber *temp;

    while (max > min)
    {
        for (j = min; j < max; ++j)
        {
            if ([numbers[j] isLargerThan:numbers[j+1]])
            {
                temp = numbers[j];
                [numbers replaceObjectAtIndex:j withObject:numbers[j+1]];
                [numbers replaceObjectAtIndex:j+1 withObject:temp];
            }
        }
        --max;
        NSLog(@"1111 %@",numbers);
        for (j = max; j > min; --j)
        {
            if ([numbers[j-1] isLargerThan:numbers[j]])
            {
                temp = numbers[j];
                [numbers replaceObjectAtIndex:j withObject:numbers[j-1]];
                [numbers replaceObjectAtIndex:j-1 withObject:temp];
            }
        }
        ++min;
        NSLog(@"2222 %@",numbers);
    }
    NSLog(@"排序后:%@",numbers);
    NSLog(@"<---------冒泡排序升级版1--------->\n\n");
}

@end
