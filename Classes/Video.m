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

#import <Ice/LocalException.h>
#import <Ice/Stream.h>
#import <Ice/Internal.h>
#import <Video.h>

#import <objc/message.h>

@implementation TeRKVideoException

-(NSString *) ice_name
{
    return @"TeRK::VideoException";
}

+(id) videoException:(NSString *)reason_p
{
    TeRKVideoException *s__ = [(TeRKVideoException *)[TeRKVideoException alloc] init:reason_p];
    [s__ autorelease];
    return s__;
}

+(id) videoException
{
    TeRKVideoException *s__ = [[TeRKVideoException alloc] init];
    [s__ autorelease];
    return s__;
}

-(void) write__:(id<ICEOutputStream>)os_
{
    [os_ writeString:@"::TeRK::VideoException"];
    [os_ startSlice];
    [os_ endSlice];
    [super write__:os_];
}

-(void) read__:(id<ICEInputStream>)is_ readTypeId:(BOOL)rid_
{
    if(rid_)
    {
        [[is_ readString] release];
    }
    [is_ startSlice];
    [is_ endSlice];
    [super read__:is_ readTypeId:YES];
}
@end

@implementation TeRKImage

@synthesize height;
@synthesize width;
@synthesize frameNum;
@synthesize format;
@synthesize data;

-(id) init:(ICEInt)height_p width:(ICEInt)width_p frameNum:(ICEInt)frameNum_p format:(TeRKImageFormat)format_p data:(TeRKByteArray *)data_p
{
    if(![super init])
    {
        return nil;
    }
    height = height_p;
    width = width_p;
    frameNum = frameNum_p;
    format = format_p;
    data = [data_p retain];
    return self;
}

+(id) image:(ICEInt)height_p width:(ICEInt)width_p frameNum:(ICEInt)frameNum_p format:(TeRKImageFormat)format_p data:(TeRKByteArray *)data_p
{
    TeRKImage *s__ = [(TeRKImage* )[TeRKImage alloc] init:height_p width:width_p frameNum:frameNum_p format:format_p data:data_p];
    [s__ autorelease];
    return s__;
}

+(id) image
{
    TeRKImage *s__ = [[TeRKImage alloc] init];
    [s__ autorelease];
    return s__;
}

-(id) copyWithZone:(NSZone *)zone_p
{
    return [(TeRKImage *)[[self class] allocWithZone:zone_p] init:height width:width frameNum:frameNum format:format data:data];
}

-(NSUInteger) hash
{
    NSUInteger h_ = 0;
    h_ = (h_ << 1) ^ height;
    h_ = (h_ << 1) ^ width;
    h_ = (h_ << 1) ^ frameNum;
    h_ = (h_ << 1) ^ format;
    h_ = (h_ << 1) ^ [data hash];
    return h_;
}

-(BOOL) isEqual:(id)o_
{
    if(self == o_)
    {
        return YES;
    }
    if(!o_ || ![o_ isKindOfClass:[self class]])
    {
        return NO;
    }
    TeRKImage *obj_ = (TeRKImage *)o_;
    if(height != obj_->height)
    {
        return NO;
    }
    if(width != obj_->width)
    {
        return NO;
    }
    if(frameNum != obj_->frameNum)
    {
        return NO;
    }
    if(format != obj_->format)
    {
        return NO;
    }
    if(!data)
    {
        if(obj_->data)
        {
            return NO;
        }
    }
    else
    {
        if(![data isEqual:obj_->data])
        {
            return NO;
        }
    }
    return YES;
}

-(void) dealloc;
{
    [data release];
    [super dealloc];
}

+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)os_
{
    TeRKImage* p = (TeRKImage*)obj;
    if(p == nil)
    {
        p = [[[self class] alloc] init];
    }
    @try
    {
        [os_ writeInt:p->height];
        [os_ writeInt:p->width];
        [os_ writeInt:p->frameNum];
        [os_ writeEnumerator:p->format limit:6];
        [os_ writeByteSeq:p->data];
    }
    @finally
    {
        if(obj == nil)
        {
            [p release];
        }
    }
}

+(id) ice_readWithStream:(id<ICEInputStream>)is_
{
    TeRKImage* p = [[[self class] alloc] init];
    @try
    {
        p->height = [is_ readInt];
        p->width = [is_ readInt];
        p->frameNum = [is_ readInt];
        p->format = [is_ readEnumerator:6];
        p->data = [is_ readByteSeq];
    }
    @catch(NSException *ex)
    {
        [p release];
        @throw ex;
    }
    return p;
}
@end

