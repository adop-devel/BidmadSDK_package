//
//  InterstitialViewController.m
//  BidmadSDKTest
//
//  Created by 김선정 on 2017. 9. 13..
//  Copyright © 2017년 김선정. All rights reserved.
//

#import "InterstitialViewController.h"

@interface InterstitialViewController (){
    BIDMADInterstitial* interstitial;
}

@end

@implementation InterstitialViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [[BIDMADSetting sharedInstance]setInterstitialZoneID:@"7fbf5fc8-4f6c-437c-8de6-461bc4c468fb"];
    [[BIDMADSetting sharedInstance]setIsDebug:YES];
    interstitial = [[BIDMADInterstitial alloc]init];
    [interstitial setParentViewController:self];
    [interstitial setDelegate:self];
    [interstitial directShowInterstitialView];   //바로 호출
    [interstitial loadInterstitialView];
}

#pragma mark - 전면광고 로드 완료 후 호출
- (void)BIDMADAdError:(BIDMADInterstitial *)core code:(NSString *)error
{
    NSLog(@"error L: %@",error);
}

#pragma mark - 전면광고 닫힐 시 호출
- (void)BIDMADInterstitialClose:(BIDMADInterstitial *)core
{
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

#pragma mark - 전면광고 노출 시 호출
- (void)BIDMADInterstitialShow:(BIDMADInterstitial *)core
{
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

#pragma mark - 전면광고 에러발생 시 호출
-(void)BIDMADInterstitialLoad:(BIDMADInterstitial *)core
{
    [interstitial showInterstitialView];
    NSLog(@"%s",__PRETTY_FUNCTION__);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)rewardBasedVideoAd:(GADRewardBasedVideoAd *)rewardBasedVideoAd
   didRewardUserWithReward:(GADAdReward *)reward {
    NSString *rewardMessage =
    [NSString stringWithFormat:@"Reward received with currency %@ , amount %lf",
     reward.type,
     [reward.amount doubleValue]];
    NSLog(@"%@",rewardMessage);
}

- (void)rewardBasedVideoAdDidReceiveAd:(GADRewardBasedVideoAd *)rewardBasedVideoAd {
    NSLog(@"Reward based video ad is received.");
    if ([[GADRewardBasedVideoAd sharedInstance] isReady]) {
        [[GADRewardBasedVideoAd sharedInstance] presentFromRootViewController:self];
    }
}

- (void)rewardBasedVideoAdDidOpen:(GADRewardBasedVideoAd *)rewardBasedVideoAd {
    NSLog(@"Opened reward based video ad.");
}

- (void)rewardBasedVideoAdDidStartPlaying:(GADRewardBasedVideoAd *)rewardBasedVideoAd {
    NSLog(@"Reward based video ad started playing.");
}

- (void)rewardBasedVideoAdDidCompletePlaying:(GADRewardBasedVideoAd *)rewardBasedVideoAd {
    NSLog(@"Reward based video ad has completed.");
}

- (void)rewardBasedVideoAdDidClose:(GADRewardBasedVideoAd *)rewardBasedVideoAd {
    NSLog(@"Reward based video ad is closed.");
}

- (void)rewardBasedVideoAdWillLeaveApplication:(GADRewardBasedVideoAd *)rewardBasedVideoAd {
    NSLog(@"Reward based video ad will leave application.");
}

- (void)rewardBasedVideoAd:(GADRewardBasedVideoAd *)rewardBasedVideoAd
    didFailToLoadWithError:(NSError *)error {
    NSLog(@"%@",error);
    NSLog(@"Reward based video ad failed to load.");
}

- (void)rewardedVideoAd:(FBRewardedVideoAd *)rewardedVideoAd didFailWithError:(NSError *)error
{
    NSLog(@"Rewarded video ad failed to load");
}

- (void)rewardedVideoAdDidLoad:(FBRewardedVideoAd *)rewardedVideoAd
{
    NSLog(@"Video ad is loaded and ready to be displayed");
    if (self.rewardedVideoAd && self.rewardedVideoAd.isAdValid) {
        [self.rewardedVideoAd showAdFromRootViewController:self];
    }
}

- (void)rewardedVideoAdDidClick:(FBRewardedVideoAd *)rewardedVideoAd
{
    NSLog(@"Video ad clicked");
}

- (void)rewardedVideoAdVideoComplete:(FBRewardedVideoAd *)rewardedVideoAd;
{
    NSLog(@"Rewarded Video ad video complete - this is called after a full video view, before the ad end card is shown. You can use this event to initialize your reward");
          }

- (void)rewardedVideoAdDidClose:(FBRewardedVideoAd *)rewardedVideoAd
    {
        NSLog(@"Rewarded Video ad closed - this can be triggered by closing the application, or closing the video end card");
              }

-(void)rewardedVideoAdServerRewardDidSucceed:(FBRewardedVideoAd *)rewardedVideoAd{
    NSLog(@"성공");
}

@end
