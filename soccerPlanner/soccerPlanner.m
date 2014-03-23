    //
//  soccerPlanner.m
//  soccerPlanner
//
//  Created by Sergio Quintero Gómez on 3/23/14.
//  Copyright (c) 2014 xtherionx. All rights reserved.
//

#import "soccerPlanner.h"
#import "soccerPlayer.h"
@implementation soccerPlanner
static soccerPlanner* singletonInstance = nil;

+(id)sharedInstance{
    if (singletonInstance == nil) {
        singletonInstance = [[self alloc]init];
        singletonInstance.totalLocalPlayers = 1;
    }
    return singletonInstance;
}
-(soccerPlayer *)createLocalPlayerWithPoint:(CGPoint )point {
    if ([self totalLocalPlayers] <= 11) {
        soccerPlayer *player = [[soccerPlayer alloc]initWithPoint:point];
        int newTotalLocalPlayers = [self totalLocalPlayers] + 1;
        [self setTotalLocalPlayers:newTotalLocalPlayers];
        return player;
    }
    else {
        return nil;
    }
}
-(void)removeLocalPlayer:(soccerPlayer *)player {
    [player removeFromSuperview];
    [self setTotalLocalPlayers:[self totalLocalPlayers]-1];
}
@end
