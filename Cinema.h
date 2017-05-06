//
//  Cinema.h
//  Movie
//
//  Created by 邹前立 on 2017/2/4.
//  Copyright © 2017年 邹前立. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cinema : NSObject

@property (nonatomic,copy) NSString *name;
//@property (nonatomic,strong) NSMutableArray *sits; // 保存座位
@property (nonatomic,assign) int rows;  // 多行
@property (nonatomic,assign) int cols;  // 多列

- (id) initWithName:(NSString*)name;
- (void) showSitRows:(int)rows cols:(int)cols;
- (void) updateSitRow:(int)r col:(int)c;
//- (void) changeSitRow:(int)row col:(int) col;
@end
