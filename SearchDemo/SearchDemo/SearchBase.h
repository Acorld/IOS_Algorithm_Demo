//
//  SearchBase.h
//  SearchDemo
//
//  Created by ZhaoJuan on 14-9-13.
//  Copyright (c) 2014年 Acorld. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNumber (AC_CompareInt)

- (BOOL)isLargerThan:(NSNumber *)number;

@end

typedef void(^SearchResult)(int targetIndex);
extern const int kSearchTarget;
@interface SearchBase : NSObject

//*********外部直接调用*********//
//执行查找
+ (id)search;


//*********不建议直接调用*********//

//数据源
- (NSMutableArray *)data;

/**
 * 查找的实际方法
 * @param target 要搜索的数字
 * @param array  数据源
 * @return result block
 */
- (void)searchTarget:(int)target inData:(NSMutableArray *)array complemetion:(SearchResult)result;

@end
