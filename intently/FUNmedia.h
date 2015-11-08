//
//  FUNmedia.h
//  intently
//
//  Created by Jim Toepel on 10/18/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FUNmedia : NSObject

@property (nonatomic) NSString *title;
@property (nonatomic) NSString *format; // ecosystem? itunes, ps4, etc?
@property (nonatomic) NSString *kind;   // movie, game, tv show?
@property (nonatomic) int rating;
@property (nonatomic) bool playing;
@property (nonatomic) float hoursPlayed;
@property (nonatomic) bool finished;

-(void)recordConsumption:(float)a;


@end
