//
//  BIDNameAndColorCellTableViewCell.h
//  Cells
//
//  Created by Dexter Launchlabs on 7/25/14.
//  Copyright (c) 2014 Dexter Launchlabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDNameAndColorCellTableViewCell : UITableViewCell

@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *color;

@property (strong, nonatomic) IBOutlet UILabel *nameLabel; @property (strong, nonatomic) IBOutlet UILabel *colorLabel;
@end
