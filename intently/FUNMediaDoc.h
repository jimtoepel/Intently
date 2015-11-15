//
//  FUNMediaDoc.h
//  intently
//
//  Created by Jim Toepel on 11/14/15.
//  Copyright © 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class FUNMediaData;

@interface FUNMediaDoc : NSObject


@property (nonatomic) FUNMediaData *data;
@property (nonatomic) NSString *format; // ecosystem? itunes, ps4, etc?
@property (nonatomic) NSString *kind;   // movie, game, tv show?
@property (nonatomic) UIImage *thumbImage;

- (id)initWithTitle:(NSString*)newTitle format:(NSString*)newFormat kind:(NSString*) newKind thumbImage:(UIImage*)thumbImage;

@end
