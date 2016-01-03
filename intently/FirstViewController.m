//
//  FirstViewController.m
//  intently
//
//  Created by Jim Toepel on 10/17/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

//
//  THIS IS THE PLAYING LIST
//

#import "FirstViewController.h"

@interface FirstViewController ()


@end

@implementation FirstViewController



- (void)viewDidLoad {
    [super viewDidLoad];
//    NSLog(@"Stuff I'm Playing:\n");
//    [playing displayList];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Segues
/*
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSDate *object = self.objects[indexPath.row];
        DetailViewController *controller = (DetailViewController *)[[segue destinationViewController] topViewController];
        [controller setDetailItem:object];
        controller.navigationItem.leftBarButtonItem = self.splitViewController.displayModeButtonItem;
        controller.navigationItem.leftItemsSupplementBackButton = YES;
    }
}
*/


@end
