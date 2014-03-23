//
//  soccerPlannerViewController.m
//  soccerPlanner
//
//  Created by Sergio Quintero Gómez on 3/22/14.
//  Copyright (c) 2014 xtherionx. All rights reserved.
//

#import "soccerPlannerViewController.h"

@interface soccerPlannerViewController ()

@end

@implementation soccerPlannerViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setSoccerPlanner:[soccerPlanner sharedInstance]];
//    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
}

@end
