//
//  AdController.h
//  DualAds
//
//  Created by Kyle Adams on 21-03-14.
//  Copyright (c) 2014 Kyle Adams. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GADBannerView.h"

typedef NS_ENUM (NSInteger, kBannerLocation) {
    kBannerLocation_Top,
    kBannerLocation_Bottom,
};

#define MY_BANNER_ID @"ca-app-pub-1814754795806833/3862530303"

@interface AdController : NSObject


// @description Bannerlocation on the iPhone screen
@property (nonatomic) kBannerLocation bannerLocation;

//designated initialiser
- (instancetype)initWithReferenceView:(UIView *)view;

- (GADBannerView *)bannerViewWithRootViewController:(UIViewController *)viewController;

@end
