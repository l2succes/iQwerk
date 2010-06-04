//
//  iQwerkAppDelegate.h
//  iQwerk
//
//  Created by Luc Succes on 5/27/10.
//  Copyright NYU 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ConnectViewController.h"
#import "iQwerk.h"

@interface iQwerkAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ConnectViewController *viewController;
	iQwerk *robot;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ConnectViewController *viewController;
@property (nonatomic, retain) iQwerk *robot;

@end

