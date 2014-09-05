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
        NSNumber *temp;//插入排序的核心
        int pos;
        for (int i = 1; i < numbers.count; i ++)
        {
            temp = numbers[i];//取出temp
            pos = i - 1;
            while (pos >= 0 && temp.intValue < [numbers[pos] intValue])
            {
                @autoreleasepool {
                    
                    //与当前循环头两个数交换，效率低下
//                    NSNumber *number = numbers[pos+1];
//                    [numbers replaceObjectAtIndex:pos+1 withObject:numbers[pos]];
//                    [numbers replaceObjectAtIndex:pos withObject:number];
                    numbers[pos+1] = numbers[pos];
                    pos --;
                }
            }
            numbers[pos+1] = temp;//将temp插入到正确位置
        }
    }
    
    NSLog(@"排序后:%@",numbers);
    NSLog(@"<---------插入排序--------->\n\n");
}

@end
