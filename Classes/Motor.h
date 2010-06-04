// **********************************************************************
//
// Copyright (c) 2003-2009 ZeroC, Inc. All rights reserved.
//
// This copy of Ice is licensed to you under the terms described in the
// ICE_TOUCH_LICENSE file included in this distribution.
//
// **********************************************************************

// Ice version 3.3.1
// Generated from file `Motor.ice'

#import <Ice/Config.h>
#import <Ice/Proxy.h>
#import <Ice/Object.h>
#import <Ice/Current.h>
#import <Ice/Exception.h>
#import <Ice/Stream.h>
#import <TeRKCommon.h>

@class TeRKMotorController;
@protocol TeRKMotorController;

@class TeRKMotorControllerPrx;
@protocol TeRKMotorControllerPrx;

typedef enum
{
    TeRKMotorSpeedControl,
    TeRKMotorPositionControl,
    TeRKMotorOff
} TeRKMotorMode;

typedef NSData TeRKMotorModeArray;
typedef NSMutableData TeRKMutableMotorModeArray;

@interface TeRKMotorException : TeRKTeRKException
-(NSString *) ice_name;
+(id) motorException:(NSString *)reason;
+(id) motorException;
@end

@interface TeRKMotorCommandException : TeRKCommandException
-(NSString *) ice_name;
+(id) motorCommandException:(NSString *)reason;
+(id) motorCommandException;
@end

@interface TeRKMotorBuffer : NSObject <NSCopying>
{
    @private
        TeRKIntArray *values;
}

@property(nonatomic, retain) TeRKIntArray *values;

-(id) init:(TeRKIntArray *)values;
+(id) motorBuffer:(TeRKIntArray *)values;
+(id) motorBuffer;
// This class also overrides copyWithZone:, hash, and isEqual:
// This class also overrides dealloc.
+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream;
+(id) ice_readWithStream:(id<ICEInputStream>)stream;
@end

typedef NSArray TeRKMotorBufferArray;
typedef NSMutableArray TeRKMutableMotorBufferArray;

@interface TeRKMotorState : NSObject <NSCopying>
{
    @private
        TeRKIntArray *motorVelocities;
        TeRKIntArray *motorPositions;
        TeRKIntArray *motorCurrents;
        TeRKIntArray *motorDutyCycles;
        TeRKBooleanArray *motorDone;
}

@property(nonatomic, retain) TeRKIntArray *motorVelocities;
@property(nonatomic, retain) TeRKIntArray *motorPositions;
@property(nonatomic, retain) TeRKIntArray *motorCurrents;
@property(nonatomic, retain) TeRKIntArray *motorDutyCycles;
@property(nonatomic, retain) TeRKBooleanArray *motorDone;

-(id) init:(TeRKIntArray *)motorVelocities motorPositions:(TeRKIntArray *)motorPositions motorCurrents:(TeRKIntArray *)motorCurrents motorDutyCycles:(TeRKIntArray *)motorDutyCycles motorDone:(TeRKBooleanArray *)motorDone;
+(id) motorState:(TeRKIntArray *)motorVelocities motorPositions:(TeRKIntArray *)motorPositions motorCurrents:(TeRKIntArray *)motorCurrents motorDutyCycles:(TeRKIntArray *)motorDutyCycles motorDone:(TeRKBooleanArray *)motorDone;
+(id) motorState;
// This class also overrides copyWithZone:, hash, and isEqual:
// This class also overrides dealloc.
+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream;
+(id) ice_readWithStream:(id<ICEInputStream>)stream;
@end

@interface TeRKMotorCommand : NSObject <NSCopying>
{
    @private
        TeRKBooleanArray *motorMask;
        TeRKMotorModeArray *motorModes;
        TeRKIntArray *motorPositions;
        TeRKIntArray *motorVelocities;
        TeRKIntArray *motorAccelerations;
}

@property(nonatomic, retain) TeRKBooleanArray *motorMask;
@property(nonatomic, retain) TeRKMotorModeArray *motorModes;
@property(nonatomic, retain) TeRKIntArray *motorPositions;
@property(nonatomic, retain) TeRKIntArray *motorVelocities;
@property(nonatomic, retain) TeRKIntArray *motorAccelerations;

-(id) init:(TeRKBooleanArray *)motorMask motorModes:(TeRKMotorModeArray *)motorModes motorPositions:(TeRKIntArray *)motorPositions motorVelocities:(TeRKIntArray *)motorVelocities motorAccelerations:(TeRKIntArray *)motorAccelerations;
+(id) motorCommand:(TeRKBooleanArray *)motorMask motorModes:(TeRKMotorModeArray *)motorModes motorPositions:(TeRKIntArray *)motorPositions motorVelocities:(TeRKIntArray *)motorVelocities motorAccelerations:(TeRKIntArray *)motorAccelerations;
+(id) motorCommand;
// This class also overrides copyWithZone:, hash, and isEqual:
// This class also overrides dealloc.
+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream;
+(id) ice_readWithStream:(id<ICEInputStream>)stream;
@end

