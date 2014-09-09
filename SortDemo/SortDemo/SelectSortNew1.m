//
//  SelectSortNew1.m
//  SortDemo
//
//  Created by ZhaoJuan on 14-9-10.
//  Copyright (c) 2014年 Acorld. All rights reserved.
//

#import "SelectSortNew1.h"

@implementation SelectSortNew1


- (void)executeSort
{
    NSLog(@"<---------选择排序--------->");
    NSMutableArray *numbers = [self data];
    NSLog(@"排序前:%@",numbers);
    
    {
        int count = numbers.count;
        int max,min;
        NSNumber *temp;
        for (int i = 0; i <= count / 2; i++)
        {
            max = i;
            min = i;
            for (int j = i + 1; j < count - i; j++)
            {
                if ([numbers[j] isLargerThan:numbers[max]])
                {
                    max = j;
                    continue;
                }
                
                //else
                if ([numbers[min] isLargerThan:numbers[j]])
                {
                    min = j;
                }
            }
            
            if (min != i)
            {
                //交换最小值
                temp = numbers[i];
                [numbers replaceObjectAtIndex:i withObject:numbers[min]];
                [numbers replaceObjectAtIndex:min withObject:temp];
            }
            
            if (max != count-1-i)
            {
                //交换最大值
                temp = numbers[count-1-i];
                [numbers replaceObjectAtIndex:count-1-i withObject:numbers[max]];
                [numbers replaceObjectAtIndex:max withObject:temp];
            }
        }
    }
    
    NSLog(@"排序后:%@",numbers);
    NSLog(@"<---------选择排序--------->\n\n");
}
@end
