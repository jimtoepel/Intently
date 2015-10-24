//
//  FirstViewController.m
//  intently
//
//  Created by Jim Toepel on 10/17/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    inPlayList = [NSMutableArray arrayWithObjects:@"Metal Gear Solid 5", @"Uncharted Collection", @"Destiny", nil];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