@implementation TeRKVideoStreamerClient

+(id)objectWithDelegate:(id)delegate
{
    return [[[TeRKVideoStreamerClient alloc] initWithDelegate:delegate] autorelease];
}

-(void) write__:(id<ICEOutputStream>)os_
{
    [os_ writeTypeId:@"::TeRK::VideoStreamerClient"];
    [os_ startSlice];
    [os_ endSlice];
    [super write__:os_];
}

-(void) read__:(id<ICEInputStream>)is_ readTypeId:(BOOL)rid_
{
    if(rid_)
    {
        [[is_ readTypeId] release];
    }
    [is_ startSlice];
    [is_ endSlice];
    [super read__:is_ readTypeId:YES];
}

static NSString *TeRKVideoStreamerClient_ids__[] = 
{
    @"::Ice::Object",
    @"::TeRK::VideoStreamerClient"
};

+(BOOL)newFrame___:(id<TeRKVideoStreamerClient>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(newFrame:current:), current);
    TeRKImage *frame = nil;
    @try
    {
        frame = [TeRKImage ice_readWithStream:is_];
        [target newFrame:frame current:current];
    }
    @finally
    {
        [(id<NSObject>)frame release];
    }
    return YES;
}

static NSString *TeRKVideoStreamerClient_all__[] =
{
    @"ice_id",
    @"ice_ids",
    @"ice_isA",
    @"ice_ping",
    @"newFrame"
};

-(BOOL) dispatch__:(ICECurrent *)current is:(id<ICEInputStream>)is os:(id<ICEOutputStream>)os
{
    id target__ = [self target__];
    switch(ICEInternalLookupString(TeRKVideoStreamerClient_all__, sizeof(TeRKVideoStreamerClient_all__) / sizeof(NSString*), current.operation))
    {
        case 0:
            return [ICEObject ice_id___:(id<ICEObject>)self current:current is:is os:os];
        case 1:
            return [ICEObject ice_ids___:(id<ICEObject>)self current:current is:is os:os];
        case 2:
            return [ICEObject ice_isA___:(id<ICEObject>)self current:current is:is os:os];
        case 3:
            return [ICEObject ice_ping___:(id<ICEObject>)self current:current is:is os:os];
        case 4:
            return [TeRKVideoStreamerClient newFrame___:(id<TeRKVideoStreamerClient>)target__ current:current is:is os:os];
        default:
            @throw [ICEOperationNotExistException operationNotExistException:__FILE__
                                                                             line:__LINE__
                                                                             id_:current.id_
                                                                             facet:current.facet
                                                                             operation:current.operation];
    }
}

+(NSString **) staticIds__:(int*)count idIndex:(int*)idx
{
    *count = sizeof(TeRKVideoStreamerClient_ids__) / sizeof(NSString *);
    *idx = 1;
    return TeRKVideoStreamerClient_ids__;
}
@end

@implementation TeRKVideoStreamerServer

+(id)objectWithDelegate:(id)delegate
{
    return [[[TeRKVideoStreamerServer alloc] initWithDelegate:delegate] autorelease];
}

-(void) write__:(id<ICEOutputStream>)os_
{
    [os_ writeTypeId:@"::TeRK::VideoStreamerServer"];
    [os_ startSlice];
    [os_ endSlice];
    [super write__:os_];
}

-(void) read__:(id<ICEInputStream>)is_ readTypeId:(BOOL)rid_
{
    if(rid_)
    {
        [[is_ readTypeId] release];
    }
    [is_ startSlice];
    [is_ endSlice];
    [super read__:is_ readTypeId:YES];
}

static NSString *TeRKVideoStreamerServer_ids__[] = 
{
    @"::Ice::Object",
    @"::TeRK::AbstractCommandController",
    @"::TeRK::PropertyManager",
    @"::TeRK::VideoStreamerServer"
};

+(BOOL)startVideoStream___:(id<TeRKVideoStreamerServer>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICEIdempotent, @selector(startVideoStream:), current);
    @try
    {
        [target startVideoStream:current];
    }
    @catch(TeRKVideoException *ex)
    {
        [os_ writeException:ex];
        return NO;
    }
    @finally
    {
    }
    return YES;
}

+(BOOL)stopVideoStream___:(id<TeRKVideoStreamerServer>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICEIdempotent, @selector(stopVideoStream:), current);
    @try
    {
        [target stopVideoStream:current];
    }
    @catch(TeRKVideoException *ex)
    {
        [os_ writeException:ex];
        return NO;
    }
    @finally
    {
    }
    return YES;
}

