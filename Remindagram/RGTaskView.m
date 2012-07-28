//
//  RGTaskView.m
//  Remindagram
//
//  Created by Birk Nilson on 7/28/12.
//  Copyright (c) 2012 Starlock. All rights reserved.
//

#import "RGTaskView.h"

@implementation RGTaskView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
    // Drawing code here.
    [[NSColor redColor] setFill];
    NSLog(@"Draw rect at x: %f, y: %f, width: %f, height: %f", dirtyRect.origin.x, dirtyRect.origin.y, dirtyRect.size.width, dirtyRect.size.height);
    NSRectFill(dirtyRect);
}

@end
