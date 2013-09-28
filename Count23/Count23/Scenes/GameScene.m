//
//  GameScene.m
//  Count23
//
//  Created by Seng Hin Mak on 28/9/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "GameScene.h"
#import "NumberedTile.h"
#import "Tile.h"


@implementation GameScene

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        
        self.backgroundColor = [SKColor whiteColor];
        
        int tileWidth = 80;
        int tileHegiht = tileWidth;
        
        int index = 0;
        
        self.count23 = [[Count23 alloc] init];
        
        NSArray *gameNumbers = [self.count23 shuffledGameNumbers];
        
        for (int i=0; i<4; i++) {
            for (int j=0; j<6; j++) {
                if (index >= gameNumbers.count) break; // we only need 23 tiles;
                
                NumberedTile *tile = [NumberedTile tileWithNumber:gameNumbers[index]];
                tile.position = CGPointMake(i * tileWidth, j * tileHegiht);
                [self addChild:tile];
                
                index += 1;
            }
        }
        
        Tile *tile = [Tile node];
        tile.position = CGPointMake(3 * tileWidth, 5 * tileHegiht);
        [self addChild:tile];

    }
    return self;
}


@end
