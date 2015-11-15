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
    
    [self setupFakeData];
  
    
    // Do any additional setup after loading the view, typically from a nib.
    

    
    
    
    self.title = @"In Play";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.objects.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSDate *object = self.objects[indexPath.row];
    cell.textLabel.text = [object description];
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.objects removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}


#pragma mark - Fake Data

-(void)setupFakeData
{
    FUNmediaList *finished = [[FUNmediaList alloc] init];
    FUNmediaList *playing = [[FUNmediaList alloc] init];
    FUNmediaList *backlog = [[FUNmediaList alloc] init];
    
    FUNmedia *item1 = [[FUNmedia alloc] init];
    item1.title = @"Metal Gear Solid V";
    item1.kind = @"Digital Game";
    item1.format = @"PS4";
    item1.playing = FALSE;
    item1.finished = TRUE;
    item1.rating = 5;
    item1.hoursPlayed = 40.0;
    [finished addToList:item1];
    
    FUNmedia *item2 = [[FUNmedia alloc] init];
    item2.title = @"Uncharted Collection";
    item2.kind = @"Digital Game";
    item2.format = @"PS4";
    item2.playing = TRUE;
    item2.finished = FALSE;
    item2.hoursPlayed = 15.0;
    [playing addToList:item2];
    
    FUNmedia *item3 = [[FUNmedia alloc] init];
    item3.title = @"Fallout 4";
    item3.kind = @"Digital Game";
    item3.format = @"PS4";
    item3.playing = FALSE;
    item3.finished = FALSE;
    item3.hoursPlayed = 0.0;
    [backlog addToList:item3];
    
    FUNmedia *item4 = [[FUNmedia alloc] init];
    item4.title = @"Jurassic World";
    item4.kind = @"Movie";
    item4.format = @"iTunes";
    item4.playing = FALSE;
    item4.finished = TRUE;
    item4.rating = 3;
    item4.hoursPlayed = 2.0;
    [finished addToList:item4];
    
    FUNmedia *item5 = [[FUNmedia alloc] init];
    item5.title = @"Destiny";
    item5.format = @"PS4";
    item5.playing = TRUE;
    item5.finished = TRUE;
    item5.rating = 5;
    item5.hoursPlayed = 70.0;
    [playing addToList:item5];
    
    FUNmedia *item6 = [[FUNmedia alloc] init];
    item6.title = @"Disney Infinity - Rise Against the Empire";
    item6.format = @"PS4";
    item6.playing = FALSE;
    item6.finished = TRUE;
    item6.rating = 4;
    item6.hoursPlayed = 10.0;
    [finished addToList:item6];
    
    NSLog(@"Stuff I'm Playing:\n");
    [playing displayList];
    
    NSLog(@"Up Next Is:\n");
    [backlog displayList];
    
    NSLog(@"Stuff I've Finished:\n");
    [finished displayList];
}

@end
