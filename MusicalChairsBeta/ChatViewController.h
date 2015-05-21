//
//  ChatViewController.h
//  MusicalChairsBeta
//
//  Created by Mac Admin on 5/21/15.
//  Copyright (c) 2015 BG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DMPagerViewController.h"

@class DMPagerNavigationBarItem;

@interface ChatViewController : UIViewController <DMPagerViewControllerProtocol>

@property (nonatomic, strong) DMPagerNavigationBarItem *pagerObj;

@end
