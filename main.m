//
//  main.m
//  Movie
//
//  Created by 邹前立 on 2017/2/4.
//  Copyright © 2017年 邹前立. All rights reserved.
//

#import <Foundation/Foundation.h>
#define NSLog(FORMAT, ...) fprintf(stderr,"%s",[[NSString   stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String])

#import "Film.h"
#import "Ticket.h"
#import "Cinema.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建电影院对象
        Cinema *cinema = [[Cinema alloc] initWithName:@"ZZ"];
        NSLog(@"==== welcom to %@ cinema! ====\n",cinema.name);
        NSLog(@"========== hot ======\n");
        // 设置座位行列数
        cinema.rows = 8;
        cinema.cols = 16;
        // 创建影片对象
        Film *f1 = [[Film alloc] initFileWithName:@"西游记之三打白骨精" leadActor:@"郭富城" director:@"郑宝瑞" releaseTime:@"2000-02-03" filmLength:@"120" playTime:@"19:30"];
        Film *f2 = [[Film alloc] initFileWithName:@"长城" leadActor:@"张涵予" director:@"张艺谋" releaseTime:@"2001-09-08" filmLength:@"130" playTime:@"20:00"];
        Film *f3 = [[Film alloc] initFileWithName:@"西游伏魔篇" leadActor:@"林更新" director:@"徐克" releaseTime:@"2015-10-03" filmLength:@"100" playTime:@"20:30"];
        Film *f4 = [[Film alloc] initFileWithName:@"盗墓笔记之七星鲁王宫" leadActor:@"井柏然" director:@"李仁港" releaseTime:@"2016-11-13" filmLength:@"90" playTime:@"21:06"];
        Film *f5 = [[Film alloc] initFileWithName:@"疯狂外星人" leadActor:@"刘小杭" director:@"宁浩" releaseTime:@"2016-12-12" filmLength:@"180" playTime:@"21:30"];
        NSArray *films = [[NSArray alloc] initWithObjects:f1,f2,f3,f4,f5, nil];

        // 显示所有电影
        for (int i=0; i<films.count; i++) {
            NSLog(@"编号:%d 名称:%@\n",i+1,films[i]);
        }
        
        NSLog(@"请输入您要观看的电影的编号[1-5]:");
        int userSelect = 0;
        scanf("%d",&userSelect);
        // 根据输入获取对应电影属性 方便后面使用
        NSString *filmName = [films[userSelect-1] name];
        NSString *releaseTime = [films[userSelect-1] releaseTime];
        NSString *playTime = [films[userSelect-1] playTime];
        switch (userSelect) {
            case 1:
            {
//                NSLog(@"您选择的电影是<<%@>>",f1.name); // 固定不好吧 
                NSLog(@"您选择的电影是<<%@>>",filmName);
                break;
            }
            case 2:
                NSLog(@"您选择的电影是<<%@>>",filmName);
                break;
            case 3:
                NSLog(@"您选择的电影是<<%@>>",filmName);
                break;
            case 4:
                NSLog(@"您选择的电影是<<%@>>",filmName);
                break;
            case 5:
                NSLog(@"您选择的电影是<<%@>>",filmName);
                break;
            default:
                NSLog(@"输入错误");
                break;
        }
        
        // 显示座位
        NSLog(@"\n现在为您展示影厅座位表...");
        [cinema showSitRows:cinema.rows cols:cinema.cols];
        
        NSLog(@"\n请选择排数[1,7]:");
        int r = 0;
        scanf("%d",&r);
        NSLog(@"您选择的排数是:%d",r);
        
        NSLog(@"\n请选择座位号[1,15]:");
        int c = 0;
        scanf("%d",&c);
        NSLog(@"您选择的座位是:%d",c);
        NSLog(@"\n您选择的电影是:%@ %d排%d座\n",filmName,r,c); // 名字动态获取？
        
        NSLog(@"您确定要购买吗？y/n\n");
        char ans = 'a';
        rewind(stdin);
        scanf("%c",&ans);
        if(ans == 'y')
        {
            NSLog(@"您好，这是您的购票信息。款项已扣除:\n");
            // 生成电影票对象信息
            // todo price动态设置
            Ticket *ticket = [[Ticket alloc] initWithName:filmName price:100 row:r col:c];
//            Ticket *ticket = [[Ticket alloc] init]; // 测试默认票价
//            ticket.name = @"t";
        
            NSLog(@"电影名称:%@ 价格:%d 上映时间:%@ %d排%d座 开始时间:%@\n",ticket.name,[ticket price],releaseTime,ticket.row,ticket.col,playTime);
            
            // 设置座位变化 @
            [cinema updateSitRow:r col:c];
            NSLog(@"\n");
            
        }
        if(ans == 'n')
        {
            NSLog(@"不买？拜拜。。。😂\n");
        }
        
    }
    return 0;
}
