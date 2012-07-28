//
//  RGAppDelegate.m
//  Remindagram
//
//  Created by Birk Nilson on 7/28/12.
//  Copyright (c) 2012 Starlock. All rights reserved.
//

#import "RGAppDelegate.h"

@implementation RGAppDelegate


- (void)awakeFromNib
{
    [self setWindowAppearance];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

#pragma mark -
#pragma mark UI
#pragma mark -

- (void)setWindowAppearance
{
    // Set custom background color to the main window
    [_window setBackgroundColor:[NSColor colorWithSRGBRed:kWindowBackgroundColorRed
                                                    green:kWindowBackgroundColorGreen
                                                     blue:kWindowBackgroundColorBlue
                                                    alpha:1.0]];
}


@end
