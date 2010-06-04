//
//  iQwerkViewController.h
//  iQwerk
//
//  Created by Luc Succes on 5/27/10.
//  Copyright NYU 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iQwerk.h"

@interface iQwerkViewController : UIViewController {
	
@private
	UIImageView* imageView;
	UIImageView* upArrow;
	UIImageView* downArrow;
	UIImageView* leftArrow;
	UIImageView* rightArrow;
	UIActivityIndicatorView* activity;
	iQwerk* robot;
}

-(void)updateImageView:(UIImage*)frame;
-(void)triggerMove:(id)sender;

@property (nonatomic, retain) iQwerk* robot;
@property (nonatomic, retain) IBOutlet UIImageView* imageView;
@property (nonatomic, retain) IBOutlet UIImageView* upArrow;
@property (nonatomic, retain) IBOutlet UIImageView* downArrow;
@property (nonatomic, retain) IBOutlet UIImageView* leftArrow;
@property (nonatomic, retain) IBOutlet UIImageView* rightArrow;




@end

