//
//  FUNmediaList.h
//  intently
//
//  Created by Jim Toepel on 11/7/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>
@class FUNmedia;

@interface FUNmediaList : NSObject
{
    NSMutableArray *mediaList;
}

@property (nonatomic, copy) NSArray *mediaList;

-(void)addToList:(FUNmedia *)a;
-(int)count;
-(float)totalHoursPlayed;
-(void)displayList;


@end
