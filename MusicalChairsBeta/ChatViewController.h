//
//  ChatViewController.h
//  MusicalChairsBeta
//
//  Created by Mac Admin on 5/29/15.
//  Copyright (c) 2015 BG. All rights reserved.
//

#import "JSQMessagesViewController.h"
#import "DMPagerViewController.h"

@class DMPagerNavigationBarItem;

@interface ChatViewController : JSQMessagesViewController <DMPagerViewControllerProtocol>

@property (nonatomic, strong) DMPagerNavigationBarItem *pagerObj;

- (void)dismissKeyboard;


@end
