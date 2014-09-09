//
//  SortBase.h
//  SortDemo
//
//  Created by ZhaoJuan on 14-9-3.
//  Copyright (c) 2014年 Acorld. All rights reserved.
//

#import <Foundation/Foundation.h>

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
@interface SortBase : NSObject
+ (id)sort;

- (void)executeSort;
/**
 * 随机数据
 * @param
 * @return 
 
 */
- (NSMutableArray *)data;
@end

