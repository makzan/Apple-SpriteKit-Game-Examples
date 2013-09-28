//
//  Tile.m
//  Count23
//
//  Created by Seng Hin Mak on 28/9/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "Tile.h"
#import "SKShapeNode+Utility.h"
#import "UIColor+Count23.h"

@interface Tile()
@property (nonatomic) CGFloat width;
@end

@implementation Tile

+ (Tile*) tile
{
    return [self node];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup
{
    
    self.width = 80.0f;
    
    SKShapeNode *bg = [SKShapeNode shapeNodeWithSquareOfWidth: self.width];
    bg.antialiased = NO;
    bg.strokeColor = [UIColor majorColor];
    [self addChild:bg];

}
@end
