// **********************************************************************
//
// Copyright (c) 2003-2009 ZeroC, Inc. All rights reserved.
//
// This copy of Ice is licensed to you under the terms described in the
// ICE_TOUCH_LICENSE file included in this distribution.
//
// **********************************************************************

// Ice version 3.3.1
// Generated from file `VelocityControllableMotor.ice'

#import <Ice/Config.h>
#import <Ice/Proxy.h>
#import <Ice/Object.h>
#import <Ice/Current.h>
#import <Ice/Exception.h>
#import <Ice/Stream.h>
#import <TeRKCommon.h>

@class TeRKmotorVelocityControllableMotorService;
@protocol TeRKmotorVelocityControllableMotorService;

@class TeRKmotorVelocityControllableMotorServicePrx;
@protocol TeRKmotorVelocityControllableMotorServicePrx;

@interface TeRKmotorVelocityControllableMotorCommand : NSObject <NSCopying>
{
    @private
        TeRKBooleanArray *motorMask;
        TeRKIntArray *motorVelocities;
}

@property(nonatomic, retain) TeRKBooleanArray *motorMask;
@property(nonatomic, retain) TeRKIntArray *motorVelocities;

-(id) init:(TeRKBooleanArray *)motorMask motorVelocities:(TeRKIntArray *)motorVelocities;
+(id) velocityControllableMotorCommand:(TeRKBooleanArray *)motorMask motorVelocities:(TeRKIntArray *)motorVelocities;
+(id) velocityControllableMotorCommand;
// This class also overrides copyWithZone:, hash, and isEqual:
// This class also overrides dealloc.
+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream;
+(id) ice_readWithStream:(id<ICEInputStream>)stream;
@end

@protocol TeRKmotorVelocityControllableMotorService <TeRKAbstractCommandController>
-(TeRKIntArray *) execute:(TeRKmotorVelocityControllableMotorCommand *)command current:(ICECurrent *)current;
@end

@interface TeRKmotorVelocityControllableMotorService : ICEObject
+(BOOL)execute___:(id<TeRKmotorVelocityControllableMotorService>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
@end

@protocol TeRKmotorVelocityControllableMotorServicePrx <TeRKAbstractCommandControllerPrx>
-(TeRKMutableIntArray *) execute:(TeRKmotorVelocityControllableMotorCommand *)command;
-(TeRKMutableIntArray *) execute:(TeRKmotorVelocityControllableMotorCommand *)command context:(ICEContext *)context;
-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ command:(TeRKmotorVelocityControllableMotorCommand *)command;
-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ command:(TeRKmotorVelocityControllableMotorCommand *)command context:(ICEContext *)context;
-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKmotorVelocityControllableMotorCommand *)command;
-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKmotorVelocityControllableMotorCommand *)command context:(ICEContext *)context;
@end

@interface TeRKmotorVelocityControllableMotorServicePrx : ICEObjectPrx <TeRKmotorVelocityControllableMotorServicePrx>
+(NSString *) ice_staticId;
+(TeRKMutableIntArray *) execute___:(TeRKmotorVelocityControllableMotorCommand *)command prx:(ICEObjectPrx <TeRKmotorVelocityControllableMotorServicePrx> *)prx context:(ICEContext *)ctx;
+(BOOL) execute_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKmotorVelocityControllableMotorCommand *)command prx:(ICEObjectPrx <TeRKmotorVelocityControllableMotorServicePrx> *)prx context:(ICEContext *)ctx;
+(void) execute_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
@end
