//
//  Qwerk.h
//  iQwerk
//
//  Created by Luc Succes on 5/31/10.
//  Copyright 2010 NYU. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Qwerk.h"
#import "Video.h"
#import "Motor.h"
#import "LED.h"

#define MOTOR_VELOCITY_SLOW			7500
#define MOTOR_VELOCITY_FAST			15000
#define MOTOR_VELOCITY_LIGHTNING	20500


typedef enum {
	Up,
	Down,
	Left,
	Right
} QwerkDirection;

typedef enum {
	Slow,
	Fast,
	Lightning,
	Stop
} QwerkSpeed;

@interface iQwerk : NSObject {
	id<TeRKVideoStreamerServerPrx> videoPrx;
	id<TeRKQwerkPrx> qwerkPrx;
	id<TeRKLEDControllerPrx> ledPrx;
	id<TeRKMotorControllerPrx> motorPrx;
	NSOperationQueue* queue;
	id<ICECommunicator> communicator;
	UIImageView* view;
}

-(ICELocalException*)connect:(NSString*)ip_address;
-(void)move:(QwerkDirection)direction atSpeed:(QwerkSpeed)theSpeed;
-(void)stopMotors;
-(void)disconnect;
-(void)startCamera;
-(void)updateFrame:(UIImage*)image;
+(id)shared;

@property (nonatomic, retain) id<ICECommunicator> communicator;
@property (nonatomic, retain) id<TeRKVideoStreamerServerPrx> videoPrx;
@property (nonatomic, retain) id<TeRKQwerkPrx> qwerkPrx;
@property (nonatomic, retain) id<TeRKLEDControllerPrx> ledPrx;
@property (nonatomic, retain) id<TeRKMotorControllerPrx> motorPrx;
@property (nonatomic, retain) NSOperationQueue* queue;
@property (nonatomic, retain) UIImageView* view;


@end
