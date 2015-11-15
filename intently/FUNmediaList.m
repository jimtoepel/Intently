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
    return [_mediaList copy];
}


- (void)addToList:(FUNmedia *)a
{
    // Is list nil?
    if (!_mediaList) {
        
        // create an array
        _mediaList = [[NSMutableArray alloc] init];
        
    }
    [_mediaList addObject:a];
    
}


- (float)totalHoursPlayed
{
    
    float sum = 0;
    for (FUNmedia *a in _mediaList){
        sum += [a hoursPlayed];
    }
    return sum;
    
}


-(void)displayList
{
    for (FUNmedia *a in _mediaList){
        NSLog(@"%@", [a title]);
    }
}

@end
