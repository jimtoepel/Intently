//
//  FUNmedia.h
//  intently
//
//  Created by Jim Toepel on 10/18/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface FUNmedia : NSObject

@property (nonatomic) NSString *title;
<<<<<<< HEAD
@property (nonatomic) NSString *format; // ecosystem? itunes, ps4, etc?
@property (nonatomic) NSString *kind;   // movie, game, tv show?

@property (nonatomic) UIImage *thumbImage;
@property (nonatomic) int rating;
@property (nonatomic) bool playing;
@property (nonatomic) float hoursPlayed;
@property (nonatomic) bool finished;

-(id)initWithTitle:(NSString*)newTitle format:(NSString*)newFormat kind:(NSString*)newKind;
-(void)recordConsumption:(float)a;
=======
@property (nonatomic) NSString *format;
@property (nonatomic) int rating;
@property (nonatomic) bool playing;
>>>>>>> parent of b2895ab... New Classes!


@end
