//
//  BannerViewController.swift
//  BidmadSDKTest_Swift
//
//  Created by 김선정 on 2017. 9. 13..
//  Copyright © 2017년 김선정. All rights reserved.
//

import UIKit
import BidmadSDK
class InterstitialViewController : UIViewController,BIDMADInterstitialDelegate{
    var interstitial = BIDMADInterstitial();
    
    override func viewDidLoad() {
        BIDMADSetting.sharedInstance()?.interstitialZoneID = "ed87a1d3-0b01-4d87-9918-5b1bf4599f56";
        interstitial = BIDMADInterstitial.init();     //전면광고 초기화
        interstitial?.parentViewController = self;  //부모 광고 뷰 설정
        interstitial?.delegate = self;      //델리게이트 설정
//        interstitial?.directShowView();   전면광고 다이렉트로드
        interstitial?.loadView();           //전면 광고 로드
    }
    
    // 전면광고 로드 완료 후 호출
    func bidmadInterstitialLoad(_ core: BIDMADInterstitial!) {
        interstitial?.showView();      // 로드 완료된 광고 노출
    }
    
    // 전면광고 노출 후 호출
    func bidmadInterstitialShow(_ core: BIDMADInterstitial!) {
        
    }
    
    func bidmadAdError(_ core: BIDMADInterstitial!, code error: String!) {
        print(error);
    }
    
    // 전면광고 로드 닫을 시 호출
    func bidmadInterstitialClose(_ core: BIDMADInterstitial!) {
        
    }
    
    override func didReceiveMemoryWarning() {
        
    }
}
