//
//  BannerViewController.h
//  AdopSDKTest
//
//  Created by 김선정 on 2017. 9. 13..
//  Copyright © 2017년 김선정. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@import BidmadSDK;
@interface BannerViewController : UIViewController<BIDMADBannerDelegate>
- (IBAction)backBtn:(id)sender;

@end
