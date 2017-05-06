//
//  Ticket.m
//  Movie
//
//  Created by 邹前立 on 2017/2/4.
//  Copyright © 2017年 邹前立. All rights reserved.
//

#import "Ticket.h"

@implementation Ticket
- (id) initWithName:(NSString *)name price:(int)price row:(int)row col:(int)col
{
    if(self = [super init])
    {
        self.name = name;
        self.price = price;
        self.row = row;
        self.col = col;
    }
    return self;
}

// 获取默认票价
- (int) price
{
    return self.price = 80;
}
@end
