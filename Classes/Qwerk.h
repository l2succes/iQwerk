// **********************************************************************
//
// Copyright (c) 2003-2009 ZeroC, Inc. All rights reserved.
//
// This copy of Ice is licensed to you under the terms described in the
// ICE_TOUCH_LICENSE file included in this distribution.
//
// **********************************************************************

// Ice version 3.3.1
// Generated from file `Qwerk.ice'

#import <Ice/Config.h>
#import <Ice/Proxy.h>
#import <Ice/Object.h>
#import <Ice/Current.h>
#import <Ice/Exception.h>
#import <Ice/Stream.h>
#import <AnalogIn.h>
#import <Audio.h>
#import <DigitalIn.h>
#import <DigitalOut.h>
#import <LED.h>
#import <Motor.h>
#import <Servo.h>
#import <TeRKCommon.h>

@class TeRKQwerk;
@protocol TeRKQwerk;

@class TeRKQwerkPrx;
@protocol TeRKQwerkPrx;

@interface TeRKBatteryState : NSObject <NSCopying>
{
    @private
        ICEInt batteryVoltage;
}

@property(nonatomic, assign) ICEInt batteryVoltage;

-(id) init:(ICEInt)batteryVoltage;
+(id) batteryState:(ICEInt)batteryVoltage;
+(id) batteryState;
// This class also overrides copyWithZone:, hash, and isEqual:
+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream;
+(id) ice_readWithStream:(id<ICEInputStream>)stream;
@end

@interface TeRKButtonState : NSObject <NSCopying>
{
    @private
        TeRKBooleanArray *buttonStates;
}

@property(nonatomic, retain) TeRKBooleanArray *buttonStates;

-(id) init:(TeRKBooleanArray *)buttonStates;
+(id) buttonState:(TeRKBooleanArray *)buttonStates;
+(id) buttonState;
// This class also overrides copyWithZone:, hash, and isEqual:
// This class also overrides dealloc.
+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream;
+(id) ice_readWithStream:(id<ICEInputStream>)stream;
@end

@interface TeRKQwerkState : NSObject <NSCopying>
{
    @private
        TeRKAnalogInState *analogIn;
        TeRKBatteryState *battery;
        TeRKButtonState *button;
        TeRKDigitalInState *digitalIn;
        TeRKMotorState *motor;
        TeRKServoState *servo;
}

@property(nonatomic, retain) TeRKAnalogInState *analogIn;
@property(nonatomic, retain) TeRKBatteryState *battery;
@property(nonatomic, retain) TeRKButtonState *button;
@property(nonatomic, retain) TeRKDigitalInState *digitalIn;
@property(nonatomic, retain) TeRKMotorState *motor;
@property(nonatomic, retain) TeRKServoState *servo;

-(id) init:(TeRKAnalogInState *)analogIn battery:(TeRKBatteryState *)battery button:(TeRKButtonState *)button digitalIn:(TeRKDigitalInState *)digitalIn motor:(TeRKMotorState *)motor servo:(TeRKServoState *)servo;
+(id) qwerkState:(TeRKAnalogInState *)analogIn battery:(TeRKBatteryState *)battery button:(TeRKButtonState *)button digitalIn:(TeRKDigitalInState *)digitalIn motor:(TeRKMotorState *)motor servo:(TeRKServoState *)servo;
+(id) qwerkState;
// This class also overrides copyWithZone:, hash, and isEqual:
// This class also overrides dealloc.
+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream;
+(id) ice_readWithStream:(id<ICEInputStream>)stream;
@end

@interface TeRKQwerkCommand : NSObject <NSCopying>
{
    @private
        TeRKAudioCommand *audioCmd;
        TeRKDigitalOutCommand *digitalOutCmd;
        TeRKLEDCommand *ledCmd;
        TeRKMotorCommand *motorCmd;
        TeRKServoCommand *servoCmd;
}

@property(nonatomic, retain) TeRKAudioCommand *audioCmd;
@property(nonatomic, retain) TeRKDigitalOutCommand *digitalOutCmd;
@property(nonatomic, retain) TeRKLEDCommand *ledCmd;
@property(nonatomic, retain) TeRKMotorCommand *motorCmd;
@property(nonatomic, retain) TeRKServoCommand *servoCmd;

