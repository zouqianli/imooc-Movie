//
//  Cinema.m
//  Movie
//
//  Created by 邹前立 on 2017/2/4.
//  Copyright © 2017年 邹前立. All rights reserved.
//

#import "Cinema.h"
@implementation Cinema
#define NSLog(FORMAT, ...) fprintf(stderr,"%s",[[NSString   stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String])
// 初始化电影院名字
- (id) initWithName:(NSString *)name
{
    if(self = [super init]){
        self.name = name;
    }
    return self;
}

// 显示座位
- (void)showSitRows:(int)rows cols:(int) cols
{
    for(int i=0;i<rows;i++)
    {
        for(int j=0;j<cols;j++)
        {
            if(j%cols == 0)
            {
                NSLog(@"\n");
            }
            if(i==0)
            {
                NSLog(@"%02d ",j); // 设置列序号
            }
            else if(j==0 && i!=0)
            {
                NSLog(@"%02d",i); // 设置行序号
            }
            else
            {
                NSLog(@" + ");    // 座位
            }
        }
    }
    

}

- (void)updateSitRow:(int)r col:(int)c
{
    for(int i=0;i<self.rows;i++)
    {
        for(int j=0;j<self.cols;j++)
        {
            if(j%self.cols == 0)
            {
                NSLog(@"\n");
            }
            if(i==0)
            {
                NSLog(@"%02d ",j); // 设置列序号
            }
            else if(j==0 && i!=0)
            {
                NSLog(@"%02d",i);  // 设置行序号
            }
            else                   // 座位
            {
//                NSLog(@"-%d -%d -%d -%d", self.rows,self.cols,r,c);
//                if(self.rows==r && self.cols==c)
                if(r == (i) && c == (j))
                {
                    NSLog(@" @ "); // 改变座位显示效果
                }else
                {
                    NSLog(@" + ");
                }
            }
        }
    }
    
}

//- (void)changeSitRow:(int)row col:(int) col
//{
//    NSLog(@"修改对应电影票显示@...");
//    if(row && col)
//    {
//        self.sits[(row-1)*self.cols+col] = @"@";
//    }
//    [self showSitRows:self.rows cols:self.cols];
//}
@end
