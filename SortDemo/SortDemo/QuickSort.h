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
 * 原理：通过递归扫描，以某个数为基准点的左边各数都比它小，右边各数都比它大。一般以一个数为基准，依次比较从后、从前比较；如从后比较，小于基准的数j会与i索引的数互换，i++，否则j--；然后从前比较，大于基准的数i会与j索引的数互换，j--，否则i++，每一轮比较，直到i==j停止；
 * 时间复杂度：O(n2)--[n的平方]
 */
@interface QuickSort : SortBase

@end
