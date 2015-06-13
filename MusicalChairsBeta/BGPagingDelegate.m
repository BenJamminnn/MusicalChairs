//
//  BGPagingDelegate.m
//  MusicalChairsBeta
//
//  Created by Mac Admin on 5/29/15.
//  Copyright (c) 2015 BG. All rights reserved.
//

#import "BGPagingDelegate.h"
#import "ChatViewController.h"


@implementation BGPagingDelegate


- (void)pager:(DMPagerViewController *)aController didChangePageFrom:(NSInteger)aOldPage to:(NSInteger)aNewPage {
#warning DMPagerVC not setting proper indicies for new and old pages
    if(aOldPage == 2 && aNewPage == 1) {
        ChatViewController *chatVC = [aController.controllers lastObject];
        [chatVC dismissKeyboard];   
    }
    NSLog(@"switched from page %li to page %li", (long)aOldPage, (long)aNewPage);

}

- (void)pager:(DMPagerViewController *)aController didScrollTo:(CGPoint)aOffset {
    
}

@end