+(BOOL)startCamera___:(id<TeRKVideoStreamerServer>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICEIdempotent, @selector(startCamera:), current);
    @try
    {
        ICEInt ret_ = [target startCamera:current];
        [os_ writeInt:ret_];
    }
    @catch(TeRKVideoException *ex)
    {
        [os_ writeException:ex];
        return NO;
    }
    @finally
    {
    }
    return YES;
}

+(BOOL)stopCamera___:(id<TeRKVideoStreamerServer>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICEIdempotent, @selector(stopCamera:), current);
    @try
    {
        ICEInt ret_ = [target stopCamera:current];
        [os_ writeInt:ret_];
    }
    @catch(TeRKVideoException *ex)
    {
        [os_ writeException:ex];
        return NO;
    }
    @finally
    {
    }
    return YES;
}

+(BOOL)getFrame___:(id<TeRKVideoStreamerServer>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(getFrame:current:), current);
    ICEInt frameNumber;
    @try
    {
        frameNumber = [is_ readInt];
        TeRKImage *ret_ = [target getFrame:frameNumber current:current];
        [TeRKImage ice_writeWithStream:ret_ stream:os_];
    }
    @catch(TeRKVideoException *ex)
    {
        [os_ writeException:ex];
        return NO;
    }
    @finally
    {
    }
    return YES;
}

static NSString *TeRKVideoStreamerServer_all__[] =
{
    @"getFrame",
    @"getProperties",
    @"getProperty",
    @"getPropertyKeys",
    @"ice_id",
    @"ice_ids",
    @"ice_isA",
    @"ice_ping",
    @"setProperty",
    @"startCamera",
    @"startVideoStream",
    @"stopCamera",
    @"stopVideoStream"
};

-(BOOL) dispatch__:(ICECurrent *)current is:(id<ICEInputStream>)is os:(id<ICEOutputStream>)os
{
    id target__ = [self target__];
    switch(ICEInternalLookupString(TeRKVideoStreamerServer_all__, sizeof(TeRKVideoStreamerServer_all__) / sizeof(NSString*), current.operation))
    {
        case 0:
            return [TeRKVideoStreamerServer getFrame___:(id<TeRKVideoStreamerServer>)target__ current:current is:is os:os];
        case 1:
            return [TeRKPropertyManager getProperties___:(id<TeRKPropertyManager>)target__ current:current is:is os:os];
        case 2:
            return [TeRKPropertyManager getProperty___:(id<TeRKPropertyManager>)target__ current:current is:is os:os];
        case 3:
            return [TeRKPropertyManager getPropertyKeys___:(id<TeRKPropertyManager>)target__ current:current is:is os:os];
        case 4:
            return [ICEObject ice_id___:(id<ICEObject>)self current:current is:is os:os];
        case 5:
            return [ICEObject ice_ids___:(id<ICEObject>)self current:current is:is os:os];
        case 6:
            return [ICEObject ice_isA___:(id<ICEObject>)self current:current is:is os:os];
        case 7:
            return [ICEObject ice_ping___:(id<ICEObject>)self current:current is:is os:os];
        case 8:
            return [TeRKPropertyManager setProperty___:(id<TeRKPropertyManager>)target__ current:current is:is os:os];
        case 9:
            return [TeRKVideoStreamerServer startCamera___:(id<TeRKVideoStreamerServer>)target__ current:current is:is os:os];
        case 10:
            return [TeRKVideoStreamerServer startVideoStream___:(id<TeRKVideoStreamerServer>)target__ current:current is:is os:os];
        case 11:
            return [TeRKVideoStreamerServer stopCamera___:(id<TeRKVideoStreamerServer>)target__ current:current is:is os:os];
        case 12:
            return [TeRKVideoStreamerServer stopVideoStream___:(id<TeRKVideoStreamerServer>)target__ current:current is:is os:os];
        default:
            @throw [ICEOperationNotExistException operationNotExistException:__FILE__
                                                                             line:__LINE__
                                                                             id_:current.id_
                                                                             facet:current.facet
                                                                             operation:current.operation];
    }
}

+(NSString **) staticIds__:(int*)count idIndex:(int*)idx
{
    *count = sizeof(TeRKVideoStreamerServer_ids__) / sizeof(NSString *);
    *idx = 3;
    return TeRKVideoStreamerServer_ids__;
}
@end

@implementation TeRKVideoStreamerClientPrx

-(void) newFrame:(TeRKImage *)frame
{
    [TeRKVideoStreamerClientPrx newFrame___:frame prx:self context:nil];
}

