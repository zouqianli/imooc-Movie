//
//  Ticket.h
//  Movie
//
//  Created by 邹前立 on 2017/2/4.
//  Copyright © 2017年 邹前立. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Ticket : NSObject

@property (nonatomic,copy) NSString *name;
@property (nonatomic,assign) int price;
@property (nonatomic,assign) int row;   // 某行
@property (nonatomic,assign) int col;   // 某列

- (id) initWithName:(NSString*)name price:(int)price row:(int)row col:(int)col;
@end
