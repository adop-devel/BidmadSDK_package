//
//  InterstitialViewController.h
//  BidmadSDKTest
//
//  Created by 김선정 on 2017. 9. 13..
//  Copyright © 2017년 김선정. All rights reserved.
//

#import <UIKit/UIKit.h>
@import BidmadSDK;
@interface InterstitialViewController : UIViewController<BIDMADInterstitialDelegate,FBRewardedVideoAdDelegate>
@property (nonatomic, strong) FBRewardedVideoAd *rewardedVideoAd;
@end