-(id) init:(TeRKAudioCommand *)audioCmd digitalOutCmd:(TeRKDigitalOutCommand *)digitalOutCmd ledCmd:(TeRKLEDCommand *)ledCmd motorCmd:(TeRKMotorCommand *)motorCmd servoCmd:(TeRKServoCommand *)servoCmd;
+(id) qwerkCommand:(TeRKAudioCommand *)audioCmd digitalOutCmd:(TeRKDigitalOutCommand *)digitalOutCmd ledCmd:(TeRKLEDCommand *)ledCmd motorCmd:(TeRKMotorCommand *)motorCmd servoCmd:(TeRKServoCommand *)servoCmd;
+(id) qwerkCommand;
// This class also overrides copyWithZone:, hash, and isEqual:
// This class also overrides dealloc.
+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream;
+(id) ice_readWithStream:(id<ICEInputStream>)stream;
@end

@protocol TeRKQwerk <TeRKTerkUser>
-(TeRKQwerkState *) getState:(ICECurrent *)current;
-(TeRKQwerkState *) execute:(TeRKQwerkCommand *)command current:(ICECurrent *)current;
-(TeRKQwerkState *) emergencyStop:(ICECurrent *)current;
-(NSDictionary *) getCommandControllerTypeToProxyIdentityMap:(ICECurrent *)current;
@end

@interface TeRKQwerk : ICEObject
+(BOOL)getState___:(id<TeRKQwerk>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
+(BOOL)execute___:(id<TeRKQwerk>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
+(BOOL)emergencyStop___:(id<TeRKQwerk>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
+(BOOL)getCommandControllerTypeToProxyIdentityMap___:(id<TeRKQwerk>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
@end

@protocol TeRKQwerkPrx <TeRKTerkUserPrx>
-(TeRKQwerkState *) getState;
-(TeRKQwerkState *) getState:(ICEContext *)context;
-(BOOL) getState_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_;
-(BOOL) getState_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ context:(ICEContext *)context;
-(BOOL) getState_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_;
-(BOOL) getState_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ context:(ICEContext *)context;
-(TeRKQwerkState *) execute:(TeRKQwerkCommand *)command;
-(TeRKQwerkState *) execute:(TeRKQwerkCommand *)command context:(ICEContext *)context;
-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ command:(TeRKQwerkCommand *)command;
-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ command:(TeRKQwerkCommand *)command context:(ICEContext *)context;
-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKQwerkCommand *)command;
-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKQwerkCommand *)command context:(ICEContext *)context;
-(TeRKQwerkState *) emergencyStop;
-(TeRKQwerkState *) emergencyStop:(ICEContext *)context;
-(BOOL) emergencyStop_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_;
-(BOOL) emergencyStop_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ context:(ICEContext *)context;
-(BOOL) emergencyStop_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_;
-(BOOL) emergencyStop_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ context:(ICEContext *)context;
-(TeRKMutableProxyTypeIdToIdentityMap *) getCommandControllerTypeToProxyIdentityMap;
-(TeRKMutableProxyTypeIdToIdentityMap *) getCommandControllerTypeToProxyIdentityMap:(ICEContext *)context;
-(BOOL) getCommandControllerTypeToProxyIdentityMap_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_;
-(BOOL) getCommandControllerTypeToProxyIdentityMap_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ context:(ICEContext *)context;
-(BOOL) getCommandControllerTypeToProxyIdentityMap_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_;
-(BOOL) getCommandControllerTypeToProxyIdentityMap_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ context:(ICEContext *)context;
@end

@interface TeRKQwerkPrx : ICEObjectPrx <TeRKQwerkPrx>
+(NSString *) ice_staticId;
+(TeRKQwerkState *) getState___:(ICEObjectPrx <TeRKQwerkPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) getState_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ prx:(ICEObjectPrx <TeRKQwerkPrx> *)prx context:(ICEContext *)ctx;
+(void) getState_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
+(TeRKQwerkState *) execute___:(TeRKQwerkCommand *)command prx:(ICEObjectPrx <TeRKQwerkPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) execute_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKQwerkCommand *)command prx:(ICEObjectPrx <TeRKQwerkPrx> *)prx context:(ICEContext *)ctx;
+(void) execute_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
+(TeRKQwerkState *) emergencyStop___:(ICEObjectPrx <TeRKQwerkPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) emergencyStop_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ prx:(ICEObjectPrx <TeRKQwerkPrx> *)prx context:(ICEContext *)ctx;
+(void) emergencyStop_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
+(TeRKMutableProxyTypeIdToIdentityMap *) getCommandControllerTypeToProxyIdentityMap___:(ICEObjectPrx <TeRKQwerkPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) getCommandControllerTypeToProxyIdentityMap_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ prx:(ICEObjectPrx <TeRKQwerkPrx> *)prx context:(ICEContext *)ctx;
+(void) getCommandControllerTypeToProxyIdentityMap_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
@end
