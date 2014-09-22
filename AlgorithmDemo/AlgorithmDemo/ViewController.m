//
//  ViewController.m
//  AlgorithmDemo
//
//  Created by ZhaoJuan on 14-9-14.
//  Copyright (c) 2014年 Acorld. All rights reserved.
//

#import "ViewController.h"
#import "SearchHeaders.h"
#import "SortHeaders.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self testSearch];
    [self testSort];
}

#pragma mark - Search
#pragma mark -
- (void)testSearch
{
//    [SimpleSearch search];
    [DichotomySearch search];
}

#pragma mark - Sort
#pragma mark -

- (void)testSort
{
//    [BubbleSort sort];
//    [QuickSort sort];
//    [SelectSort sort];
//    [InsertSort sort];
//    [BubbleSortNew1 sort];
//    [SelectSortNew1 sort];
    [HeapSort_Small sort];
}

@end
