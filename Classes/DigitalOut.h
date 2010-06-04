// **********************************************************************
//
// Copyright (c) 2003-2009 ZeroC, Inc. All rights reserved.
//
// This copy of Ice is licensed to you under the terms described in the
// ICE_TOUCH_LICENSE file included in this distribution.
//
// **********************************************************************

// Ice version 3.3.1
// Generated from file `DigitalOut.ice'

#import <Ice/Config.h>
#import <Ice/Proxy.h>
#import <Ice/Object.h>
#import <Ice/Current.h>
#import <Ice/Exception.h>
#import <Ice/Stream.h>
#import <TeRKCommon.h>

@class TeRKDigitalOutController;
@protocol TeRKDigitalOutController;

@class TeRKDigitalOutControllerPrx;
@protocol TeRKDigitalOutControllerPrx;

@interface TeRKDigitalOutCommandException : TeRKCommandException
-(NSString *) ice_name;
+(id) digitalOutCommandException:(NSString *)reason;
+(id) digitalOutCommandException;
@end

@interface TeRKDigitalOutCommand : NSObject <NSCopying>
{
    @private
        TeRKBooleanArray *digitalOutMask;
        TeRKBooleanArray *digitalOutValues;
}

@property(nonatomic, retain) TeRKBooleanArray *digitalOutMask;
@property(nonatomic, retain) TeRKBooleanArray *digitalOutValues;

-(id) init:(TeRKBooleanArray *)digitalOutMask digitalOutValues:(TeRKBooleanArray *)digitalOutValues;
+(id) digitalOutCommand:(TeRKBooleanArray *)digitalOutMask digitalOutValues:(TeRKBooleanArray *)digitalOutValues;
+(id) digitalOutCommand;
// This class also overrides copyWithZone:, hash, and isEqual:
// This class also overrides dealloc.
+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream;
+(id) ice_readWithStream:(id<ICEInputStream>)stream;
@end

@protocol TeRKDigitalOutController <TeRKAbstractCommandController>
-(void) execute:(TeRKDigitalOutCommand *)command current:(ICECurrent *)current;
@end

@interface TeRKDigitalOutController : ICEObject
+(BOOL)execute___:(id<TeRKDigitalOutController>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
@end

@protocol TeRKDigitalOutControllerPrx <TeRKAbstractCommandControllerPrx>
-(void) execute:(TeRKDigitalOutCommand *)command;
-(void) execute:(TeRKDigitalOutCommand *)command context:(ICEContext *)context;
-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ command:(TeRKDigitalOutCommand *)command;
-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ command:(TeRKDigitalOutCommand *)command context:(ICEContext *)context;
-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKDigitalOutCommand *)command;
-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKDigitalOutCommand *)command context:(ICEContext *)context;
@end

@interface TeRKDigitalOutControllerPrx : ICEObjectPrx <TeRKDigitalOutControllerPrx>
+(NSString *) ice_staticId;
+(void) execute___:(TeRKDigitalOutCommand *)command prx:(ICEObjectPrx <TeRKDigitalOutControllerPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) execute_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKDigitalOutCommand *)command prx:(ICEObjectPrx <TeRKDigitalOutControllerPrx> *)prx context:(ICEContext *)ctx;
+(void) execute_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
@end
