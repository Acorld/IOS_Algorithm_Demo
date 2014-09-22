//
//  HeapSort_Small.m
//  AlgorithmDemo
//
//  Created by ZhaoJuan on 14-9-22.
//  Copyright (c) 2014年 Acorld. All rights reserved.
//

#import "HeapSort_Small.h"
#define kMinNumbers 5
@implementation HeapSort_Small

- (void)sortInData:(NSMutableArray *)numbers complemetion:(SortResult)result
{
    [self GetSmallerNumbers:numbers];
    result(numbers);
}

- (void)GetSmallerNumbers:(NSMutableArray *)array
{
    [self BuildMinHeap:array];   //创建小顶推
    for (int i = array.count - 1; i >= array.count - kMinNumbers; i--)  //遍历小顶推
    {
        NSLog(@"min:%@",array[0]);    //输出最顶端的跟元素（即：此时堆中最小的数）
        //将堆顶最小的元素与堆中最后的一个元素交换
        NSNumber *temp = array[0];
        [array replaceObjectAtIndex:0 withObject:array[i]];
        [array replaceObjectAtIndex:i withObject:temp];
        [self MinHeapify:array :0 :i];    //重新调整为小顶推
    }
}

- (void)BuildMinHeap:(NSMutableArray *)array
{
    //根据堆与数组的关系可知：下标从 0 ~ array.Length / 2 - 1 的数组元素为根节点，其余元素都为叶节点
    for (int i = array.count / 2 - 1; i >= 0; i--)
    {
        [self MinHeapify:array :i :array.count]; //调整为小顶推
    }
    
}
/// <summary>
/// 从底向上：调整小根堆的过程
/// </summary>
/// <param name="array">传递的数组</param>
/// <param name="currentIndex">需要调整的当前根节点</param>
/// <param name="heapSize">此时小顶堆的大小（即：处在小顶堆中所有的数组元素个数）</param>
- (void)MinHeapify:(NSMutableArray *)array :(int)currentIndex :(int) heapSize
{
    int leftChildIndex = currentIndex * 2 + 1; //此根节点的左子节点下标
    int rightChildIndex = currentIndex * 2 + 2; //此根节点的右子节点下标
    int smallestIndex = currentIndex; //三者（根节点、左子节点、右子节点）之中最小元素的下标
    if (leftChildIndex < heapSize && [array[smallestIndex] isLargerThan:array[leftChildIndex]])
    {
        smallestIndex = leftChildIndex;
    }
    if (rightChildIndex < heapSize && [array[smallestIndex] isLargerThan:array[rightChildIndex]])
    {
        smallestIndex = rightChildIndex;
    }
    if (smallestIndex != currentIndex) //左右子节点中存在小于根节点元素的情况
    {
        NSNumber *temp = array[smallestIndex];
        [array replaceObjectAtIndex:smallestIndex withObject:array[currentIndex]];
        [array replaceObjectAtIndex:currentIndex withObject:temp];
        [self MinHeapify:array :smallestIndex :array.count];//递归调整
    }
}


- (NSString *)description
{
    return @"小顶堆排序";
}

@end
