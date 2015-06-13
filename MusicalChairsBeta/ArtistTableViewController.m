//
//  ArtistTableViewController.m
//  MusicalChairsBeta
//
//  Created by Mac Admin on 6/13/15.
//  Copyright (c) 2015 BG. All rights reserved.
//

#import "ArtistTableViewController.h"
#import "BGTableViewCell.h"

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
    return 3;
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



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
