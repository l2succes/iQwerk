//
//  Connect.h
//  iQwerk
//
//  Created by Luc Succes on 5/31/10.
//  Copyright 2010 NYU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iQwerk.h"

@class ICEException;

@interface ConnectViewController : UIViewController {
	iQwerk* robot;
@private
	IBOutlet UITextField* serverNameTextField;
	IBOutlet UIButton* connectButton;
}

-(void)triggerConnection:(id)sender;
-(void)exception:(ICEException*)ex;

@property (nonatomic, retain) iQwerk* robot;

@end
