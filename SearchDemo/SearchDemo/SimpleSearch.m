//
//  SimpleSearch.m
//  SearchDemo
//
//  Created by ZhaoJuan on 14-9-14.
//  Copyright (c) 2014年 Acorld. All rights reserved.
//

#import "SimpleSearch.h"

@implementation SimpleSearch

- (void)searchTarget:(int)target inData:(NSMutableArray *)array complemetion:(SearchResult)result
{
    int searchIndex = NSIntegerMax;
    for (int i = 0; i < array.count; i++)
    {
        @autoreleasepool
        {
            NSNumber *number = array[i];
            if (number.intValue == kSearchTarget)
            {
                searchIndex = i;
                break;
            }
        }
    }
    result(searchIndex);
}

- (NSString *)description
{
    return @"简单查找算法";
}

@end
