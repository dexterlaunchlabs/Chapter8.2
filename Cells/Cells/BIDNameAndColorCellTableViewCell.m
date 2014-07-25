//
//  BIDNameAndColorCellTableViewCell.m
//  Cells
//
//  Created by Dexter Launchlabs on 7/25/14.
//  Copyright (c) 2014 Dexter Launchlabs. All rights reserved.
//

#import "BIDNameAndColorCellTableViewCell.h"


@implementation BIDNameAndColorCellTableViewCell

@synthesize name;
@synthesize color;

@synthesize nameLabel;
@synthesize colorLabel;


- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (void)setName:(NSString *)n {
    if (![n isEqualToString:name]) {
        name = [n copy];
        nameLabel.text = name; }
}
- (void)setColor:(NSString *)c {
    if (![c isEqualToString:color]) {
        color = [c copy];
    }
}
@end
