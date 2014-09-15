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
    int searchIndex = NSIntegerMax;
    
    result(searchIndex);
}

- (NSString *)description
{
    return @"二分查找算法";
}

@end
