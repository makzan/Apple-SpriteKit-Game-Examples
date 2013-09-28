//
//  Count23.m
//  Count23
//
//  Created by Seng Hin Mak on 28/9/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "Count23.h"
#import "NSArray+Game.h"

@interface Count23()
@property (nonatomic) int nextCount;
@end

@implementation Count23
@synthesize totalTiles, nextCount;

- (id)init
{
    self = [super init];
    if (self) {
        totalTiles = 23;
        [self restart];
    }
    return self;
}

- (void)restart
{
    nextCount = 1;
}

- (BOOL)isNumberMatchNextCount:(int)number
{
    return number == nextCount;
}

- (void)increaseNextCount
{
    nextCount += 1;
}

- (NSArray*)arrayWithOrderedNumberFromOneTo:(NSInteger)end;
{
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:end];
    for (int i=1; i<=end; i++) {
        [array addObject:@(i)];
    }
    return array;
}

- (NSArray*)shuffledGameNumbers
{
    NSArray *array = [self arrayWithOrderedNumberFromOneTo:totalTiles];
    return [array shuffle];
}

@end
