//
//  RGAppDelegate.h
//  Remindagram
//
//  Created by Birk Nilson on 7/28/12.
//  Copyright (c) 2012 Starlock. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "RGContants.h"
#import "RGTaskView.h"

@interface RGAppDelegate : NSObject <NSApplicationDelegate>
{
    NSWindow *window;
    
    // Let column task views
    RGTaskView *topLeftTaskView;
    RGTaskView *middleLeftTaskView;
    RGTaskView *bottomLeftTaskView;

    RGTaskView *topRightTaskView;
    RGTaskView *bottomRightTaskView;
}

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet RGTaskView *topLeftTaskView;
@property (assign) IBOutlet RGTaskView *middleLeftTaskView;
@property (assign) IBOutlet RGTaskView *bottomLeftTaskView;

@property (assign) IBOutlet RGTaskView *topRightTaskView;
@property (assign) IBOutlet RGTaskView *bottomRightTaskView;


- (void)initWindowAppearance;

@end