//
//  SortBase.h
//  SortDemo
//
//  Created by ZhaoJuan on 14-9-3.
//  Copyright (c) 2014年 Acorld. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^SortResult)(NSArray *resultData);

@interface NSNumber (AC_CompareInt)

- (BOOL)isLargerThan:(NSNumber *)number;

@end

/*
 
 排序法    最差时间分析      平均时间复杂度         稳定度     空间复杂度
 冒泡排序     O(n2)           O(n2)              稳定        O(1)
 快速排序     O(n2)         O(n*log2n)          不稳定    O(log2n)~O(n)
 选择排序     O(n2)           O(n2)              稳定        O(1)
 二叉树排序	 O(n2)         O(n*log2n)          不一顶       O(n)
 插入排序     O(n2)          O(n2)               稳定        O(1)
 堆排序     O(n*log2n)      O(n*log2n)          不稳定       O(1)
 希尔排序       O               O               不稳定       O(1)
 */

/*
  当n较大，则应采用时间复杂度为O(nlog2n)的排序方法：快速排序、堆排序或归并排序序。
  快速排序：是目前基于比较的内部排序中被认为是最好的方法，当待排序的关键字是随机分布时，快速排序的平均时间最短；
 */
@interface SortBase : NSObject

//*********外部直接调用*********//
/**
 * 初始化
 *
 * @return
 */
+ (id)base;

/**
 *  执行排序
 *
 *  @return
 */
+ (id)sort;


//*********不建议直接调用*********//

/**
 *  数据源
 *
 *  @return
 */
- (NSMutableArray *)data;

/**
 *  排序的实际方法
 *
 *  @param numbers 数据源
 *  @param result  result block
 */
- (NSArray *)sortInData:(NSMutableArray *)numbers;

/**
 *  排序的实际方法-block
 *
 *  @param numbers 数据源
 *  @param result  result block
 */
- (void)sortInData:(NSMutableArray *)numbers complemetion:(SortResult)result;


@end

