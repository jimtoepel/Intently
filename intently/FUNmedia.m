//
//  FUNmedia.m
//  intently
//
//  Created by Jim Toepel on 10/18/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import "FUNmedia.h"

@implementation FUNmedia

@synthesize title;
@synthesize format;
<<<<<<< HEAD
@synthesize kind;
@synthesize thumbImage;
=======
>>>>>>> parent of b2895ab... New Classes!
@synthesize rating;
@synthesize playing;

<<<<<<< HEAD
- (id)initWithTitle:(NSString *)newTitle format:(NSString*)newFormat kind:(NSString*)newKind
{
    if ((self =[super init] )){
        self.title = newTitle;
        self.format = newFormat;
        self.kind = newKind;

    }
    return self;
}

- (void)recordConsumption:(float)a
{
    hoursPlayed = hoursPlayed + a;
}
=======
>>>>>>> parent of b2895ab... New Classes!


@end
