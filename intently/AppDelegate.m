//
//  AppDelegate.m
//  intently
//
//  Created by Jim Toepel on 10/17/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
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
    
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"Stuff I'm Playing:\n");
    [playing displayList];
    
    NSLog(@"Up Next Is:\n");
    [backlog displayList];
    
    NSLog(@"Stuff I've Finished:\n");
    [finished displayList];
    NSLog(@"%lu", [finished.mediaList count]);
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
