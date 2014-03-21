# AdController 0.1

### This is not meant to be used for release-versions of apps in it's current form. Use it as a reference, tweak to your liking

This is a very simple AdMob banner location controller for iOS. Simply set the bannerLocation property after you've initialized the AdController. Default location is the top, however, bottom location is default in iAD, so this controller can help you use both easier without extra code in your ViewController.

## Installation

- Make sure you have AdMob installed in your project.
- Simply drag AdController.h/AdController.m files into your project folder.

## Usage

> import "AdViewController"
> //when you want the ViewController to show the banner 
> AdController *adController = [[AdController alloc] initWithReferenceView:self.view];
> //Optional. setting location to bottom. Default is top.
> adController.bannerLocation = kBannerLocation_Bottom;
> //add banner to the view
> [self.view addSubview:[adController bannerViewWithRootViewController:self]];

that's all folks

If you want to acces GADBannerView properties, you're on your own for now. This is a very basic implementation.

## Roadmap

I'm not sure I will expand this class, because ad implementation in its current state is as easy as it gets. Creating a robust class that handles the implementation can make things more complicated than they need be. However, I think this can be improved AND stay flexible with the following roadmap:

- Handle mediation between AdMob and iAd
- Make the AdController GADBannerView properties accessable

