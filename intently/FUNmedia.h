//
//  FUNmedia.h
//  intently
//
//  Created by Jim Toepel on 10/18/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FUNmedia : NSObject

{
    int _rating;
    bool _playing;
}

-(void)setRating:(int)r;
-(void)setPlaying:(bool)p;

@end
