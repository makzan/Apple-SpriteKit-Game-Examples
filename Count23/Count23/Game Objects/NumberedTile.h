//
//  NumberedTile.h
//  Count23
//
//  Created by Seng Hin Mak on 28/9/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface NumberedTile : SKNode

+ (NumberedTile*) tile;
+ (NumberedTile*) tileWithNumber:(NSNumber*)number;

- (void)disable;
- (void)hideNumber;
@end
