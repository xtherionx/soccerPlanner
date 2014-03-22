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

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}



@end
