//
//  RGTaskView.h
//  Remindagram
//
//  Created by Birk Nilson on 7/28/12.
//  Copyright (c) 2012 Starlock. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "RGContants.h"

@interface RGTaskView : NSView


// Model communication
- (BOOL)hasTask;

// Draw operations
- (void)drawRectWithTask:(NSRect)dirtyRect;
- (void)drawRectWithoutTask:(NSRect)dirtyRect;

@end