-(void) newFrame:(TeRKImage *)frame context:(ICEContext *)ctx_
{
    [TeRKVideoStreamerClientPrx newFrame___:frame prx:self context:ctx_];
}

+(NSString *) ice_staticId
{
    return @"::TeRK::VideoStreamerClient";
}

+(void) newFrame___:(TeRKImage *)frame prx:(ICEObjectPrx <TeRKVideoStreamerClientPrx> *)prx_ context:(ICEContext *)ctx_
{
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    @try
    {
        [TeRKImage ice_writeWithStream:frame stream:os_];
        [prx_ invoke__:@"newFrame" mode:ICENormal os:os_ is:&is_ context:ctx_];
    }
    @catch(ICEUserException *ex_)
    {
        @throw [ICEUnknownUserException unknownUserException:__FILE__ line:__LINE__ unknown:[ex_ ice_name]];
    }
    @finally
    {
        [os_ release];
        [is_ release];
    }
}
@end

@implementation TeRKVideoStreamerServerPrx

-(TeRKMutablePropertyMap *) getProperties
{
    return [TeRKPropertyManagerPrx getProperties___:self context:nil];
}

-(TeRKMutablePropertyMap *) getProperties:(ICEContext *)ctx_
{
    return [TeRKPropertyManagerPrx getProperties___:self context:ctx_];
}

-(BOOL) getProperties_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_
{
    return [TeRKPropertyManagerPrx getProperties_async___:target_ response:response_ exception:exception_ sent:nil  prx:self context:nil];
}

-(BOOL) getProperties_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ context:(ICEContext *)ctx_
{
    return [TeRKPropertyManagerPrx getProperties_async___:target_ response:response_ exception:exception_ sent:nil  prx:self context:ctx_];
}

-(BOOL) getProperties_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_
{
    return [TeRKPropertyManagerPrx getProperties_async___:target_ response:response_ exception:exception_ sent:sent_  prx:self context:nil];
}

-(BOOL) getProperties_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ context:(ICEContext *)ctx_
{
    return [TeRKPropertyManagerPrx getProperties_async___:target_ response:response_ exception:exception_ sent:sent_  prx:self context:ctx_];
}

-(NSMutableString *) getProperty:(NSString *)key
{
    return [TeRKPropertyManagerPrx getProperty___:key prx:self context:nil];
}

-(NSMutableString *) getProperty:(NSString *)key context:(ICEContext *)ctx_
{
    return [TeRKPropertyManagerPrx getProperty___:key prx:self context:ctx_];
}

-(BOOL) getProperty_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ key:(NSString *)key
{
    return [TeRKPropertyManagerPrx getProperty_async___:target_ response:response_ exception:exception_ sent:nil  key:key prx:self context:nil];
}

-(BOOL) getProperty_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ key:(NSString *)key context:(ICEContext *)ctx_
{
    return [TeRKPropertyManagerPrx getProperty_async___:target_ response:response_ exception:exception_ sent:nil  key:key prx:self context:ctx_];
}

-(BOOL) getProperty_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ key:(NSString *)key
{
    return [TeRKPropertyManagerPrx getProperty_async___:target_ response:response_ exception:exception_ sent:sent_  key:key prx:self context:nil];
}

-(BOOL) getProperty_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ key:(NSString *)key context:(ICEContext *)ctx_
{
    return [TeRKPropertyManagerPrx getProperty_async___:target_ response:response_ exception:exception_ sent:sent_  key:key prx:self context:ctx_];
}

-(TeRKMutableStringArray *) getPropertyKeys
{
    return [TeRKPropertyManagerPrx getPropertyKeys___:self context:nil];
}

-(TeRKMutableStringArray *) getPropertyKeys:(ICEContext *)ctx_
{
    return [TeRKPropertyManagerPrx getPropertyKeys___:self context:ctx_];
}

-(BOOL) getPropertyKeys_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_
{
    return [TeRKPropertyManagerPrx getPropertyKeys_async___:target_ response:response_ exception:exception_ sent:nil  prx:self context:nil];
}

-(BOOL) getPropertyKeys_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ context:(ICEContext *)ctx_
{
    return [TeRKPropertyManagerPrx getPropertyKeys_async___:target_ response:response_ exception:exception_ sent:nil  prx:self context:ctx_];
}

-(BOOL) getPropertyKeys_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_
{
    return [TeRKPropertyManagerPrx getPropertyKeys_async___:target_ response:response_ exception:exception_ sent:sent_  prx:self context:nil];
}

