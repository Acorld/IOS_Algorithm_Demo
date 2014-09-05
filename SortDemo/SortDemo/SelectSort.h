//
//  SelectSort.h
//  SortDemo
//
//  Created by ZhaoJuan on 14-9-5.
//  Copyright (c) 2014年 Acorld. All rights reserved.
//

#import "SortBase.h"
/**
 * 选择排序
 * http://blog.csdn.net/acorld/article/details/8996120
 * 类似我们人为的排序习惯,稳定
 * 原理：从数据中选择最小的同第一个值交换，在从省下的部分中选择最小的与第二个交换，这样往复下去。
 * 时间复杂度：O(n2)
 */
@interface SelectSort : SortBase

@end
