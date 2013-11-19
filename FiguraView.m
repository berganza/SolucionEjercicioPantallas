//
//  CircleView.m
//  EjemploCALayer
//
//  Created by LLBER on 09/08/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import "FiguraView.h"

@implementation FiguraView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.opaque = NO;
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    
    [[UIColor orangeColor] setFill];
    [[UIBezierPath bezierPathWithOvalInRect:self.bounds] fill];
    // Drawing code
}


@end
