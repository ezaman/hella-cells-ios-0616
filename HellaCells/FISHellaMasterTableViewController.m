//
//  FISHellaMasterTableViewController.m
//  HellaCells
//
//  Created by Ehsan Zaman on 6/28/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISHellaMasterTableViewController.h"
#import "FISHellaDetailViewController.h"
@interface FISHellaMasterTableViewController ()
@end

@implementation FISHellaMasterTableViewController

-(void) viewDidLoad {
    self.tableView.accessibilityIdentifier = @"Table";
    
    
}


-(NSInteger)numberOfSectionsInTableView: (UITableView *) tableView {
    return 1;
}

-(NSInteger)tableView: (UITableView *) tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"numberCell"];
    cell.textLabel.text = [NSString stringWithFormat:@"%lu", indexPath.row + 1];
    NSLog(@"cellForRowAtIndexPath is being called");
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    FISHellaDetailViewController *detailVC = (FISHellaDetailViewController *)segue.destinationViewController;
   
    NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
   detailVC.number = selectedIndexPath.row +1;
    

}


@end
