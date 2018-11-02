//
//  RewardViewController.m
//  BidmadSDKTest
//
//  Created by 김선정 on 2018. 10. 30..
//  Copyright © 2018년 김선정. All rights reserved.
//

#import "RewardViewController.h"

@interface RewardViewController ()
{
    BIDMADRewardVideo* rewardVideo;
}
@end

@implementation RewardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[BIDMADSetting sharedInstance]setRewardZoneID:@"868070df-253f-4f16-a4d8-b0bca2285ce0"];
    rewardVideo = [[BIDMADRewardVideo alloc]init];
    [rewardVideo setParentViewController:self];
    [rewardVideo setDelegate:self];
    [rewardVideo loadRewardVideo];
}

#pragma mark - 전면광고 로드 완료 후 호출
-(void)BIDMADRewardVideoComplete:(BIDMADRewardVideo *)core{
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

-(void)BIDMADRewardVideoClick:(BIDMADRewardVideo *)core{
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

-(void)BIDMADRewardVideoClose:(BIDMADRewardVideo *)core{
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

- (void)BIDMADRewardVideoShow:(BIDMADRewardVideo *)core{
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

-(void)BIDMADRewardVideoLoad:(BIDMADRewardVideo *)core
{
    NSLog(@"%s",__PRETTY_FUNCTION__);
    [rewardVideo showRewardVideo];
}

-(void)BIDMADRewardVideoError:(BIDMADRewardVideo *)core code:(NSString *)error{
    NSLog(@"%@",error);
}

-(void)BIDMADRewardVideoSucceed:(BIDMADRewardVideo *)core{
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

@end
