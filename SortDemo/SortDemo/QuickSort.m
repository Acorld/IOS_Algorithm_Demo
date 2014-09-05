//
//  QuickSort.m
//  SortDemo
//
//  Created by ZhaoJuan on 14-9-3.
//  Copyright (c) 2014年 Acorld. All rights reserved.
//

#import "QuickSort.h"

@implementation QuickSort

- (void)executeSort
{
    NSLog(@"<---------快速排序--------->");
    NSMutableArray *numbers = [self data];
    NSLog(@"排序前:%@",numbers);
    [self quickSortWithData:numbers start:0 endIndex:numbers.count-1];
    NSLog(@"排序后:%@",numbers);
    NSLog(@"<---------快速排序--------->\n\n");
}

- (void)quickSortWithData:(NSMutableArray *)data start:(int)startIndex endIndex:(int)endIndex
{
    if (startIndex < endIndex)
    {
        int i = startIndex,j = endIndex;//NSLog(@"i:%d j:%d",i,j);
        int pivot = [data[i] intValue];
        NSNumber *temp;
        while (i < j)
        {
            while (i < j && [data[j] intValue] >= pivot) j--;
            if(i < j)
            {
                //两个数交换
                temp = data[j];
                [data replaceObjectAtIndex:j withObject:data[i]];
                [data replaceObjectAtIndex:i withObject:temp];
                i++;//前端索引+1
            }
            NSLog(@"1111：data:%@",data);
            while (i < j && [data[i] intValue] <= pivot) i++;
            if(i < j)
            {
                //两个数交换
                temp = data[j];
                [data replaceObjectAtIndex:j withObject:data[i]];
                [data replaceObjectAtIndex:i withObject:temp];
                j--;//后端索引-1
            }
            NSLog(@"2222：data:%@",data);
        }
        data[i] = @(pivot);//基准点归位
         NSLog(@"每一轮排序后：data:%@",data);
        //左右两边继续分解
        [self quickSortWithData:data start:startIndex endIndex:i - 1];
        [self quickSortWithData:data start:i + 1 endIndex:endIndex];
    }
}

@end
