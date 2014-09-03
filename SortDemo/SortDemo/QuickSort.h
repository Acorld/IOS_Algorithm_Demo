//
//  QuickSort.h
//  SortDemo
//
//  Created by ZhaoJuan on 14-9-3.
//  Copyright (c) 2014年 Acorld. All rights reserved.
//

#import "SortBase.h"
/**
 * 快速排序
 * http://blog.csdn.net/acorld/article/details/8784312
 * 冒泡排序的一种本质改进,不稳定的
 * 原理：快速排序通过一趟扫描，就能确保以某个数为基准点的左边各数都比它小，右边各数都比它大。然后又用同样的方法处理它左右两边的数，直到基准点的左右只有一个元素为止
 * 时间复杂度：O(n2)--[n的平方]
 */
@interface QuickSort : SortBase

@end
