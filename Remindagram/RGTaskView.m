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
        self.wantsLayer = YES;
        self.layer.masksToBounds = YES;
        self.layer.cornerRadius = 5.0;
    }
    
    return self;
}

#pragma mark -
#pragma mark Model communication
#pragma mark -

- (BOOL)hasTask
{
    // Return false until we have implemented the model logic
    return FALSE;
}

#pragma mark -
#pragma mark Draw
#pragma mark -

- (void)drawRect:(NSRect)dirtyRect
{
    if ([self hasTask]) {
        [self drawRectWithTask:dirtyRect];
    } else {
        [self drawRectWithoutTask:dirtyRect]; 
    }
}

- (void)drawRectWithTask:(NSRect)dirtyRect
{

}

- (void)drawRectWithoutTask:(NSRect)dirtyRect
{
    NSColor *backgroundColor = [NSColor colorWithSRGBRed:kTaskViewBackgroundColorRed green:kTaskViewBackgroundColorGreen blue:kTaskViewBackgroundColorBlue alpha:1.0];
    [backgroundColor setFill];
    NSRectFill(dirtyRect);

    // Initialize an NSImage corresponding to the add task icon
    NSString *filename = [[NSBundle mainBundle] pathForResource:kIconAddTask ofType:@"png"];
    NSImage *icon = [[NSImage alloc] initWithContentsOfFile:filename];

    CGFloat iconWidth = icon.size.width;
    CGFloat iconHeight = icon.size.height;
    CGFloat iconPositionX = (dirtyRect.size.width / 2) - (iconWidth / 2);
    CGFloat iconPositionY = (dirtyRect.size.height / 2) - (iconHeight / 2);

    // Draw the add task icon in calculated rect (horizontally and vertically centralized)
    NSRect iconRect = CGRectMake(iconPositionX, iconPositionY, iconWidth, iconHeight);
    [icon drawInRect:iconRect fromRect:NSZeroRect operation:NSCompositeSourceAtop fraction:1.0];
}

@end
