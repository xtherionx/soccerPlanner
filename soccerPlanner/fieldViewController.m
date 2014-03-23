//
//  fieldViewController.m
//  soccerPlanner
//
//  Created by Sergio Quintero Gómez on 3/22/14.
//  Copyright (c) 2014 xtherionx. All rights reserved.
//

#import "fieldViewController.h"
@interface fieldViewController ()

@end

@implementation fieldViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self addPlayerGesture];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
#pragma mark add player methods
-(void)addPlayerGesture {
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(addPlayer:)];
    [tapGesture setNumberOfTapsRequired:2];
    [self.view addGestureRecognizer:tapGesture];
}
-(void)addPlayer:(id) sender {
    CGPoint touchedPoint =[sender locationInView:self.view];
    UIButton *player = [self.soccerPlanner createLocalPlayerWithPoint:touchedPoint];
    [self addRemovePlayerGesture:player];
    [self.view addSubview:player];
}
#pragma mark remove player methods
-(void)addRemovePlayerGesture:(UIButton *)player {
    UITapGestureRecognizer *doubleTapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(removePlayer:)];
    [doubleTapGesture setNumberOfTapsRequired:2];
    [player addGestureRecognizer:doubleTapGesture];
}
-(void)removePlayer:(UITapGestureRecognizer *)sender {
    [self.soccerPlanner removeLocalPlayer:sender.view];
}


@end
