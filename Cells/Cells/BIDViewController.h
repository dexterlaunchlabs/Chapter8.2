//
//  BIDViewController.h
//  Cells
//
//  Created by Dexter Launchlabs on 7/25/14.
//  Copyright (c) 2014 Dexter Launchlabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDViewController : UIViewController
<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSArray *computers;

@end
