//
//  AppDelegate.m
//  MusicalChairsBeta
//
//  Created by Mac Admin on 5/20/15.
//  Copyright (c) 2015 BG. All rights reserved.
//

#import "AppDelegate.h"
#import "DMPagerViewController.h"
#import "ViewController.h"
#import "SettingsViewController.h"
#import "BGPagingDelegate.h"
#import "ArtistTableViewController.h"
@interface AppDelegate ()
@property (nonatomic, strong) DMPagerViewController *pagingController;
@property (nonatomic, strong) BGPagingDelegate *pagingDelegate;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    //Attributed Strings for titles
    NSDictionary *textAttributes = @{ NSFontAttributeName : [UIFont systemFontOfSize:2.0f],
                                      NSForegroundColorAttributeName : [UIColor blackColor]};
    NSAttributedString *chooseArtist = [[NSAttributedString alloc]initWithString:@"Search" attributes:textAttributes];
    NSAttributedString *chat = [[NSAttributedString alloc]initWithString:@"Chat" attributes:textAttributes];
    NSAttributedString *settings = [[NSAttributedString alloc]initWithString:@"Settings" attributes:textAttributes];

    //CREATING VIEW CONTROLLERS
    ViewController *chooseArtistViewController = [[ViewController alloc]init];
    chooseArtistViewController.pagerObj = [DMPagerNavigationBarItem newItemWithText:chooseArtist andIcon:[UIImage imageNamed:@"chat_full"] renderingMode:DMPagerNavigationBarItemModeOnlyImage];
    
    ArtistTableViewController *chatController = [ArtistTableViewController new];
    chatController.pagerObj = [DMPagerNavigationBarItem newItemWithText:chat andIcon:[UIImage imageNamed:@"rchat"]renderingMode:DMPagerNavigationBarItemModeOnlyImage];
    
    SettingsViewController *settingsController = [SettingsViewController new];
    settingsController.pagerObj = [DMPagerNavigationBarItem newItemWithText:settings andIcon:[UIImage imageNamed:@"gear"]renderingMode:DMPagerNavigationBarItemModeOnlyImage];
    
    //CREATING PAGING CONTROLLER
    self.pagingController = [[DMPagerViewController alloc]initWithViewControllers:@[chatController, settingsController, chooseArtistViewController]];
    
    UIColor *inactiveColor = [UIColor lightGrayColor];
    UIColor *activeColor = [UIColor redColor];
    self.pagingController.navigationBar.activeItemColor = activeColor;
    self.pagingController.navigationBar.inactiveItemColor = inactiveColor;
    
    self.pagingDelegate = [BGPagingDelegate new];
    self.pagingController.delegate = self.pagingDelegate;
    self.pagingController.animation = DMPagerViewControllerAnimationEaseInOut;
    [self.pagingController setPageIndex:0 animated:NO];
    self.window.rootViewController = self.pagingController;
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