@protocol TeRKMotorController <TeRKAbstractCommandController>
-(TeRKMotorState *) execute:(TeRKMotorCommand *)command current:(ICECurrent *)current;
-(ICEInt) getFrequency:(ICECurrent *)current;
-(void) startMotorBufferRecord:(TeRKMutableBooleanArray *)motorMask current:(ICECurrent *)current;
-(void) stopMotorBufferRecord:(TeRKMutableBooleanArray *)motorMask current:(ICECurrent *)current;
-(TeRKMotorBufferArray *) getMotorBuffers:(TeRKMutableBooleanArray *)motorMask current:(ICECurrent *)current;
-(void) setMotorBuffer:(TeRKMutableBooleanArray *)motorMask motorBuffers:(TeRKMutableMotorBufferArray *)motorBuffers current:(ICECurrent *)current;
-(void) playMotorBuffer:(TeRKMutableBooleanArray *)motorMask current:(ICECurrent *)current;
@end

@interface TeRKMotorController : ICEObject
+(BOOL)execute___:(id<TeRKMotorController>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
+(BOOL)getFrequency___:(id<TeRKMotorController>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
+(BOOL)startMotorBufferRecord___:(id<TeRKMotorController>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
+(BOOL)stopMotorBufferRecord___:(id<TeRKMotorController>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
+(BOOL)getMotorBuffers___:(id<TeRKMotorController>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
+(BOOL)setMotorBuffer___:(id<TeRKMotorController>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
+(BOOL)playMotorBuffer___:(id<TeRKMotorController>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
@end

@protocol TeRKMotorControllerPrx <TeRKAbstractCommandControllerPrx>
-(TeRKMotorState *) execute:(TeRKMotorCommand *)command;
-(TeRKMotorState *) execute:(TeRKMotorCommand *)command context:(ICEContext *)context;
-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ command:(TeRKMotorCommand *)command;
-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ command:(TeRKMotorCommand *)command context:(ICEContext *)context;
-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKMotorCommand *)command;
-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKMotorCommand *)command context:(ICEContext *)context;
-(ICEInt) getFrequency;
-(ICEInt) getFrequency:(ICEContext *)context;
-(BOOL) getFrequency_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_;
-(BOOL) getFrequency_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ context:(ICEContext *)context;
-(BOOL) getFrequency_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_;
-(BOOL) getFrequency_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ context:(ICEContext *)context;
-(void) startMotorBufferRecord:(TeRKBooleanArray *)motorMask;
-(void) startMotorBufferRecord:(TeRKBooleanArray *)motorMask context:(ICEContext *)context;
-(BOOL) startMotorBufferRecord_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ motorMask:(TeRKBooleanArray *)motorMask;
-(BOOL) startMotorBufferRecord_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ motorMask:(TeRKBooleanArray *)motorMask context:(ICEContext *)context;
-(BOOL) startMotorBufferRecord_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ motorMask:(TeRKBooleanArray *)motorMask;
-(BOOL) startMotorBufferRecord_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ motorMask:(TeRKBooleanArray *)motorMask context:(ICEContext *)context;
-(void) stopMotorBufferRecord:(TeRKBooleanArray *)motorMask;
-(void) stopMotorBufferRecord:(TeRKBooleanArray *)motorMask context:(ICEContext *)context;
-(BOOL) stopMotorBufferRecord_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ motorMask:(TeRKBooleanArray *)motorMask;
-(BOOL) stopMotorBufferRecord_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ motorMask:(TeRKBooleanArray *)motorMask context:(ICEContext *)context;
-(BOOL) stopMotorBufferRecord_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ motorMask:(TeRKBooleanArray *)motorMask;
-(BOOL) stopMotorBufferRecord_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ motorMask:(TeRKBooleanArray *)motorMask context:(ICEContext *)context;
-(TeRKMutableMotorBufferArray *) getMotorBuffers:(TeRKBooleanArray *)motorMask;
-(TeRKMutableMotorBufferArray *) getMotorBuffers:(TeRKBooleanArray *)motorMask context:(ICEContext *)context;
-(BOOL) getMotorBuffers_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ motorMask:(TeRKBooleanArray *)motorMask;
-(BOOL) getMotorBuffers_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ motorMask:(TeRKBooleanArray *)motorMask context:(ICEContext *)context;
-(BOOL) getMotorBuffers_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ motorMask:(TeRKBooleanArray *)motorMask;
-(BOOL) getMotorBuffers_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ motorMask:(TeRKBooleanArray *)motorMask context:(ICEContext *)context;
-(void) setMotorBuffer:(TeRKBooleanArray *)motorMask motorBuffers:(TeRKMotorBufferArray *)motorBuffers;
-(void) setMotorBuffer:(TeRKBooleanArray *)motorMask motorBuffers:(TeRKMotorBufferArray *)motorBuffers context:(ICEContext *)context;
-(BOOL) setMotorBuffer_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ motorMask:(TeRKBooleanArray *)motorMask motorBuffers:(TeRKMotorBufferArray *)motorBuffers;
-(BOOL) setMotorBuffer_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ motorMask:(TeRKBooleanArray *)motorMask motorBuffers:(TeRKMotorBufferArray *)motorBuffers context:(ICEContext *)context;
-(BOOL) setMotorBuffer_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ motorMask:(TeRKBooleanArray *)motorMask motorBuffers:(TeRKMotorBufferArray *)motorBuffers;
-(BOOL) setMotorBuffer_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ motorMask:(TeRKBooleanArray *)motorMask motorBuffers:(TeRKMotorBufferArray *)motorBuffers context:(ICEContext *)context;
-(void) playMotorBuffer:(TeRKBooleanArray *)motorMask;
-(void) playMotorBuffer:(TeRKBooleanArray *)motorMask context:(ICEContext *)context;
-(BOOL) playMotorBuffer_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ motorMask:(TeRKBooleanArray *)motorMask;
-(BOOL) playMotorBuffer_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ motorMask:(TeRKBooleanArray *)motorMask context:(ICEContext *)context;
-(BOOL) playMotorBuffer_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ motorMask:(TeRKBooleanArray *)motorMask;
-(BOOL) playMotorBuffer_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ motorMask:(TeRKBooleanArray *)motorMask context:(ICEContext *)context;
@end

@interface TeRKMotorControllerPrx : ICEObjectPrx <TeRKMotorControllerPrx>
+(NSString *) ice_staticId;
+(TeRKMotorState *) execute___:(TeRKMotorCommand *)command prx:(ICEObjectPrx <TeRKMotorControllerPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) execute_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKMotorCommand *)command prx:(ICEObjectPrx <TeRKMotorControllerPrx> *)prx context:(ICEContext *)ctx;
+(void) execute_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
+(ICEInt) getFrequency___:(ICEObjectPrx <TeRKMotorControllerPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) getFrequency_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ prx:(ICEObjectPrx <TeRKMotorControllerPrx> *)prx context:(ICEContext *)ctx;
+(void) getFrequency_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
+(void) startMotorBufferRecord___:(TeRKBooleanArray *)motorMask prx:(ICEObjectPrx <TeRKMotorControllerPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) startMotorBufferRecord_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ motorMask:(TeRKBooleanArray *)motorMask prx:(ICEObjectPrx <TeRKMotorControllerPrx> *)prx context:(ICEContext *)ctx;
+(void) startMotorBufferRecord_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
+(void) stopMotorBufferRecord___:(TeRKBooleanArray *)motorMask prx:(ICEObjectPrx <TeRKMotorControllerPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) stopMotorBufferRecord_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ motorMask:(TeRKBooleanArray *)motorMask prx:(ICEObjectPrx <TeRKMotorControllerPrx> *)prx context:(ICEContext *)ctx;
+(void) stopMotorBufferRecord_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
+(TeRKMutableMotorBufferArray *) getMotorBuffers___:(TeRKBooleanArray *)motorMask prx:(ICEObjectPrx <TeRKMotorControllerPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) getMotorBuffers_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ motorMask:(TeRKBooleanArray *)motorMask prx:(ICEObjectPrx <TeRKMotorControllerPrx> *)prx context:(ICEContext *)ctx;
+(void) getMotorBuffers_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
+(void) setMotorBuffer___:(TeRKBooleanArray *)motorMask motorBuffers:(TeRKMotorBufferArray *)motorBuffers prx:(ICEObjectPrx <TeRKMotorControllerPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) setMotorBuffer_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ motorMask:(TeRKBooleanArray *)motorMask motorBuffers:(TeRKMotorBufferArray *)motorBuffers prx:(ICEObjectPrx <TeRKMotorControllerPrx> *)prx context:(ICEContext *)ctx;
+(void) setMotorBuffer_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
+(void) playMotorBuffer___:(TeRKBooleanArray *)motorMask prx:(ICEObjectPrx <TeRKMotorControllerPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) playMotorBuffer_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ motorMask:(TeRKBooleanArray *)motorMask prx:(ICEObjectPrx <TeRKMotorControllerPrx> *)prx context:(ICEContext *)ctx;
+(void) playMotorBuffer_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
@end

@interface TeRKMotorModeHelper : ICEEnumHelper
+(ICEInt) getLimit;
@end

@interface TeRKMotorModeArrayHelper : NSObject
+(id) ice_readWithStream:(id<ICEInputStream>)stream;
+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream;
@end

@interface TeRKMotorBufferArrayHelper : ICESequenceHelper
+(Class) getContained;
@end
