//
//  ChatViewController.m
//  MusicalChairsBeta
//
//  Created by Mac Admin on 5/29/15.
//  Copyright (c) 2015 BG. All rights reserved.
//

#import "ChatViewController.h"
#import <Parse.h>
//#define kFirechatNS @"https://firechat-ios.musical-chairs.firebaseIO.com/"

@interface ChatViewController ()


@end

@implementation ChatViewController


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //springy bubbles
    self.collectionView.collectionViewLayout.springinessEnabled = YES;
    
    //testing
    self.senderId = @"Ben";
    self.senderDisplayName = @"Ben";
    
    

}


#pragma mark - overriden methods

- (void)didPressSendButton:(UIButton *)button withMessageText:(NSString *)text senderId:(NSString *)senderId senderDisplayName:(NSString *)senderDisplayName date:(NSDate *)date {
}

- (void)didPressAccessoryButton:(UIButton *)sender {
    
}

- (DMPagerNavigationBarItem *)pagerItem {
    return self.pagerObj;
}

@end
