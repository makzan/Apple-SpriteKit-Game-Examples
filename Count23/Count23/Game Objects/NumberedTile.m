//
//  NumberedTile.m
//  Count23
//
//  Created by Seng Hin Mak on 28/9/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "NumberedTile.h"
#import "SKShapeNode+Utility.h"
#import "UIColor+Count23.h"
#import "Count23.h"
#import "GameScene.h"
#import "ViewController.h"

@interface NumberedTile()
@property (nonatomic) NSNumber *number;
@property (nonatomic) CGFloat width;
@property (nonatomic, strong) SKShapeNode *bg;
@property (nonatomic, strong) SKLabelNode *label;
@end

@implementation NumberedTile

+ (NumberedTile*) tile
{
    return [self tileWithNumber:0];
}

+ (NumberedTile*) tileWithNumber:(NSNumber*)number
{
    return [[self alloc] initWithNumber:number];
}

- (instancetype)initWithNumber:(NSNumber*)number
{
    self = [super init];
    if (self) {
        self.number = number;
        [self setup];
    }
    return self;
}

- (void)setup
{
    self.userInteractionEnabled = YES;
    
    self.width = 80.0f;
    
    self.bg = [SKShapeNode shapeNodeWithSquareOfWidth: self.width];
    self.bg.antialiased = NO;
    self.bg.strokeColor = [UIColor majorColor];
    [self addChild:self.bg];
    
    self.label = [SKLabelNode labelNodeWithFontNamed:@"Helvetica Neue Light"];
    self.label.fontSize = 32;
    self.label.fontColor = [UIColor blackColor];
    self.label.text = [self.number stringValue];
    self.label.horizontalAlignmentMode = SKLabelHorizontalAlignmentModeCenter;
    self.label.verticalAlignmentMode = SKLabelVerticalAlignmentModeCenter;
    self.label.position = CGPointMake(self.width/2, self.width/2);
    [self addChild:self.label];
}

- (void)disable
{
    self.userInteractionEnabled = NO;
}

- (void)hideNumber
{
    self.label.hidden = YES;
}

- (CGRect)rect
{
    return CGRectMake(0, 0, self.width, self.width);
}

- (void)highlight
{
    self.bg.fillColor = [UIColor majorColor];
    self.label.fontColor = [UIColor whiteColor];
}

- (void)unhighlight
{
    self.bg.fillColor = [UIColor whiteColor];
    self.label.fontColor = [UIColor blackColor];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self highlight];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInNode:self];
    
    [self unhighlight];

    if (CGRectContainsPoint(self.rect, point)) {
        Count23 *count23 = [(GameScene*)self.parent count23];
        if ([count23 isNumberMatchNextCount:self.number.intValue]) {
            [self disable];
            [self hideNumber];
            [count23 increaseNextCount];
        }        
    }
}

@end
