// **********************************************************************
//
// Copyright (c) 2003-2009 ZeroC, Inc. All rights reserved.
//
// This copy of Ice is licensed to you under the terms described in the
// ICE_TOUCH_LICENSE file included in this distribution.
//
// **********************************************************************

// Ice version 3.3.1
// Generated from file `AnalogIn.ice'

#import <Ice/Config.h>
#import <Ice/Proxy.h>
#import <Ice/Object.h>
#import <Ice/Current.h>
#import <Ice/Exception.h>
#import <Ice/Stream.h>
#import <TeRKCommon.h>

@class TeRKAnalogInController;
@protocol TeRKAnalogInController;

@class TeRKAnalogInControllerPrx;
@protocol TeRKAnalogInControllerPrx;

@interface TeRKAnalogInState : NSObject <NSCopying>
{
    @private
        TeRKShortArray *analogInValues;
}

@property(nonatomic, retain) TeRKShortArray *analogInValues;

-(id) init:(TeRKShortArray *)analogInValues;
+(id) analogInState:(TeRKShortArray *)analogInValues;
+(id) analogInState;
// This class also overrides copyWithZone:, hash, and isEqual:
// This class also overrides dealloc.
+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream;
+(id) ice_readWithStream:(id<ICEInputStream>)stream;
@end

@protocol TeRKAnalogInController <TeRKAbstractCommandController>
-(TeRKAnalogInState *) getState:(ICECurrent *)current;
@end

@interface TeRKAnalogInController : ICEObject
+(BOOL)getState___:(id<TeRKAnalogInController>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
@end

@protocol TeRKAnalogInControllerPrx <TeRKAbstractCommandControllerPrx>
-(TeRKAnalogInState *) getState;
-(TeRKAnalogInState *) getState:(ICEContext *)context;
-(BOOL) getState_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_;
-(BOOL) getState_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ context:(ICEContext *)context;
-(BOOL) getState_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_;
-(BOOL) getState_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ context:(ICEContext *)context;
@end

@interface TeRKAnalogInControllerPrx : ICEObjectPrx <TeRKAnalogInControllerPrx>
+(NSString *) ice_staticId;
+(TeRKAnalogInState *) getState___:(ICEObjectPrx <TeRKAnalogInControllerPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) getState_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ prx:(ICEObjectPrx <TeRKAnalogInControllerPrx> *)prx context:(ICEContext *)ctx;
+(void) getState_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
@end
