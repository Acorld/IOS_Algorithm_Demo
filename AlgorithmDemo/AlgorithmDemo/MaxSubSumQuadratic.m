//
//  MaxSubSumQuadratic.m
//  AlgorithmDemo
//
//  Created by ZhaoJuan on 14-9-28.
//  Copyright (c) 2014年 Acorld. All rights reserved.
//

#import "MaxSubSumQuadratic.h"

@implementation MaxSubSumQuadratic

- (void)searchMaxSubSumQuadratic
{
    NSMutableArray *datas = [self data];
    NSLog(@"%@-------->:%@",[self description],datas);
    NSLog(@"<------------------------------>");
    
    int maxSum = 0;int thisSum = 0;
    for (int i = 0; i < datas.count; i++)
    {
        thisSum += [datas[i] intValue];
        if (thisSum < 0)
        {
            thisSum = 0;
        }else if (thisSum > maxSum) maxSum = thisSum;
    }
     NSLog(@"最大连续和:%d",maxSum);
    
    NSLog(@"<------------------------------>");
}

- (NSString *)description
{
    return @"最大连续子序列求和";
}

@end
