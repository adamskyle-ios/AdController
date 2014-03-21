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

#warning make sure you use a correct AdMob Banner ID.
#define MY_BANNER_ID @"yourbanneridgoeshere"

@interface AdController : NSObject

@property (nonatomic) kBannerLocation bannerLocation;

//designated initialiser
- (instancetype)initWithReferenceView:(UIView *)view;

- (GADBannerView *)bannerViewWithRootViewController:(UIViewController *)viewController;

@end
