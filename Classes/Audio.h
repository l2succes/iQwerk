// **********************************************************************
//
// Copyright (c) 2003-2009 ZeroC, Inc. All rights reserved.
//
// This copy of Ice is licensed to you under the terms described in the
// ICE_TOUCH_LICENSE file included in this distribution.
//
// **********************************************************************

// Ice version 3.3.1
// Generated from file `Audio.ice'

#import <Ice/Config.h>
#import <Ice/Proxy.h>
#import <Ice/Object.h>
#import <Ice/Current.h>
#import <Ice/Exception.h>
#import <Ice/Stream.h>
#import <TeRKCommon.h>

@class TeRKAudioController;
@protocol TeRKAudioController;

@class TeRKAudioControllerPrx;
@protocol TeRKAudioControllerPrx;

typedef enum
{
    TeRKAudioTone,
    TeRKAudioClip
} TeRKAudioMode;

@interface TeRKAudioCommandException : TeRKCommandException
-(NSString *) ice_name;
+(id) audioCommandException:(NSString *)reason;
+(id) audioCommandException;
@end

@interface TeRKAudioCommandQueueFullException : TeRKAudioCommandException
-(NSString *) ice_name;
+(id) audioCommandQueueFullException:(NSString *)reason;
+(id) audioCommandQueueFullException;
@end

@interface TeRKAudioFileTooLargeException : TeRKAudioCommandException
-(NSString *) ice_name;
+(id) audioFileTooLargeException:(NSString *)reason;
+(id) audioFileTooLargeException;
@end

@interface TeRKAudioCommand : NSObject <NSCopying>
{
    @private
        TeRKAudioMode mode;
        ICEInt frequency;
        ICEByte amplitude;
        ICEInt duration;
        TeRKByteArray *sound;
}

@property(nonatomic, assign) TeRKAudioMode mode;
@property(nonatomic, assign) ICEInt frequency;
@property(nonatomic, assign) ICEByte amplitude;
@property(nonatomic, assign) ICEInt duration;
@property(nonatomic, retain) TeRKByteArray *sound;

-(id) init:(TeRKAudioMode)mode frequency:(ICEInt)frequency amplitude:(ICEByte)amplitude duration:(ICEInt)duration sound:(TeRKByteArray *)sound;
+(id) audioCommand:(TeRKAudioMode)mode frequency:(ICEInt)frequency amplitude:(ICEByte)amplitude duration:(ICEInt)duration sound:(TeRKByteArray *)sound;
+(id) audioCommand;
// This class also overrides copyWithZone:, hash, and isEqual:
// This class also overrides dealloc.
+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream;
+(id) ice_readWithStream:(id<ICEInputStream>)stream;
@end

@protocol TeRKAudioController <TeRKAbstractCommandController>
-(void) execute:(TeRKAudioCommand *)command current:(ICECurrent *)current;
@end

@interface TeRKAudioController : ICEObject
+(BOOL)execute___:(id<TeRKAudioController>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
@end

@protocol TeRKAudioControllerPrx <TeRKAbstractCommandControllerPrx>
-(void) execute:(TeRKAudioCommand *)command;
-(void) execute:(TeRKAudioCommand *)command context:(ICEContext *)context;
-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ command:(TeRKAudioCommand *)command;
-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ command:(TeRKAudioCommand *)command context:(ICEContext *)context;
-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKAudioCommand *)command;
-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKAudioCommand *)command context:(ICEContext *)context;
@end

@interface TeRKAudioControllerPrx : ICEObjectPrx <TeRKAudioControllerPrx>
+(NSString *) ice_staticId;
+(void) execute___:(TeRKAudioCommand *)command prx:(ICEObjectPrx <TeRKAudioControllerPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) execute_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKAudioCommand *)command prx:(ICEObjectPrx <TeRKAudioControllerPrx> *)prx context:(ICEContext *)ctx;
+(void) execute_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
@end

@interface TeRKAudioModeHelper : ICEEnumHelper
+(ICEInt) getLimit;
@end
