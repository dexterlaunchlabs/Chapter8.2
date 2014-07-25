//
//  BIDViewController.m
//  Cells
//
//  Created by Dexter Launchlabs on 7/25/14.
//  Copyright (c) 2014 Dexter Launchlabs. All rights reserved.
//

#import "BIDViewController.h"
#import "BIDNameAndColorCellTableViewCell.h"

@interface BIDViewController ()

@end

@implementation BIDViewController
@synthesize computers;


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSDictionary *row1 = [[NSDictionary alloc] initWithObjectsAndKeys: @"MacBook", @"Name", @"White", @"Color", nil];
    NSDictionary *row2 = [[NSDictionary alloc] initWithObjectsAndKeys: @"MacBook Pro", @"Name", @"Silver", @"Color", nil];
    NSDictionary *row3 = [[NSDictionary alloc] initWithObjectsAndKeys: @"iMac", @"Name", @"Silver", @"Color", nil];
    NSDictionary *row4 = [[NSDictionary alloc] initWithObjectsAndKeys: @"Mac Mini", @"Name", @"Silver", @"Color", nil]; NSDictionary *row5 = [[NSDictionary alloc] initWithObjectsAndKeys:
                                                                                                                                              @"Mac Pro", @"Name", @"Silver", @"Color", nil];
    self.computers = [[NSArray alloc] initWithObjects:row1, row2, row3, row4, row5, nil];
}
- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view. // e.g. self.myOutlet = nil;
    self.computers = nil;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark -
#pragma mark Table Data Source Methods
- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    return [self.computers count]; }
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellTableIdentifier = @"CellTableIdentifier";
   
    static BOOL nibsRegistered = NO;
    if (!nibsRegistered) {
        UINib *nib = [UINib nibWithNibName:@"BIDNameAndColorCellTableViewCell" bundle:nil];
        [tableView registerNib:nib forCellReuseIdentifier:CellTableIdentifier];
        nibsRegistered = YES;
    }
     BIDNameAndColorCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellTableIdentifier];
    
    NSUInteger row = [indexPath row];
    NSDictionary *rowData = [self.computers objectAtIndex:row];
    cell.name = [rowData objectForKey:@"Name"]; cell.color = [rowData objectForKey:@"Color"];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 65.0; // Same number we used in Interface Builder
}
@end
