//
//  CustomView.m
//  camera-preview
//
//  Created by Ben Schinn on 7/10/20.
//  Copyright © 2020 Ben Schinn. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    CGContextRef context = [[NSGraphicsContext currentContext] CGContext];
    CGContextSetRGBFillColor(context, 0, 0, 0, 0.50);
    CGContextFillRect(context, NSRectToCGRect(dirtyRect));
    
    self.layer.borderColor = [[NSColor whiteColor] CGColor];
    self.layer.borderWidth = 2.0F;
}

@end
