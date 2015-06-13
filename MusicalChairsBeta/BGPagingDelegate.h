//
//  BGPagingDelegate.h
//  MusicalChairsBeta
//
//  Created by Mac Admin on 5/29/15.
//  Copyright (c) 2015 BG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMPagerViewController.h"

@interface BGPagingDelegate : NSObject <DMPagerViewControllerDelegate>

- (void)pager:(DMPagerViewController *)aController didChangePageFrom:(NSInteger)aOldPage to:(NSInteger)aNewPage;

- (void)pager:(DMPagerViewController *)aController didScrollTo:(CGPoint)aOffset;

@end
