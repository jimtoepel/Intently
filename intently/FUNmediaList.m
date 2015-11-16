//
//  FUNmediaList.m
//  intently
//
//  Created by Jim Toepel on 11/7/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import "FUNmediaList.h"
#import "FUNmedia.h"

@implementation FUNmediaList

- (NSArray *)mediaList
{
    return [mediaList copy];
}


- (void)addToList:(FUNmedia *)a
{
    // Is list nil?
    if (!mediaList) {
        
        // create an array
        mediaList = [[NSMutableArray alloc] init];
        
    }
    [mediaList addObject:a];
    
}

- (int)count
{
    return mediaList.count;
}

- (float)totalHoursPlayed
{
    
    float sum = 0;
    for (FUNmedia *a in mediaList){
        sum += [a hoursPlayed];
    }
    return sum;
    
}


-(void)displayList
{
    for (FUNmedia *a in mediaList){
        NSLog(@"%@", [a title]);
    }
}

@end
