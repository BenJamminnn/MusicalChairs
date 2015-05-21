//
//  ViewController.m
//  MusicalChairsBeta
//
//  Created by Mac Admin on 5/20/15.
//  Copyright (c) 2015 BG. All rights reserved.
//

#import "ViewController.h"
#import "DraggableViewBackground.h"
#import "DMPagerViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    DraggableViewBackground *background = [[DraggableViewBackground alloc]initWithFrame:self.view.frame];
    [self.view addSubview:background];
}

- (DMPagerNavigationBarItem *)pagerItem {
    return self.pagerObj;
}

@end
