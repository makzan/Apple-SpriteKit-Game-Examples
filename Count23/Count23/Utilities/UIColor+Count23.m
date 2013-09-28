//
//  UIColor+Count23.m
//  Count23
//
//  Created by Seng Hin Mak on 28/9/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "UIColor+Count23.h"

@implementation UIColor (Count23)

+ (UIColor*)majorColor
{
    return [self colorWithRed:1.0f green:0 blue:0.4627f alpha:1.0];
}

+ (UIColor*)grayColor
{
    return [self colorWithRed:151/255.0f green:151/255.0f blue:151/255.0f alpha:1];
}

@end
