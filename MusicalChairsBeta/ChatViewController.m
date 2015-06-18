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


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"CHAT";

    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithTitle:@"Dismiss" style:UIBarButtonItemStylePlain target:self action:@selector(dismissChatViewController:)];
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc]initWithTitle:@"More" style:UIBarButtonItemStylePlain target:self action:@selector(moreButtonTapped:)];
    self.navigationItem.rightBarButtonItem = rightButton;
    self.navigationItem.leftBarButtonItem = leftButton;

    //springy bubbles
    self.collectionView.collectionViewLayout.springinessEnabled = YES;
    
    //testing
    self.senderId = @"Ben";
    self.senderDisplayName = @"Ben";
    self.automaticallyScrollsToMostRecentMessage = YES;
    
}

- (void)dismissChatViewController:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)moreButtonTapped:(id)sender {
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    [self dismissKeyboard];
}

- (void)dismissKeyboard {
    [self.inputToolbar.contentView.textView resignFirstResponder];
}

#pragma mark - overridden methods

- (void)didPressSendButton:(UIButton *)button withMessageText:(NSString *)text senderId:(NSString *)senderId senderDisplayName:(NSString *)senderDisplayName date:(NSDate *)date {
    [self finishSendingMessageAnimated:YES];
}

- (void)didPressAccessoryButton:(UIButton *)sender {
    
}

@end