-(BOOL) getPropertyKeys_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ context:(ICEContext *)ctx_
{
    return [TeRKPropertyManagerPrx getPropertyKeys_async___:target_ response:response_ exception:exception_ sent:sent_  prx:self context:ctx_];
}

-(void) setProperty:(NSString *)key value:(NSString *)value
{
    [TeRKPropertyManagerPrx setProperty___:key value:value prx:self context:nil];
}

-(void) setProperty:(NSString *)key value:(NSString *)value context:(ICEContext *)ctx_
{
    [TeRKPropertyManagerPrx setProperty___:key value:value prx:self context:ctx_];
}

-(BOOL) setProperty_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ key:(NSString *)key value:(NSString *)value
{
    return [TeRKPropertyManagerPrx setProperty_async___:target_ response:response_ exception:exception_ sent:nil  key:key value:value prx:self context:nil];
}

-(BOOL) setProperty_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ key:(NSString *)key value:(NSString *)value context:(ICEContext *)ctx_
{
    return [TeRKPropertyManagerPrx setProperty_async___:target_ response:response_ exception:exception_ sent:nil  key:key value:value prx:self context:ctx_];
}

-(BOOL) setProperty_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ key:(NSString *)key value:(NSString *)value
{
    return [TeRKPropertyManagerPrx setProperty_async___:target_ response:response_ exception:exception_ sent:sent_  key:key value:value prx:self context:nil];
}

-(BOOL) setProperty_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ key:(NSString *)key value:(NSString *)value context:(ICEContext *)ctx_
{
    return [TeRKPropertyManagerPrx setProperty_async___:target_ response:response_ exception:exception_ sent:sent_  key:key value:value prx:self context:ctx_];
}

-(TeRKImage *) getFrame:(ICEInt)frameNumber
{
    return [TeRKVideoStreamerServerPrx getFrame___:frameNumber prx:self context:nil];
}

-(TeRKImage *) getFrame:(ICEInt)frameNumber context:(ICEContext *)ctx_
{
    return [TeRKVideoStreamerServerPrx getFrame___:frameNumber prx:self context:ctx_];
}

-(BOOL) getFrame_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ frameNumber:(ICEInt)frameNumber
{
    return [TeRKVideoStreamerServerPrx getFrame_async___:target_ response:response_ exception:exception_ sent:nil  frameNumber:frameNumber prx:self context:nil];
}

-(BOOL) getFrame_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ frameNumber:(ICEInt)frameNumber context:(ICEContext *)ctx_
{
    return [TeRKVideoStreamerServerPrx getFrame_async___:target_ response:response_ exception:exception_ sent:nil  frameNumber:frameNumber prx:self context:ctx_];
}

-(BOOL) getFrame_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ frameNumber:(ICEInt)frameNumber
{
    return [TeRKVideoStreamerServerPrx getFrame_async___:target_ response:response_ exception:exception_ sent:sent_  frameNumber:frameNumber prx:self context:nil];
}

-(BOOL) getFrame_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ frameNumber:(ICEInt)frameNumber context:(ICEContext *)ctx_
{
    return [TeRKVideoStreamerServerPrx getFrame_async___:target_ response:response_ exception:exception_ sent:sent_  frameNumber:frameNumber prx:self context:ctx_];
}

-(ICEInt) startCamera
{
    return [TeRKVideoStreamerServerPrx startCamera___:self context:nil];
}

-(ICEInt) startCamera:(ICEContext *)ctx_
{
    return [TeRKVideoStreamerServerPrx startCamera___:self context:ctx_];
}

-(BOOL) startCamera_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_
{
    return [TeRKVideoStreamerServerPrx startCamera_async___:target_ response:response_ exception:exception_ sent:nil  prx:self context:nil];
}

-(BOOL) startCamera_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ context:(ICEContext *)ctx_
{
    return [TeRKVideoStreamerServerPrx startCamera_async___:target_ response:response_ exception:exception_ sent:nil  prx:self context:ctx_];
}

-(BOOL) startCamera_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_
{
    return [TeRKVideoStreamerServerPrx startCamera_async___:target_ response:response_ exception:exception_ sent:sent_  prx:self context:nil];
}

-(BOOL) startCamera_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ context:(ICEContext *)ctx_
{
    return [TeRKVideoStreamerServerPrx startCamera_async___:target_ response:response_ exception:exception_ sent:sent_  prx:self context:ctx_];
}

-(void) startVideoStream
{
    [TeRKVideoStreamerServerPrx startVideoStream___:self context:nil];
}

-(void) startVideoStream:(ICEContext *)ctx_
{
    [TeRKVideoStreamerServerPrx startVideoStream___:self context:ctx_];
}

