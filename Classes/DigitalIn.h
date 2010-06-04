// **********************************************************************
//
// Copyright (c) 2003-2009 ZeroC, Inc. All rights reserved.
//
// This copy of Ice is licensed to you under the terms described in the
// ICE_TOUCH_LICENSE file included in this distribution.
//
// **********************************************************************

// Ice version 3.3.1
// Generated from file `DigitalIn.ice'

#import <Ice/Config.h>
#import <Ice/Proxy.h>
#import <Ice/Object.h>
#import <Ice/Current.h>
#import <Ice/Exception.h>
#import <Ice/Stream.h>
#import <TeRKCommon.h>

@class TeRKDigitalInController;
@protocol TeRKDigitalInController;

@class TeRKDigitalInControllerPrx;
@protocol TeRKDigitalInControllerPrx;

@interface TeRKDigitalInState : NSObject <NSCopying>
{
    @private
        TeRKBooleanArray *digitalInStates;
}

@property(nonatomic, retain) TeRKBooleanArray *digitalInStates;

-(id) init:(TeRKBooleanArray *)digitalInStates;
+(id) digitalInState:(TeRKBooleanArray *)digitalInStates;
+(id) digitalInState;
// This class also overrides copyWithZone:, hash, and isEqual:
// This class also overrides dealloc.
+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream;
+(id) ice_readWithStream:(id<ICEInputStream>)stream;
@end

@protocol TeRKDigitalInController <TeRKAbstractCommandController>
-(TeRKDigitalInState *) getState:(ICECurrent *)current;
@end

@interface TeRKDigitalInController : ICEObject
+(BOOL)getState___:(id<TeRKDigitalInController>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
@end

@protocol TeRKDigitalInControllerPrx <TeRKAbstractCommandControllerPrx>
-(TeRKDigitalInState *) getState;
-(TeRKDigitalInState *) getState:(ICEContext *)context;
-(BOOL) getState_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_;
-(BOOL) getState_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ context:(ICEContext *)context;
-(BOOL) getState_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_;
-(BOOL) getState_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ context:(ICEContext *)context;
@end

@interface TeRKDigitalInControllerPrx : ICEObjectPrx <TeRKDigitalInControllerPrx>
+(NSString *) ice_staticId;
+(TeRKDigitalInState *) getState___:(ICEObjectPrx <TeRKDigitalInControllerPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) getState_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ prx:(ICEObjectPrx <TeRKDigitalInControllerPrx> *)prx context:(ICEContext *)ctx;
+(void) getState_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
@end
