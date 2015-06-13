//
//  ArtistTableViewController.h
//  MusicalChairsBeta
//
//  Created by Mac Admin on 6/13/15.
//  Copyright (c) 2015 BG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DMPagerViewController.h"

@interface ArtistTableViewController : UITableViewController <DMPagerViewControllerProtocol>

@property (nonatomic, strong) DMPagerNavigationBarItem *pagerObj;

@end