-(BOOL) startVideoStream_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_
{
    return [TeRKVideoStreamerServerPrx startVideoStream_async___:target_ response:response_ exception:exception_ sent:nil  prx:self context:nil];
}

-(BOOL) startVideoStream_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ context:(ICEContext *)ctx_
{
    return [TeRKVideoStreamerServerPrx startVideoStream_async___:target_ response:response_ exception:exception_ sent:nil  prx:self context:ctx_];
}

-(BOOL) startVideoStream_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_
{
    return [TeRKVideoStreamerServerPrx startVideoStream_async___:target_ response:response_ exception:exception_ sent:sent_  prx:self context:nil];
}

-(BOOL) startVideoStream_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ context:(ICEContext *)ctx_
{
    return [TeRKVideoStreamerServerPrx startVideoStream_async___:target_ response:response_ exception:exception_ sent:sent_  prx:self context:ctx_];
}

-(ICEInt) stopCamera
{
    return [TeRKVideoStreamerServerPrx stopCamera___:self context:nil];
}

-(ICEInt) stopCamera:(ICEContext *)ctx_
{
    return [TeRKVideoStreamerServerPrx stopCamera___:self context:ctx_];
}

-(BOOL) stopCamera_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_
{
    return [TeRKVideoStreamerServerPrx stopCamera_async___:target_ response:response_ exception:exception_ sent:nil  prx:self context:nil];
}

-(BOOL) stopCamera_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ context:(ICEContext *)ctx_
{
    return [TeRKVideoStreamerServerPrx stopCamera_async___:target_ response:response_ exception:exception_ sent:nil  prx:self context:ctx_];
}

-(BOOL) stopCamera_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_
{
    return [TeRKVideoStreamerServerPrx stopCamera_async___:target_ response:response_ exception:exception_ sent:sent_  prx:self context:nil];
}

-(BOOL) stopCamera_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ context:(ICEContext *)ctx_
{
    return [TeRKVideoStreamerServerPrx stopCamera_async___:target_ response:response_ exception:exception_ sent:sent_  prx:self context:ctx_];
}

-(void) stopVideoStream
{
    [TeRKVideoStreamerServerPrx stopVideoStream___:self context:nil];
}

-(void) stopVideoStream:(ICEContext *)ctx_
{
    [TeRKVideoStreamerServerPrx stopVideoStream___:self context:ctx_];
}

-(BOOL) stopVideoStream_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_
{
    return [TeRKVideoStreamerServerPrx stopVideoStream_async___:target_ response:response_ exception:exception_ sent:nil  prx:self context:nil];
}

-(BOOL) stopVideoStream_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ context:(ICEContext *)ctx_
{
    return [TeRKVideoStreamerServerPrx stopVideoStream_async___:target_ response:response_ exception:exception_ sent:nil  prx:self context:ctx_];
}

-(BOOL) stopVideoStream_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_
{
    return [TeRKVideoStreamerServerPrx stopVideoStream_async___:target_ response:response_ exception:exception_ sent:sent_  prx:self context:nil];
}

-(BOOL) stopVideoStream_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ context:(ICEContext *)ctx_
{
    return [TeRKVideoStreamerServerPrx stopVideoStream_async___:target_ response:response_ exception:exception_ sent:sent_  prx:self context:ctx_];
}

+(NSString *) ice_staticId
{
    return @"::TeRK::VideoStreamerServer";
}

+(void) startVideoStream___:(ICEObjectPrx <TeRKVideoStreamerServerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"startVideoStream"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    @try
    {
        [prx_ invoke__:@"startVideoStream" mode:ICEIdempotent os:os_ is:&is_ context:ctx_];
    }
    @catch(TeRKVideoException *ex_)
    {
        @throw;
    }
    @catch(ICEUserException *ex_)
    {
        @throw [ICEUnknownUserException unknownUserException:__FILE__ line:__LINE__ unknown:[ex_ ice_name]];
    }
    @finally
    {
        [os_ release];
        [is_ release];
    }
}

+(BOOL) startVideoStream_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ prx:(ICEObjectPrx <TeRKVideoStreamerServerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"startVideoStream"];
    SEL finished_ = @selector(startVideoStream_async_finished___:response:exception:ok:is:);
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    @try
    {
        return [prx_ invoke_async__:target_ response:response_ exception:exception_ sent:sent_ finishedClass:self finished:finished_ operation:@"startVideoStream" mode:ICEIdempotent os:os_ context:ctx_];
    }
    @finally
    {
        [os_ release];
    }
    return FALSE; // Keep the compiler happy.
}

