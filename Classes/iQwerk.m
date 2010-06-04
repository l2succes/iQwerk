//
//  Qwerk.m
//  iQwerk
//
//  Created by Luc Succes on 5/31/10.
//  Copyright 2010 NYU. All rights reserved.
//

#import <Ice/Ice.h>
#import "iQwerk.h"
#import "iQwerkViewController.h"
#import "TeRKCommon.h"

@interface UpdateFrameOperation : NSOperation
{
    iQwerk* robot;
}

-(id)initWithQwerk:(iQwerk*)theQwerk;

@property (nonatomic, retain) iQwerk* robot;

@end

@implementation UpdateFrameOperation

@synthesize robot;

- (id)initWithQwerk:(iQwerk*)theQwerk
{
    self = [super init];
    if (self != nil)
		self.robot = theQwerk;
    return self;
}

- (void)main
{
		@try
		{
			UIImage* frame = [UIImage imageWithData:[[robot.videoPrx getFrame:0] data]];
			[self.robot performSelectorOnMainThread:@selector(updateFrame:) 
											withObject:frame 
										   waitUntilDone:YES];
		}
		@catch (ICELocalException *e) {
			//break;
		}
		@finally
		{
			[robot release];
		}
}

- (void)dealloc
{
	[robot dealloc];
    [super dealloc];
}

@end


@implementation iQwerk

static iQwerk *shared;

@synthesize communicator;
@synthesize qwerkPrx;
@synthesize videoPrx;
@synthesize ledPrx;
@synthesize motorPrx;
@synthesize queue;
@synthesize view;

-(id)init {
	if(shared) {
		[self retain];
		return shared;
	}
	self = [super init];
	if(self != nil) {
		@try {
			self.communicator = [ICEUtil createCommunicator];
			self.qwerkPrx = [TeRKQwerkPrx new];
			self.videoPrx = [TeRKVideoStreamerServerPrx new];
			self.ledPrx = [TeRKLEDControllerPrx new];
			self.motorPrx = [TeRKMotorControllerPrx new];
			self.queue = [NSOperationQueue new];
			[queue setMaxConcurrentOperationCount:1];
			
		}
		@catch(NSException* ex) {
			NSLog([NSString stringWithFormat:@"%@", ex]);
		}
	}
	shared = self;
	return self;
}

-(ICELocalException*)connect:(NSString*)ip_address {
	NSString	
	*connectString = @"%@:tcp -h %@ -p 10101",
	*qwerkStr = [NSString stringWithFormat:connectString, @"'::TeRK::TerkUser'", ip_address],
	*videoStr = [NSString stringWithFormat:connectString, @"'::TeRK::VideoStreamerServer'", ip_address],
	*ledStr = [NSString stringWithFormat:connectString, @"'::TeRK::LEDController'", ip_address],
	*motorStr = [NSString stringWithFormat:connectString, @"'::TeRK::MotorController'", ip_address];
	
	@try {
		self.qwerkPrx = [TeRKQwerkPrx uncheckedCast:[communicator stringToProxy:qwerkStr]];
		self.videoPrx = [TeRKVideoStreamerServerPrx uncheckedCast:[communicator stringToProxy:videoStr]];
		self.ledPrx = [TeRKLEDControllerPrx uncheckedCast:[communicator stringToProxy:ledStr]];
		self.motorPrx = [TeRKMotorControllerPrx uncheckedCast:[communicator stringToProxy:motorStr]];
		[self.videoPrx startCamera];
	}
	@catch (ICELocalException* ex) {
		return ex;
	}
	return nil;
}

-(void)disconnect {
	[self.videoPrx stopCamera];
	[communicator destroy];
}

+(id)shared {
	if(!shared)
		[[iQwerk alloc] init];
	return shared;
}


-(void)move:(QwerkDirection)direction atSpeed:(QwerkSpeed)theSpeed {
	int velocities[] = {0, 0, 0, 0}; 
	int speed;
	switch (theSpeed) {
		case Slow:
			speed = MOTOR_VELOCITY_SLOW;
			break;
 		case Fast:
			speed = MOTOR_VELOCITY_FAST;
			break;
		case Lightning:
			speed = MOTOR_VELOCITY_LIGHTNING;
			break;
	}
	switch (direction) {
		case Up:
			velocities[0] = -speed;
			velocities[1] = speed;
			break;
		case Down:
			velocities[0] = speed;
			velocities[1] = -speed;
			break;
		case Left:
			velocities[0] = speed;
			velocities[1] = speed;
			break;
		case Right:
			velocities[0] = -speed;
			velocities[1] = -speed;
			break;
	}
	
	const int accelerations[] = {16000, 16000, 16000, 16000};
	const int positions[] = {0, 0, 0, 0};
	const BOOL masks[] = {YES, YES, YES, YES};
	const TeRKMotorMode modes[] = {TeRKMotorSpeedControl, TeRKMotorSpeedControl, TeRKMotorSpeedControl, TeRKMotorSpeedControl};
	TeRKMotorCommand* command = [[[TeRKMotorCommand alloc] init:[NSData dataWithBytes:masks length:sizeof(masks)]
													 motorModes:[NSData dataWithBytes:modes length:sizeof(modes)]
												 motorPositions:[NSData dataWithBytes:positions length:sizeof(positions)]
												motorVelocities:[NSData dataWithBytes:velocities length:sizeof(velocities)]
											 motorAccelerations:[NSData dataWithBytes:accelerations length:sizeof(accelerations)]] retain];
	[motorPrx execute:command];
	[command release];
}


-(void)stopMotors {
	const int velocities[] = {0, 0, 0, 0};
	const int accelerations[] = {16000, 16000, 16000, 16000};
	const int positions[] = {0, 0, 0, 0};
	const BOOL masks[] = {YES, YES, YES, YES};
	const TeRKMotorMode modes[] = {TeRKMotorOff, TeRKMotorOff, TeRKMotorOff, TeRKMotorOff};
	TeRKMotorCommand* command = [[[TeRKMotorCommand alloc] init:[NSData dataWithBytes:masks length:sizeof(masks)]
													 motorModes:[NSData dataWithBytes:modes length:sizeof(modes)]
												 motorPositions:[NSData dataWithBytes:positions length:sizeof(positions)]
												motorVelocities:[NSData dataWithBytes:velocities length:sizeof(velocities)]
											 motorAccelerations:[NSData dataWithBytes:accelerations length:sizeof(accelerations)]] retain];
	[motorPrx execute:command];
	[command release];
}

-(void)moveBackward:(NSString*)speed {
	
}

-(void)startCamera {
	UpdateFrameOperation* op = [[[UpdateFrameOperation alloc] initWithQwerk:self] retain];
	[queue addOperation:op];
	[op release];
}

-(void)updateFrame:(UIImage*)image {
	[self.view setImage:image];
	UpdateFrameOperation* op = [[[UpdateFrameOperation alloc] initWithQwerk:self] retain];
	[queue addOperation:op];
	[op release];
}
	 
-(void)dealloc {
	[communicator release];
	[qwerkPrx release];
	[videoPrx release];
	[ledPrx release];
	[super dealloc];
}
@end
