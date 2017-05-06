//
//  Film.m
//  Movie
//
//  Created by 邹前立 on 2017/2/4.
//  Copyright © 2017年 邹前立. All rights reserved.
//

#import "Film.h"
#define NSLog(FORMAT, ...) fprintf(stderr,"%s",[[NSString   stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String])
@implementation Film
- (id)initFileWithName:(NSString *)name leadActor:(NSString *)leadActor director:(NSString *)director releaseTime:(NSString *)releaseTime filmLength:(NSString *)filmLength playTime:(NSString *)playTime{
    if(self = [super init]){
        self.name = name;
        self.leadActor = leadActor;
        self.director = director;
        self.releaseTime = releaseTime;
        self.filmLength = filmLength;
        self.playTime = playTime;
    }
    return self;
}
- (NSString *)description
{
    return [NSString stringWithFormat:@"名称:<%@> 导演 %@ 主演 %@ 时长 %@ 开播时间 %@",self.name,self.director,self.leadActor,self.filmLength,self.playTime];
}
@end