+(void) startVideoStream_async_finished___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ ok:(BOOL)ok_ is:(id<ICEInputStream>)is_
{
    @try
    {
        if(!ok_)
        {
            [is_ throwException];
        }
        objc_msgSend(target_, response_);
    }
    @catch(TeRKVideoException *ex_)
    {
        objc_msgSend(target_, exception_, ex_);
    }
    @catch(ICEUserException *ex_)
    {
        ICEUnknownUserException* uuex_;
        uuex_ = [ICEUnknownUserException unknownUserException:__FILE__ line:__LINE__ unknown:[ex_ ice_name]];
        objc_msgSend(target_, exception_, uuex_);
    }
}

+(void) stopVideoStream___:(ICEObjectPrx <TeRKVideoStreamerServerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"stopVideoStream"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    @try
    {
        [prx_ invoke__:@"stopVideoStream" mode:ICEIdempotent os:os_ is:&is_ context:ctx_];
    }
    @catch(TeRKVideoException *ex_)
    {
        @throw;
    }
    @catch(ICEUserException *ex_)
    {
        @throw [ICEUnknownUserException unknownUserException:__FILE__ line:__LINE__ unknown:[ex_ ice_name]];
    }
    @finally
    {
        [os_ release];
        [is_ release];
    }
}

+(BOOL) stopVideoStream_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ prx:(ICEObjectPrx <TeRKVideoStreamerServerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"stopVideoStream"];
    SEL finished_ = @selector(stopVideoStream_async_finished___:response:exception:ok:is:);
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    @try
    {
        return [prx_ invoke_async__:target_ response:response_ exception:exception_ sent:sent_ finishedClass:self finished:finished_ operation:@"stopVideoStream" mode:ICEIdempotent os:os_ context:ctx_];
    }
    @finally
    {
        [os_ release];
    }
    return FALSE; // Keep the compiler happy.
}

+(void) stopVideoStream_async_finished___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ ok:(BOOL)ok_ is:(id<ICEInputStream>)is_
{
    @try
    {
        if(!ok_)
        {
            [is_ throwException];
        }
        objc_msgSend(target_, response_);
    }
    @catch(TeRKVideoException *ex_)
    {
        objc_msgSend(target_, exception_, ex_);
    }
    @catch(ICEUserException *ex_)
    {
        ICEUnknownUserException* uuex_;
        uuex_ = [ICEUnknownUserException unknownUserException:__FILE__ line:__LINE__ unknown:[ex_ ice_name]];
        objc_msgSend(target_, exception_, uuex_);
    }
}

+(ICEInt) startCamera___:(ICEObjectPrx <TeRKVideoStreamerServerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"startCamera"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    ICEInt ret_;
    @try
    {
        [prx_ invoke__:@"startCamera" mode:ICEIdempotent os:os_ is:&is_ context:ctx_];
        ret_ = [is_ readInt];
    }
    @catch(TeRKVideoException *ex_)
    {
        @throw;
    }
    @catch(ICEUserException *ex_)
    {
        @throw [ICEUnknownUserException unknownUserException:__FILE__ line:__LINE__ unknown:[ex_ ice_name]];
    }
    @finally
    {
        [os_ release];
        [is_ release];
    }
    return ret_;
}

+(BOOL) startCamera_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ prx:(ICEObjectPrx <TeRKVideoStreamerServerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"startCamera"];
    SEL finished_ = @selector(startCamera_async_finished___:response:exception:ok:is:);
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    @try
    {
        return [prx_ invoke_async__:target_ response:response_ exception:exception_ sent:sent_ finishedClass:self finished:finished_ operation:@"startCamera" mode:ICEIdempotent os:os_ context:ctx_];
    }
    @finally
    {
        [os_ release];
    }
    return FALSE; // Keep the compiler happy.
}

+(void) startCamera_async_finished___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ ok:(BOOL)ok_ is:(id<ICEInputStream>)is_
{
    ICEInt ret_;
    @try
    {
        if(!ok_)
        {
            [is_ throwException];
        }
        ret_ = [is_ readInt];
        ((void(*)(id, SEL, ICEInt))objc_msgSend)(target_, response_, ret_);
    }
    @catch(TeRKVideoException *ex_)
    {
        objc_msgSend(target_, exception_, ex_);
    }
    @catch(ICEUserException *ex_)
    {
        ICEUnknownUserException* uuex_;
        uuex_ = [ICEUnknownUserException unknownUserException:__FILE__ line:__LINE__ unknown:[ex_ ice_name]];
        objc_msgSend(target_, exception_, uuex_);
    }
}

