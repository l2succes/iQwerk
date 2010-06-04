// **********************************************************************
//
// Copyright (c) 2003-2009 ZeroC, Inc. All rights reserved.
//
// This copy of Ice is licensed to you under the terms described in the
// ICE_TOUCH_LICENSE file included in this distribution.
//
// **********************************************************************

// Ice version 3.3.1
// Generated from file `Servo.ice'

#import <Ice/Config.h>
#import <Ice/Proxy.h>
#import <Ice/Object.h>
#import <Ice/Current.h>
#import <Ice/Exception.h>
#import <Ice/Stream.h>
#import <TeRKCommon.h>

@class TeRKServoController;
@protocol TeRKServoController;

@class TeRKServoControllerPrx;
@protocol TeRKServoControllerPrx;

typedef enum
{
    TeRKServoMotorSpeedControl,
    TeRKServoMotorPositionControl,
    TeRKServoOff
} TeRKServoMode;

typedef NSData TeRKServoModeArray;
typedef NSMutableData TeRKMutableServoModeArray;

@interface TeRKBounds : NSObject <NSCopying>
{
    @private
        ICEInt min;
        ICEInt max;
}

@property(nonatomic, assign) ICEInt min;
@property(nonatomic, assign) ICEInt max;

-(id) init:(ICEInt)min max:(ICEInt)max;
+(id) bounds:(ICEInt)min max:(ICEInt)max;
+(id) bounds;
// This class also overrides copyWithZone:, hash, and isEqual:
+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream;
+(id) ice_readWithStream:(id<ICEInputStream>)stream;
@end

typedef NSArray TeRKBoundsArray;
typedef NSMutableArray TeRKMutableBoundsArray;

@interface TeRKServoCommandException : TeRKCommandException
-(NSString *) ice_name;
+(id) servoCommandException:(NSString *)reason;
+(id) servoCommandException;
@end

@interface TeRKServoConfig : NSObject <NSCopying>
{
    @private
        TeRKBounds *rangeBounds;
        ICEInt initialPosition;
}

@property(nonatomic, retain) TeRKBounds *rangeBounds;
@property(nonatomic, assign) ICEInt initialPosition;

-(id) init:(TeRKBounds *)rangeBounds initialPosition:(ICEInt)initialPosition;
+(id) servoConfig:(TeRKBounds *)rangeBounds initialPosition:(ICEInt)initialPosition;
+(id) servoConfig;
// This class also overrides copyWithZone:, hash, and isEqual:
// This class also overrides dealloc.
+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream;
+(id) ice_readWithStream:(id<ICEInputStream>)stream;
@end

typedef NSArray TeRKServoConfigArray;
typedef NSMutableArray TeRKMutableServoConfigArray;

@interface TeRKServoState : NSObject <NSCopying>
{
    @private
        TeRKIntArray *servoPositions;
}

@property(nonatomic, retain) TeRKIntArray *servoPositions;

-(id) init:(TeRKIntArray *)servoPositions;
+(id) servoState:(TeRKIntArray *)servoPositions;
+(id) servoState;
// This class also overrides copyWithZone:, hash, and isEqual:
// This class also overrides dealloc.
+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream;
+(id) ice_readWithStream:(id<ICEInputStream>)stream;
@end

@interface TeRKServoCommand : NSObject <NSCopying>
{
    @private
        TeRKBooleanArray *servoMask;
        TeRKServoModeArray *servoModes;
        TeRKIntArray *servoPositions;
        TeRKIntArray *servoSpeeds;
}

@property(nonatomic, retain) TeRKBooleanArray *servoMask;
@property(nonatomic, retain) TeRKServoModeArray *servoModes;
@property(nonatomic, retain) TeRKIntArray *servoPositions;
@property(nonatomic, retain) TeRKIntArray *servoSpeeds;

-(id) init:(TeRKBooleanArray *)servoMask servoModes:(TeRKServoModeArray *)servoModes servoPositions:(TeRKIntArray *)servoPositions servoSpeeds:(TeRKIntArray *)servoSpeeds;
+(id) servoCommand:(TeRKBooleanArray *)servoMask servoModes:(TeRKServoModeArray *)servoModes servoPositions:(TeRKIntArray *)servoPositions servoSpeeds:(TeRKIntArray *)servoSpeeds;
+(id) servoCommand;
// This class also overrides copyWithZone:, hash, and isEqual:
// This class also overrides dealloc.
+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream;
+(id) ice_readWithStream:(id<ICEInputStream>)stream;
@end

@protocol TeRKServoController <TeRKAbstractCommandController>
-(TeRKServoState *) execute:(TeRKServoCommand *)command current:(ICECurrent *)current;
-(void) setBounds:(TeRKMutableBooleanArray *)servoMask servoBounds:(TeRKMutableBoundsArray *)servoBounds current:(ICECurrent *)current;
-(TeRKBoundsArray *) getBounds:(ICECurrent *)current;
-(void) setConfigs:(TeRKMutableBooleanArray *)servoMask servoConfigs:(TeRKMutableServoConfigArray *)servoConfigs current:(ICECurrent *)current;
-(TeRKServoConfigArray *) getConfigs:(ICECurrent *)current;
@end

