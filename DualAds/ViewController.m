//
//  ViewController.m
//  DualAds
//
//  Created by Kyle Adams on 20-03-14.
//  Copyright (c) 2014 Kyle Adams. All rights reserved.
//

#import "ViewController.h"
#import "AdController.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    AdController *adController = [[AdController alloc] initWithReferenceView:self.view];
    
    //setting location to bottom
    adController.bannerLocation = kBannerLocation_Top;
    
    [self.view addSubview:[adController bannerViewWithRootViewController:self]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
