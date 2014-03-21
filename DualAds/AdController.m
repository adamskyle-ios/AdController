//
//  AdController.m
//  DualAds
//
//  Created by Kyle Adams on 21-03-14.
//  Copyright (c) 2014 Kyle Adams. All rights reserved.
//

#import "AdController.h"

@interface AdController ()

@property (nonatomic) UIView *referenceView;
@property (nonatomic) CGRect frame;

@end

@implementation AdController

- (instancetype)initWithReferenceView:(UIView *)view
{
    self = [super init];
    if (self) {
        self.referenceView = view;
    }
    return self;
}

- (GADBannerView *)bannerViewWithRootViewController:(UIViewController *)viewController
{
    GADBannerView *bannerView = [[GADBannerView alloc] initWithFrame:[self createAdBannerFrame]];
    
    bannerView.adUnitID = MY_BANNER_ID;
    bannerView.rootViewController = viewController;
    
    GADRequest *request = [GADRequest request];
    
    request.testing = YES;
    
    [bannerView loadRequest:[GADRequest request]];
    
    return bannerView;
}

- (CGRect)createAdBannerFrame
{
    CGRect frame;
    CGFloat bannerWidth = kGADAdSizeBanner.size.width;
    CGFloat bannerHeight = kGADAdSizeBanner.size.height;
    switch (self.bannerLocation) {
        case kBannerLocation_Bottom:
            frame = CGRectMake(0, self.referenceView.bounds.size.height - bannerHeight, bannerWidth, bannerHeight);
            break;
            
        default:
            frame = CGRectMake(0, 0, bannerWidth, bannerHeight);
            break;
    }
    
    return frame;
}


@end
