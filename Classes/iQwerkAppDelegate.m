//
//  iQwerkAppDelegate.m
//  iQwerk
//
//  Created by Luc Succes on 5/27/10.
//  Copyright NYU 2010. All rights reserved.
//

#import "iQwerkAppDelegate.h"
#import "ConnectViewController.h"

@implementation iQwerkAppDelegate

@synthesize robot;
@synthesize window;
@synthesize viewController;

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    iQwerk* temp = [[iQwerk alloc] init];
	self.robot = temp;
	viewController.robot = temp;
	[temp release];
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}

- (void)applicationWillTerminate:(UIApplication *)application {
	[robot disconnect];
}

- (void)dealloc {
	[robot release];
    [viewController release];
    [window release];
    [super dealloc];
}


@end
