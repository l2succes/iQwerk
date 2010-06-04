//
//  iQwerkViewController.m
//  iQwerk
//
//  Created by Luc Succes on 5/27/10.
//  Copyright NYU 2010. All rights reserved.
//

#import <Ice/Ice.h>
#import "iQwerkViewController.h"
#import "TeRKCommon.h"
#import "Qwerk.h"
#import "Video.h"


@implementation iQwerkViewController

@synthesize robot;
@synthesize upArrow;
@synthesize downArrow;
@synthesize leftArrow;
@synthesize rightArrow;
@synthesize imageView;


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	[activity setHidesWhenStopped:YES];
	robot.view = self.imageView;
	[robot startCamera];
    [super viewDidLoad];
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	int up = [[event touchesForView:upArrow] count], 
		down = [[event touchesForView:downArrow] count],
		left = [[event touchesForView:leftArrow] count],
		right = [[event touchesForView:rightArrow] count];
	if(up) {
		[robot move:Up atSpeed:Slow];
	}else if(down) {
		[robot move:Down atSpeed:Slow];
	}else if(left) {
		[robot move:Left atSpeed:Slow];
	}else {
		[robot move:Right atSpeed:Slow];
	}
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
	[robot stopMotors];
}

// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    //return (interfaceOrientation == UIInterfaceOrientationPortrait);
	return YES;
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	if(interfaceOrientation == UIInterfaceOrientationPortrait) {
		imageView.contentMode = UIViewContentModeScaleAspectFill;
	}
	else {
		imageView.contentMode = UIViewContentModeScaleAspectFit;
	}
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[imageView release];
	[activity release];
    [super dealloc];
}

@end
