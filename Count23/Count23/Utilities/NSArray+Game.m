//
//  NSArray+Game.m
//  Count23
//
//  Created by Seng Hin Mak on 28/9/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "NSArray+Game.h"

@implementation NSArray (Game)

- (NSArray*) shuffle
{
    NSMutableArray *array = [NSMutableArray arrayWithArray:self];
    for (int x = 0; x < [array count]; x++) {
        int randInt = (arc4random() % ([array count] - x)) + x;
        [array exchangeObjectAtIndex:x withObjectAtIndex:randInt];
    }
    return array;
}

@end
