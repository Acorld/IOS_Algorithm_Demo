//
//  InsertSort.m
//  SortDemo
//
//  Created by JD_Acorld on 14-9-5.
//  Copyright (c) 2014年 Acorld. All rights reserved.
//

#import "InsertSort.h"

@implementation InsertSort

- (void)executeSort
{
    NSLog(@"<---------插入排序--------->");
    NSMutableArray *numbers = [self data];
    NSLog(@"排序前:%@",numbers);
    
    {
        NSNumber *temp;
        int pos;//当前循环，最小值的索引
        for (int i = 1; i < numbers.count; i ++)
        {
            temp = numbers[i];
            pos = i - 1;
            while (pos >= 0 && temp.intValue < [numbers[pos] intValue])
            {
                @autoreleasepool {
                    NSNumber *number = numbers[pos+1];
                    [numbers replaceObjectAtIndex:pos+1 withObject:numbers[pos]];
                    [numbers replaceObjectAtIndex:pos withObject:number];
                    pos --;
                }
            }
            
            numbers[pos+1] = temp;
        }
    }
    
    NSLog(@"排序后:%@",numbers);
    NSLog(@"<---------插入排序--------->\n\n");
}

@end
