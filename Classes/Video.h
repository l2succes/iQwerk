// **********************************************************************
//
// Copyright (c) 2003-2009 ZeroC, Inc. All rights reserved.
//
// This copy of Ice is licensed to you under the terms described in the
// ICE_TOUCH_LICENSE file included in this distribution.
//
// **********************************************************************

// Ice version 3.3.1
// Generated from file `Video.ice'

#import <Ice/Config.h>
#import <Ice/Proxy.h>
#import <Ice/Object.h>
#import <Ice/Current.h>
#import <Ice/Exception.h>
#import <Ice/Stream.h>
#import <TeRKCommon.h>

@class TeRKVideoStreamerClient;
@protocol TeRKVideoStreamerClient;

@class TeRKVideoStreamerServer;
@protocol TeRKVideoStreamerServer;

@class TeRKVideoStreamerClientPrx;
@protocol TeRKVideoStreamerClientPrx;

@class TeRKVideoStreamerServerPrx;
@protocol TeRKVideoStreamerServerPrx;

typedef enum
{
    TeRKImageJPEG,
    TeRKImageRGB24,
    TeRKImageRGB32,
    TeRKImageGray8,
    TeRKImageYUV420P,
    TeRKImageUnknown
} TeRKImageFormat;

@interface TeRKVideoException : TeRKTeRKException
-(NSString *) ice_name;
+(id) videoException:(NSString *)reason;
+(id) videoException;
@end

@interface TeRKImage : NSObject <NSCopying>
{
    @private
        ICEInt height;
        ICEInt width;
        ICEInt frameNum;
        TeRKImageFormat format;
        TeRKByteArray *data;
}

@property(nonatomic, assign) ICEInt height;
@property(nonatomic, assign) ICEInt width;
@property(nonatomic, assign) ICEInt frameNum;
@property(nonatomic, assign) TeRKImageFormat format;
@property(nonatomic, retain) TeRKByteArray *data;

-(id) init:(ICEInt)height width:(ICEInt)width frameNum:(ICEInt)frameNum format:(TeRKImageFormat)format data:(TeRKByteArray *)data;
+(id) image:(ICEInt)height width:(ICEInt)width frameNum:(ICEInt)frameNum format:(TeRKImageFormat)format data:(TeRKByteArray *)data;
+(id) image;
// This class also overrides copyWithZone:, hash, and isEqual:
// This class also overrides dealloc.
+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream;
+(id) ice_readWithStream:(id<ICEInputStream>)stream;
@end

@protocol TeRKVideoStreamerClient
-(void) newFrame:(TeRKImage *)frame current:(ICECurrent *)current;
@end

