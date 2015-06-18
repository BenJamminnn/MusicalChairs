//
//  ArtistTableViewController.m
//  MusicalChairsBeta
//
//  Created by Mac Admin on 6/13/15.
//  Copyright (c) 2015 BG. All rights reserved.
//

#import "ArtistTableViewController.h"
#import "BGTableViewCell.h"
#import "ChatViewController.h"

static NSString *const cellId = @"BGCell";

@interface ArtistTableViewController ()
@property (nonatomic, strong) NSArray *friends;

@property (nonatomic, strong) NSDateFormatter *dateFormatter;
@end

@implementation ArtistTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[BGTableViewCell class] forCellReuseIdentifier:cellId];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 6;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 70;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    cell.textLabel.text = @"Ben_Jammin";
    cell.detailTextLabel.text = [self stringFromDate:[NSDate date]];
    cell.imageView.image = [UIImage imageNamed:@"ProfilePicture"];

    return cell;
}

- (NSString *)stringFromDate:(NSDate *)date {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        self.dateFormatter = [[NSDateFormatter alloc] init];
        [self.dateFormatter setDateFormat:@"MM/dd/YYYY"];
    });
    NSString *dateString = [self.dateFormatter stringFromDate:date];
    return [@"Matched On: " stringByAppendingString:dateString];
}


#pragma mark - DMPagerVC pagerItem

- (DMPagerNavigationBarItem *)pagerItem {
    return self.pagerObj;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    /*
    reference correct friend with [_friends objectAtIndex:indexPath.row]
    unpack chat log with friend, query pfuser, get back chat log
    init JSQMessagesController with chat log
    instantiate within a nav?
    */
    CATransition *push = [CATransition animation];
    push.type = kCATransitionPush;
    push.subtype = kCATransitionFromRight;
    push.duration = 0.3;
    [self.view.window.layer addAnimation:push forKey:nil];


    ChatViewController *messsagesVC = [ChatViewController messagesViewController];
    UINavigationController *navController = [[UINavigationController alloc]initWithRootViewController:messsagesVC];
    [self presentViewController:navController animated:NO completion:nil];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