+(ICEInt) stopCamera___:(ICEObjectPrx <TeRKVideoStreamerServerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"stopCamera"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    ICEInt ret_;
    @try
    {
        [prx_ invoke__:@"stopCamera" mode:ICEIdempotent os:os_ is:&is_ context:ctx_];
        ret_ = [is_ readInt];
    }
    @catch(TeRKVideoException *ex_)
    {
        @throw;
    }
    @catch(ICEUserException *ex_)
    {
        @throw [ICEUnknownUserException unknownUserException:__FILE__ line:__LINE__ unknown:[ex_ ice_name]];
    }
    @finally
    {
        [os_ release];
        [is_ release];
    }
    return ret_;
}

+(BOOL) stopCamera_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ prx:(ICEObjectPrx <TeRKVideoStreamerServerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"stopCamera"];
    SEL finished_ = @selector(stopCamera_async_finished___:response:exception:ok:is:);
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    @try
    {
        return [prx_ invoke_async__:target_ response:response_ exception:exception_ sent:sent_ finishedClass:self finished:finished_ operation:@"stopCamera" mode:ICEIdempotent os:os_ context:ctx_];
    }
    @finally
    {
        [os_ release];
    }
    return FALSE; // Keep the compiler happy.
}

+(void) stopCamera_async_finished___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ ok:(BOOL)ok_ is:(id<ICEInputStream>)is_
{
    ICEInt ret_;
    @try
    {
        if(!ok_)
        {
            [is_ throwException];
        }
        ret_ = [is_ readInt];
        ((void(*)(id, SEL, ICEInt))objc_msgSend)(target_, response_, ret_);
    }
    @catch(TeRKVideoException *ex_)
    {
        objc_msgSend(target_, exception_, ex_);
    }
    @catch(ICEUserException *ex_)
    {
        ICEUnknownUserException* uuex_;
        uuex_ = [ICEUnknownUserException unknownUserException:__FILE__ line:__LINE__ unknown:[ex_ ice_name]];
        objc_msgSend(target_, exception_, uuex_);
    }
}

+(TeRKImage *) getFrame___:(ICEInt)frameNumber prx:(ICEObjectPrx <TeRKVideoStreamerServerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"getFrame"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    TeRKImage *ret_ = nil;
    @try
    {
        [os_ writeInt:frameNumber];
        [prx_ invoke__:@"getFrame" mode:ICENormal os:os_ is:&is_ context:ctx_];
        ret_ = [TeRKImage ice_readWithStream:is_];
    }
    @catch(TeRKVideoException *ex_)
    {
        @throw;
    }
    @catch(ICEUserException *ex_)
    {
        @throw [ICEUnknownUserException unknownUserException:__FILE__ line:__LINE__ unknown:[ex_ ice_name]];
    }
    @finally
    {
        [(id<NSObject>)ret_ autorelease];
        [os_ release];
        [is_ release];
    }
    return ret_;
}

+(BOOL) getFrame_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ frameNumber:(ICEInt)frameNumber prx:(ICEObjectPrx <TeRKVideoStreamerServerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"getFrame"];
    SEL finished_ = @selector(getFrame_async_finished___:response:exception:ok:is:);
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    @try
    {
        [os_ writeInt:frameNumber];
        return [prx_ invoke_async__:target_ response:response_ exception:exception_ sent:sent_ finishedClass:self finished:finished_ operation:@"getFrame" mode:ICENormal os:os_ context:ctx_];
    }
    @finally
    {
        [os_ release];
    }
    return FALSE; // Keep the compiler happy.
}

+(void) getFrame_async_finished___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ ok:(BOOL)ok_ is:(id<ICEInputStream>)is_
{
    TeRKImage *ret_ = nil;
    @try
    {
        if(!ok_)
        {
            [is_ throwException];
        }
        ret_ = [TeRKImage ice_readWithStream:is_];
        ((void(*)(id, SEL, TeRKImage *))objc_msgSend)(target_, response_, ret_);
    }
    @catch(TeRKVideoException *ex_)
    {
        objc_msgSend(target_, exception_, ex_);
    }
    @catch(ICEUserException *ex_)
    {
        ICEUnknownUserException* uuex_;
        uuex_ = [ICEUnknownUserException unknownUserException:__FILE__ line:__LINE__ unknown:[ex_ ice_name]];
        objc_msgSend(target_, exception_, uuex_);
    }
    @finally
    {
        [(id<NSObject>)ret_ release];
    }
}
@end

@implementation TeRKImageFormatHelper
+(ICEInt) getLimit
{
    return 6;
}
@end
