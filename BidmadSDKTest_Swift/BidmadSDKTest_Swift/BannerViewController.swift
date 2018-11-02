//
//  BannerViewController.swift
//  BidmadSDKTest_Swift
//
//  Created by 김선정 on 2017. 9. 13..
//  Copyright © 2017년 김선정. All rights reserved.
//

import UIKit
import BidmadSDK
class BannerViewController : UIViewController,BIDMADBannerDelegate{
    var banner = BIDMADBanner();
    
    override func viewDidLoad() {
        BIDMADSetting.sharedInstance()?.bannerZoneID = "23747520-9a41-42cc-b43d-cb6d09677791";
        banner = BIDMADBanner.init(parentViewController: self, adsPositon: CGPoint.init(x: 0, y: 0));    // 배너뷰 초기화
        banner.delegate = self;         //델리게이트 설정
        self.view.addSubview(banner);   // 광고배너를 유저 화면에 삽입
        banner.requestView();           // 광고 요청
    }
    
    // 배너광고 로드 완료 후 호출
    func bidmadBannerLoad(_ core: BIDMADBanner!) {
        
    }
    
    // 배너광고 닫힐 시 호출
    func bidmadBannerClosed(_ core: BIDMADBanner!) {
        
    }
    
    // 배너광고 노출 시 호출
    func bidmadBannerShow(_ core: BIDMADBanner!) {
        
    }
    
    // 배너광고 에러발생 시 호출
    func bidmadAdError(_ core: BIDMADBanner!, code error: String!) {
        print(error);
    }
    
    @IBAction func backBtn(_ sender: Any) {
        banner.removeAds();     //광고 삭제
    }
    
    override func didReceiveMemoryWarning() {
        
    }
}
