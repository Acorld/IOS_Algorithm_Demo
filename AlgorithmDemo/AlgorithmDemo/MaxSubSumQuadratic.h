//
//  MaxSubSumQuadratic.h
//  AlgorithmDemo
//
//  Created by ZhaoJuan on 14-9-28.
//  Copyright (c) 2014年 Acorld. All rights reserved.
//

#import "SearchBase.h"
/**
 * 最大连续子序列求和详解
 *
 * 原理：遍历所有子序列并求和，比较得出其中的最大值。
 * 时间复杂度：
 */
@interface MaxSubSumQuadratic : SearchBase
/**
 *  在内部数据中搜索 最大连续子序列求和
 */
- (void)searchMaxSubSumQuadratic;
@end