@interface TeRKVideoStreamerClient : ICEObject
+(BOOL)newFrame___:(id<TeRKVideoStreamerClient>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
@end

@protocol TeRKVideoStreamerServer <TeRKAbstractCommandController>
-(void) startVideoStream:(ICECurrent *)current;
-(void) stopVideoStream:(ICECurrent *)current;
-(ICEInt) startCamera:(ICECurrent *)current;
-(ICEInt) stopCamera:(ICECurrent *)current;
-(TeRKImage *) getFrame:(ICEInt)frameNumber current:(ICECurrent *)current;
@end

@interface TeRKVideoStreamerServer : ICEObject
+(BOOL)startVideoStream___:(id<TeRKVideoStreamerServer>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
+(BOOL)stopVideoStream___:(id<TeRKVideoStreamerServer>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
+(BOOL)startCamera___:(id<TeRKVideoStreamerServer>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
+(BOOL)stopCamera___:(id<TeRKVideoStreamerServer>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
+(BOOL)getFrame___:(id<TeRKVideoStreamerServer>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
@end

@protocol TeRKVideoStreamerClientPrx <ICEObjectPrx>
-(void) newFrame:(TeRKImage *)frame;
-(void) newFrame:(TeRKImage *)frame context:(ICEContext *)context;
@end

@protocol TeRKVideoStreamerServerPrx <TeRKAbstractCommandControllerPrx>
-(void) startVideoStream;
-(void) startVideoStream:(ICEContext *)context;
-(BOOL) startVideoStream_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_;
-(BOOL) startVideoStream_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ context:(ICEContext *)context;
-(BOOL) startVideoStream_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_;
-(BOOL) startVideoStream_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ context:(ICEContext *)context;
-(void) stopVideoStream;
-(void) stopVideoStream:(ICEContext *)context;
-(BOOL) stopVideoStream_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_;
-(BOOL) stopVideoStream_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ context:(ICEContext *)context;
-(BOOL) stopVideoStream_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_;
-(BOOL) stopVideoStream_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ context:(ICEContext *)context;
-(ICEInt) startCamera;
-(ICEInt) startCamera:(ICEContext *)context;
-(BOOL) startCamera_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_;
-(BOOL) startCamera_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ context:(ICEContext *)context;
-(BOOL) startCamera_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_;
-(BOOL) startCamera_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ context:(ICEContext *)context;
-(ICEInt) stopCamera;
-(ICEInt) stopCamera:(ICEContext *)context;
-(BOOL) stopCamera_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_;
-(BOOL) stopCamera_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ context:(ICEContext *)context;
-(BOOL) stopCamera_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_;
-(BOOL) stopCamera_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ context:(ICEContext *)context;
-(TeRKImage *) getFrame:(ICEInt)frameNumber;
-(TeRKImage *) getFrame:(ICEInt)frameNumber context:(ICEContext *)context;
-(BOOL) getFrame_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ frameNumber:(ICEInt)frameNumber;
-(BOOL) getFrame_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ frameNumber:(ICEInt)frameNumber context:(ICEContext *)context;
-(BOOL) getFrame_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ frameNumber:(ICEInt)frameNumber;
-(BOOL) getFrame_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ frameNumber:(ICEInt)frameNumber context:(ICEContext *)context;
@end

@interface TeRKVideoStreamerClientPrx : ICEObjectPrx <TeRKVideoStreamerClientPrx>
+(NSString *) ice_staticId;
+(void) newFrame___:(TeRKImage *)frame prx:(ICEObjectPrx <TeRKVideoStreamerClientPrx> *)prx context:(ICEContext *)ctx;
@end

@interface TeRKVideoStreamerServerPrx : ICEObjectPrx <TeRKVideoStreamerServerPrx>
+(NSString *) ice_staticId;
+(void) startVideoStream___:(ICEObjectPrx <TeRKVideoStreamerServerPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) startVideoStream_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ prx:(ICEObjectPrx <TeRKVideoStreamerServerPrx> *)prx context:(ICEContext *)ctx;
+(void) startVideoStream_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
+(void) stopVideoStream___:(ICEObjectPrx <TeRKVideoStreamerServerPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) stopVideoStream_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ prx:(ICEObjectPrx <TeRKVideoStreamerServerPrx> *)prx context:(ICEContext *)ctx;
+(void) stopVideoStream_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
+(ICEInt) startCamera___:(ICEObjectPrx <TeRKVideoStreamerServerPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) startCamera_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ prx:(ICEObjectPrx <TeRKVideoStreamerServerPrx> *)prx context:(ICEContext *)ctx;
+(void) startCamera_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
+(ICEInt) stopCamera___:(ICEObjectPrx <TeRKVideoStreamerServerPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) stopCamera_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ prx:(ICEObjectPrx <TeRKVideoStreamerServerPrx> *)prx context:(ICEContext *)ctx;
+(void) stopCamera_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
+(TeRKImage *) getFrame___:(ICEInt)frameNumber prx:(ICEObjectPrx <TeRKVideoStreamerServerPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) getFrame_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ frameNumber:(ICEInt)frameNumber prx:(ICEObjectPrx <TeRKVideoStreamerServerPrx> *)prx context:(ICEContext *)ctx;
+(void) getFrame_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
@end

@interface TeRKImageFormatHelper : ICEEnumHelper
+(ICEInt) getLimit;
@end
