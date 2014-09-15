//
//  DichotomySearch.m
//  SearchDemo
//
//  Created by ZhaoJuan on 14-9-14.
//  Copyright (c) 2014年 Acorld. All rights reserved.
//

#import "DichotomySearch.h"

@implementation DichotomySearch

- (void)searchTarget:(int)target inData:(NSMutableArray *)array complemetion:(SearchResult)result
{
    __block int searchIndex = NSIntegerMax;
    WeakSelf(self)
    [[QuickSort base] sortInData:array complemetion:^(NSArray *resultData)
     {
         NSLog(@"resultData:%@",resultData);
         searchIndex = [weak_self searchTarget:target inData:resultData];
         result(searchIndex);
    }];
}

- (int)searchTarget:(int)target inData:(NSArray *)array
{
    int mid;
    int low = 0,high = array.count - 1;
    int targetIndex = NSIntegerMax;
    while (low <= high)
    {
        mid = (low + high) / 2;
        int value = [array[mid] intValue];
        if (target == value)
        {
            targetIndex = mid;
            break;
        }else if (value < target)
            low = mid + 1;
        else high = mid - 1;
    }
    return targetIndex;
}

- (NSString *)description
{
    return @"二分查找算法";
}

@end
