// **********************************************************************
//
// Copyright (c) 2003-2009 ZeroC, Inc. All rights reserved.
//
// This copy of Ice is licensed to you under the terms described in the
// ICE_TOUCH_LICENSE file included in this distribution.
//
// **********************************************************************

// Ice version 3.3.1
// Generated from file `LED.ice'

#import <Ice/Config.h>
#import <Ice/Proxy.h>
#import <Ice/Object.h>
#import <Ice/Current.h>
#import <Ice/Exception.h>
#import <Ice/Stream.h>
#import <TeRKCommon.h>

@class TeRKLEDController;
@protocol TeRKLEDController;

@class TeRKLEDControllerPrx;
@protocol TeRKLEDControllerPrx;

typedef enum
{
    TeRKLEDOn,
    TeRKLEDOff,
    TeRKLEDBlinking
} TeRKLEDMode;

typedef NSData TeRKLEDModeArray;
typedef NSMutableData TeRKMutableLEDModeArray;

@interface TeRKLEDCommandException : TeRKCommandException
-(NSString *) ice_name;
+(id) lEDCommandException:(NSString *)reason;
+(id) lEDCommandException;
@end

@interface TeRKLEDCommand : NSObject <NSCopying>
{
    @private
        TeRKBooleanArray *ledMask;
        TeRKLEDModeArray *ledModes;
}

@property(nonatomic, retain) TeRKBooleanArray *ledMask;
@property(nonatomic, retain) TeRKLEDModeArray *ledModes;

-(id) init:(TeRKBooleanArray *)ledMask ledModes:(TeRKLEDModeArray *)ledModes;
+(id) lEDCommand:(TeRKBooleanArray *)ledMask ledModes:(TeRKLEDModeArray *)ledModes;
+(id) lEDCommand;
// This class also overrides copyWithZone:, hash, and isEqual:
// This class also overrides dealloc.
+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream;
+(id) ice_readWithStream:(id<ICEInputStream>)stream;
@end

@protocol TeRKLEDController <TeRKAbstractCommandController>
-(void) execute:(TeRKLEDCommand *)command current:(ICECurrent *)current;
@end

@interface TeRKLEDController : ICEObject
+(BOOL)execute___:(id<TeRKLEDController>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
@end

@protocol TeRKLEDControllerPrx <TeRKAbstractCommandControllerPrx>
-(void) execute:(TeRKLEDCommand *)command;
-(void) execute:(TeRKLEDCommand *)command context:(ICEContext *)context;
-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ command:(TeRKLEDCommand *)command;
-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ command:(TeRKLEDCommand *)command context:(ICEContext *)context;
-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKLEDCommand *)command;
-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKLEDCommand *)command context:(ICEContext *)context;
@end

@interface TeRKLEDControllerPrx : ICEObjectPrx <TeRKLEDControllerPrx>
+(NSString *) ice_staticId;
+(void) execute___:(TeRKLEDCommand *)command prx:(ICEObjectPrx <TeRKLEDControllerPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) execute_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKLEDCommand *)command prx:(ICEObjectPrx <TeRKLEDControllerPrx> *)prx context:(ICEContext *)ctx;
+(void) execute_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
@end

@interface TeRKLEDModeHelper : ICEEnumHelper
+(ICEInt) getLimit;
@end

@interface TeRKLEDModeArrayHelper : NSObject
+(id) ice_readWithStream:(id<ICEInputStream>)stream;
+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream;
@end
