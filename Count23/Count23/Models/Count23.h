//
//  Count23.h
//  Count23
//
//  Created by Seng Hin Mak on 28/9/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Count23 : NSObject
@property (nonatomic) int totalTiles;

- (NSArray*)shuffledGameNumbers;
- (BOOL)isNumberMatchNextCount:(int)number;
- (void)increaseNextCount;
@end
