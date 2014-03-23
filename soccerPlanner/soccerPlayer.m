//
//  soccerPlayer.m
//  soccerPlanner
//
//  Created by Sergio Quintero Gómez on 3/23/14.
//  Copyright (c) 2014 xtherionx. All rights reserved.
//

#import "soccerPlayer.h"

@implementation soccerPlayer

-(id)initWithPoint:(CGPoint) point {
    CGRect frameFromPoint = CGRectMake(point.x-[self getIconWidth]/2, point.y-[self getIconHeight]/2, [self getIconWidth], [self getIconHeight]);
    if (self = [super initWithFrame:frameFromPoint]){
        [self setBackgroundImage:[UIImage imageNamed:@"homePlayer"] forState:UIControlStateNormal];
    }
    return self;
}

-(int)getIconWidth {
    return 60;
    
}
-(int)getIconHeight {
    return 60;
}
@end
