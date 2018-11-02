//
//  BannerViewController.m
//  AdopSDKTest
//
//  Created by 김선정 on 2017. 9. 13..
//  Copyright © 2017년 김선정. All rights reserved.
//

#import "BannerViewController.h"

@interface BannerViewController (){
    BIDMADBanner* banner;
}

@end

@implementation BannerViewController

-(void)viewWillAppear:(BOOL)animated{
    
}

-(void)viewDidDisappear:(BOOL)animated{

}

- (void)viewDidLoad {
    [super viewDidLoad];
    [[BIDMADSetting sharedInstance] setBannerZoneID:@"23747520-9a41-42cc-b43d-cb6d09677791"];        // BIDMAD에서 발급하는 ZONEID
    // Do any additional setup after loading the view.
    banner = [[BIDMADBanner alloc]initWithParentViewController:self adsPositon:CGPointMake(0, 0)];                        // 배너뷰 초기화
    [banner setDelegate:self];     //델리게이트 설정
    [self.view addSubview:banner];	// 광고배너를 유저 화면에 삽입
    [banner requestBannerView];	// 광고 요청
}

#pragma mark - 배너광고 로드 완료 후 호출
- (void)BIDMADAdError:(BIDMADBanner *)core code:(NSString *)error
{
    NSLog(@"error L: %@",error);
}

#pragma mark - 배너광고 닫힐 시 호출
- (void)BIDMADBannerShow:(BIDMADBanner *)core
{
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

#pragma mark - 배너광고 노출 시 호출
- (void)BIDMADBannerClosed:(BIDMADBanner *)core
{
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

#pragma mark - 배너광고 에러발생 시 호출
-(void)BIDMADBannerLoad:(BIDMADBanner *)core{
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backBtn:(id)sender {
    [banner removeAds];     //광고 삭제
}

@end
