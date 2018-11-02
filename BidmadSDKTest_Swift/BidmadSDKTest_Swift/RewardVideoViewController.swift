//
//  RewardVideoViewController.swift
//  BidmadSDKTest_Swift
//
//  Created by 김선정 on 2018. 11. 1..
//  Copyright © 2018년 김선정. All rights reserved.
//

import Foundation
import BidmadSDK

class RewardVideoViewController : UIViewController,BIDMADRewardVideoDelegate{
    var rewardVideo = BIDMADRewardVideo();
    
    override func viewDidLoad() {
        BIDMADSetting.sharedInstance()?.rewardZoneID = "868070df-253f-4f16-a4d8-b0bca2285ce0"
        rewardVideo = BIDMADRewardVideo.init()    //보상형 비디오 광고 초기화
        rewardVideo?.parentViewController = self  //부모 광고 뷰 설정
        rewardVideo?.delegate = self     //델리게이트 설정
        rewardVideo?.load()             //보상형 비디오 광고 로드
    }
    
    func bidmadRewardVideoLoad(_ core: BIDMADRewardVideo!) {
        rewardVideo?.show()
    }
    
    func bidmadRewardVideoShow(_ core: BIDMADRewardVideo!) {
        
    }
    
    func bidmadRewardVideoClick(_ core: BIDMADRewardVideo!) {
        
    }
    
    func bidmadRewardVideoClose(_ core: BIDMADRewardVideo!) {
        
    }
    
    func bidmadRewardVideoSucceed(_ core: BIDMADRewardVideo!) {
        
    }
    
    func bidmadRewardVideoComplete(_ core: BIDMADRewardVideo!) {
        
    }
    
    func bidmadRewardVideoError(_ core: BIDMADRewardVideo!, code error: String!) {
        
    }
    
    override func didReceiveMemoryWarning() {
        
    }
}
