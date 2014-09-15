//
//  BubbleSortNew1.h
//  SortDemo
//
//  Created by JD_Acorld on 14-9-9.
//  Copyright (c) 2014年 Acorld. All rights reserved.
//

#import "SortBase.h"
/**
 * 冒泡排序升级版1-双向冒泡
 * 冒泡排序是稳定的
 * 原理：设置一标志性变量pos,用于记录每趟排序中最后一次进行交换的位置。由于pos位置之后的记录均已交换到位,故在进行下一趟排序时只要扫描到pos位置即可
 * 时间复杂度：
 */
@interface BubbleSortNew1 : SortBase

@end
