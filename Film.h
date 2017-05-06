//
//  Film.h
//  Movie
//
//  Created by 邹前立 on 2017/2/4.
//  Copyright © 2017年 邹前立. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Film : NSObject

@property (nonatomic,copy) NSString *name;          // 电影名称
@property (nonatomic,copy) NSString *leadActor;     // 主演
@property (nonatomic,copy) NSString *director;      // 导演
@property (nonatomic,copy) NSString *releaseTime;   // 上映时间
@property (nonatomic,copy) NSString *filmLength;    // 影片时长
@property (nonatomic,copy) NSString *playTime;      // 播放时间

- (id) initFileWithName:(NSString*)name leadActor:(NSString*)leadActor director:(NSString*)director releaseTime:(NSString*)releaseTime filmLength:(NSString*)filmLength playTime:(NSString*)playTime;
//+ (void) displayAllFilm;

- (NSString*) description;
@end
