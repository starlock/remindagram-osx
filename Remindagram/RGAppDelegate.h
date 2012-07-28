//
//  RGAppDelegate.h
//  Remindagram
//
//  Created by Birk Nilson on 7/28/12.
//  Copyright (c) 2012 Starlock. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "RGContants.h"

@interface RGAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

- (void)setWindowAppearance;

@end