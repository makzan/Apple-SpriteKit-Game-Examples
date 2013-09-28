//
//  SKShapeNode+Utility.m
//  Count23
//
//  Created by Seng Hin Mak on 28/9/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "SKShapeNode+Utility.h"

@implementation SKShapeNode (Utility)

// inspired from shapeNodeWithCircleOfRadius: https://gist.github.com/schwa/5788859
+ (instancetype)shapeNodeWithSquareOfWidth: (CGFloat)width
{
    SKShapeNode *node = [SKShapeNode node];
    CGPathRef path = CGPathCreateWithRect(CGRectMake(0, 0, width, width), NULL);
    node.path = path;
    CGPathRelease(path);
    return node;
}

@end
