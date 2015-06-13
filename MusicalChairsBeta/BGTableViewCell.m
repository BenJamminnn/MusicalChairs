//
//  BGTableViewCell.m
//  MusicalChairsBeta
//
//  Created by Mac Admin on 6/13/15.
//  Copyright (c) 2015 BG. All rights reserved.
//

#import "BGTableViewCell.h"

@implementation BGTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if(self = [super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier]) {
        self.textLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:18.0];
        self.detailTextLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Light" size:10.0];
    }
    return self;
}


- (void)layoutSubviews {
    [super layoutSubviews];
    self.imageView.layer.cornerRadius = self.imageView.frame.size.width/2;
    self.imageView.layer.masksToBounds = YES;
    self.imageView.layer.borderColor = [UIColor blackColor].CGColor;
    self.imageView.layer.borderWidth = 3.0;
}


@end
