//
//  soccerPlanner.h
//  soccerPlanner
//
//  Created by Sergio Quintero Gómez on 3/23/14.
//  Copyright (c) 2014 xtherionx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Constants.h"
@interface soccerPlanner : NSObject
@property (nonatomic) NSInteger totalLocalPlayers;
+(id)sharedInstance;
-(id)createLocalPlayerWithPoint:(CGPoint )point;
-(void)removeLocalPlayer:(id)player;
@end
