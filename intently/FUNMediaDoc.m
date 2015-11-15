//
//  FUNMediaDoc.m
//  intently
//
//  Created by Jim Toepel on 11/14/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import "FUNMediaDoc.h"
#import "FUNMediaData.h"

@implementation FUNMediaDoc

@synthesize data;
@synthesize format;
@synthesize kind;
@synthesize thumbImage;

- (id)initWithTitle:(NSString *)newTitle format:(NSString *)newFormat kind:(NSString *)newKind thumbImage:(UIImage *)thumbImage {
    
    if ((self = [super init])) {
        self.data = [[FUNMediaData alloc] initWithTitle: newTitle];
        self.format = newFormat;
        self.kind = newKind;
        self.thumbImage = thumbImage;
        
    }
    return self;
}


@end