@interface TeRKServoController : ICEObject
+(BOOL)execute___:(id<TeRKServoController>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
+(BOOL)setBounds___:(id<TeRKServoController>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
+(BOOL)getBounds___:(id<TeRKServoController>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
+(BOOL)setConfigs___:(id<TeRKServoController>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
+(BOOL)getConfigs___:(id<TeRKServoController>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
@end

@protocol TeRKServoControllerPrx <TeRKAbstractCommandControllerPrx>
-(TeRKServoState *) execute:(TeRKServoCommand *)command;
-(TeRKServoState *) execute:(TeRKServoCommand *)command context:(ICEContext *)context;
-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ command:(TeRKServoCommand *)command;
-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ command:(TeRKServoCommand *)command context:(ICEContext *)context;
-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKServoCommand *)command;
-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKServoCommand *)command context:(ICEContext *)context;
-(void) setBounds:(TeRKBooleanArray *)servoMask servoBounds:(TeRKBoundsArray *)servoBounds;
-(void) setBounds:(TeRKBooleanArray *)servoMask servoBounds:(TeRKBoundsArray *)servoBounds context:(ICEContext *)context;
-(BOOL) setBounds_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ servoMask:(TeRKBooleanArray *)servoMask servoBounds:(TeRKBoundsArray *)servoBounds;
-(BOOL) setBounds_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ servoMask:(TeRKBooleanArray *)servoMask servoBounds:(TeRKBoundsArray *)servoBounds context:(ICEContext *)context;
-(BOOL) setBounds_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ servoMask:(TeRKBooleanArray *)servoMask servoBounds:(TeRKBoundsArray *)servoBounds;
-(BOOL) setBounds_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ servoMask:(TeRKBooleanArray *)servoMask servoBounds:(TeRKBoundsArray *)servoBounds context:(ICEContext *)context;
-(TeRKMutableBoundsArray *) getBounds;
-(TeRKMutableBoundsArray *) getBounds:(ICEContext *)context;
-(BOOL) getBounds_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_;
-(BOOL) getBounds_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ context:(ICEContext *)context;
-(BOOL) getBounds_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_;
-(BOOL) getBounds_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ context:(ICEContext *)context;
-(void) setConfigs:(TeRKBooleanArray *)servoMask servoConfigs:(TeRKServoConfigArray *)servoConfigs;
-(void) setConfigs:(TeRKBooleanArray *)servoMask servoConfigs:(TeRKServoConfigArray *)servoConfigs context:(ICEContext *)context;
-(BOOL) setConfigs_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ servoMask:(TeRKBooleanArray *)servoMask servoConfigs:(TeRKServoConfigArray *)servoConfigs;
-(BOOL) setConfigs_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ servoMask:(TeRKBooleanArray *)servoMask servoConfigs:(TeRKServoConfigArray *)servoConfigs context:(ICEContext *)context;
-(BOOL) setConfigs_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ servoMask:(TeRKBooleanArray *)servoMask servoConfigs:(TeRKServoConfigArray *)servoConfigs;
-(BOOL) setConfigs_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ servoMask:(TeRKBooleanArray *)servoMask servoConfigs:(TeRKServoConfigArray *)servoConfigs context:(ICEContext *)context;
-(TeRKMutableServoConfigArray *) getConfigs;
-(TeRKMutableServoConfigArray *) getConfigs:(ICEContext *)context;
-(BOOL) getConfigs_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_;
-(BOOL) getConfigs_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ context:(ICEContext *)context;
-(BOOL) getConfigs_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_;
-(BOOL) getConfigs_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ context:(ICEContext *)context;
@end

@interface TeRKServoControllerPrx : ICEObjectPrx <TeRKServoControllerPrx>
+(NSString *) ice_staticId;
+(TeRKServoState *) execute___:(TeRKServoCommand *)command prx:(ICEObjectPrx <TeRKServoControllerPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) execute_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKServoCommand *)command prx:(ICEObjectPrx <TeRKServoControllerPrx> *)prx context:(ICEContext *)ctx;
+(void) execute_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
+(void) setBounds___:(TeRKBooleanArray *)servoMask servoBounds:(TeRKBoundsArray *)servoBounds prx:(ICEObjectPrx <TeRKServoControllerPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) setBounds_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ servoMask:(TeRKBooleanArray *)servoMask servoBounds:(TeRKBoundsArray *)servoBounds prx:(ICEObjectPrx <TeRKServoControllerPrx> *)prx context:(ICEContext *)ctx;
+(void) setBounds_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
+(TeRKMutableBoundsArray *) getBounds___:(ICEObjectPrx <TeRKServoControllerPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) getBounds_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ prx:(ICEObjectPrx <TeRKServoControllerPrx> *)prx context:(ICEContext *)ctx;
+(void) getBounds_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
+(void) setConfigs___:(TeRKBooleanArray *)servoMask servoConfigs:(TeRKServoConfigArray *)servoConfigs prx:(ICEObjectPrx <TeRKServoControllerPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) setConfigs_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ servoMask:(TeRKBooleanArray *)servoMask servoConfigs:(TeRKServoConfigArray *)servoConfigs prx:(ICEObjectPrx <TeRKServoControllerPrx> *)prx context:(ICEContext *)ctx;
+(void) setConfigs_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
+(TeRKMutableServoConfigArray *) getConfigs___:(ICEObjectPrx <TeRKServoControllerPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) getConfigs_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ prx:(ICEObjectPrx <TeRKServoControllerPrx> *)prx context:(ICEContext *)ctx;
+(void) getConfigs_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
@end

@interface TeRKServoModeHelper : ICEEnumHelper
+(ICEInt) getLimit;
@end

@interface TeRKServoModeArrayHelper : NSObject
+(id) ice_readWithStream:(id<ICEInputStream>)stream;
+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream;
@end

@interface TeRKBoundsArrayHelper : ICESequenceHelper
+(Class) getContained;
@end

@interface TeRKServoConfigArrayHelper : ICESequenceHelper
+(Class) getContained;
@end
