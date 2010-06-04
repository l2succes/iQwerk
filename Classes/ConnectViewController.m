//
//  Connect.m
//  iQwerk
//
//  Created by Luc Succes on 5/31/10.
//  Copyright 2010 NYU. All rights reserved.
//

#import "ConnectViewController.h"
#import "iQwerkViewController.h"
#import <Ice/Ice.h>

@implementation ConnectViewController

@synthesize robot;

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

-(void)triggerConnection:(id)sender {
	NSString* ip_address = [serverNameTextField text];
	ICELocalException* status = [robot connect:ip_address];
	if(!status) {
		iQwerkViewController* qwerkView = [[iQwerkViewController alloc] init];
		[qwerkView setRobot:robot];
		[self presentModalViewController:qwerkView animated:YES];
		[qwerkView release];
	}
	else
		[self exception:status];
}

-(void)exception:(ICEException*) ex
{  
	
    NSString* s = [NSString stringWithFormat:@"%@", ex];
    // open an alert with just an OK button
    UIAlertView *alert = [[[UIAlertView alloc] initWithTitle:@"Error"
                                                     message:s
                                                    delegate:self
                                           cancelButtonTitle:@"OK"
                                           otherButtonTitles:nil] autorelease];
    [alert show];
}

- (void)dealloc {
	[robot release];
	[serverNameTextField release];
	[connectButton release];
    [super dealloc];
}


@end
