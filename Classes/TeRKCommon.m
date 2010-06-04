// **********************************************************************
//
// Copyright (c) 2003-2009 ZeroC, Inc. All rights reserved.
//
// This copy of Ice is licensed to you under the terms described in the
// ICE_TOUCH_LICENSE file included in this distribution.
//
// **********************************************************************

// Ice version 3.3.1
// Generated from file `TeRKCommon.ice'

#import <Ice/LocalException.h>
#import <Ice/Stream.h>
#import <Ice/Internal.h>
#import <TeRKCommon.h>

#import <objc/message.h>

@implementation TeRKTeRKException

@synthesize reason_;

-(NSString *) ice_name
{
    return @"TeRK::TeRKException";
}

-(id) init:(NSString *)reason_p
{
    if(![super initWithName:[self ice_name] reason:nil userInfo:nil])
    {
        return nil;
    }
    reason_ = [reason_p retain];
    return self;
}

+(id) teRKException:(NSString *)reason_p
{
    TeRKTeRKException *s__ = [(TeRKTeRKException *)[TeRKTeRKException alloc] init:reason_p];
    [s__ autorelease];
    return s__;
}

+(id) teRKException
{
    TeRKTeRKException *s__ = [[TeRKTeRKException alloc] init];
    [s__ autorelease];
    return s__;
}

-(id) copyWithZone:(NSZone *)zone_p
{
    return [(TeRKTeRKException *)[[self class] allocWithZone:zone_p] init:reason_];
}

-(void) dealloc;
{
    [reason_ release];
    [super dealloc];
}

-(void) write__:(id<ICEOutputStream>)os_
{
    [os_ writeString:@"::TeRK::TeRKException"];
    [os_ startSlice];
    [os_ writeString:self->reason_];
    [os_ endSlice];
}

-(void) read__:(id<ICEInputStream>)is_ readTypeId:(BOOL)rid_
{
    if(rid_)
    {
        [[is_ readString] release];
    }
    [is_ startSlice];
    self->reason_ = [is_ readString];
    [is_ endSlice];
}
@end

@implementation TeRKReadOnlyPropertyException

-(NSString *) ice_name
{
    return @"TeRK::ReadOnlyPropertyException";
}

+(id) readOnlyPropertyException:(NSString *)reason_p
{
    TeRKReadOnlyPropertyException *s__ = [(TeRKReadOnlyPropertyException *)[TeRKReadOnlyPropertyException alloc] init:reason_p];
    [s__ autorelease];
    return s__;
}

+(id) readOnlyPropertyException
{
    TeRKReadOnlyPropertyException *s__ = [[TeRKReadOnlyPropertyException alloc] init];
    [s__ autorelease];
    return s__;
}

-(void) write__:(id<ICEOutputStream>)os_
{
    [os_ writeString:@"::TeRK::ReadOnlyPropertyException"];
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

@implementation TeRKCommandException

-(NSString *) ice_name
{
    return @"TeRK::CommandException";
}

+(id) commandException:(NSString *)reason_p
{
    TeRKCommandException *s__ = [(TeRKCommandException *)[TeRKCommandException alloc] init:reason_p];
    [s__ autorelease];
    return s__;
}

+(id) commandException
{
    TeRKCommandException *s__ = [[TeRKCommandException alloc] init];
    [s__ autorelease];
    return s__;
}

-(void) write__:(id<ICEOutputStream>)os_
{
    [os_ writeString:@"::TeRK::CommandException"];
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

@implementation TeRKPropertyManager

+(id)objectWithDelegate:(id)delegate
{
    return [[[TeRKPropertyManager alloc] initWithDelegate:delegate] autorelease];
}

-(void) write__:(id<ICEOutputStream>)os_
{
    [os_ writeTypeId:@"::TeRK::PropertyManager"];
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

static NSString *TeRKPropertyManager_ids__[] = 
{
    @"::Ice::Object",
    @"::TeRK::PropertyManager"
};

+(BOOL)getProperty___:(id<TeRKPropertyManager>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(getProperty:current:), current);
    NSMutableString *key = nil;
    @try
    {
        key = [is_ readString];
        NSString *ret_ = [target getProperty:key current:current];
        [os_ writeString:ret_];
    }
    @finally
    {
        [(id<NSObject>)key release];
    }
    return YES;
}

+(BOOL)getProperties___:(id<TeRKPropertyManager>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(getProperties:), current);
    NSDictionary *ret_ = [target getProperties:current];
    [TeRKPropertyMapHelper ice_writeWithStream:ret_ stream:os_];
    return YES;
}

+(BOOL)getPropertyKeys___:(id<TeRKPropertyManager>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(getPropertyKeys:), current);
    TeRKStringArray *ret_ = [target getPropertyKeys:current];
    [os_ writeStringSeq:ret_];
    return YES;
}

+(BOOL)setProperty___:(id<TeRKPropertyManager>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(setProperty:value:current:), current);
    NSMutableString *key = nil;
    NSMutableString *value = nil;
    @try
    {
        key = [is_ readString];
        value = [is_ readString];
        [target setProperty:key value:value current:current];
    }
    @catch(TeRKReadOnlyPropertyException *ex)
    {
        [os_ writeException:ex];
        return NO;
    }
    @finally
    {
        [(id<NSObject>)key release];
        [(id<NSObject>)value release];
    }
    return YES;
}

static NSString *TeRKPropertyManager_all__[] =
{
    @"getProperties",
    @"getProperty",
    @"getPropertyKeys",
    @"ice_id",
    @"ice_ids",
    @"ice_isA",
    @"ice_ping",
    @"setProperty"
};

-(BOOL) dispatch__:(ICECurrent *)current is:(id<ICEInputStream>)is os:(id<ICEOutputStream>)os
{
    id target__ = [self target__];
    switch(ICEInternalLookupString(TeRKPropertyManager_all__, sizeof(TeRKPropertyManager_all__) / sizeof(NSString*), current.operation))
    {
        case 0:
            return [TeRKPropertyManager getProperties___:(id<TeRKPropertyManager>)target__ current:current is:is os:os];
        case 1:
            return [TeRKPropertyManager getProperty___:(id<TeRKPropertyManager>)target__ current:current is:is os:os];
        case 2:
            return [TeRKPropertyManager getPropertyKeys___:(id<TeRKPropertyManager>)target__ current:current is:is os:os];
        case 3:
            return [ICEObject ice_id___:(id<ICEObject>)self current:current is:is os:os];
        case 4:
            return [ICEObject ice_ids___:(id<ICEObject>)self current:current is:is os:os];
        case 5:
            return [ICEObject ice_isA___:(id<ICEObject>)self current:current is:is os:os];
        case 6:
            return [ICEObject ice_ping___:(id<ICEObject>)self current:current is:is os:os];
        case 7:
            return [TeRKPropertyManager setProperty___:(id<TeRKPropertyManager>)target__ current:current is:is os:os];
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
    *count = sizeof(TeRKPropertyManager_ids__) / sizeof(NSString *);
    *idx = 1;
    return TeRKPropertyManager_ids__;
}
@end

@implementation TeRKAbstractCommandController

+(id)objectWithDelegate:(id)delegate
{
    return [[[TeRKAbstractCommandController alloc] initWithDelegate:delegate] autorelease];
}

-(void) write__:(id<ICEOutputStream>)os_
{
    [os_ writeTypeId:@"::TeRK::AbstractCommandController"];
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

static NSString *TeRKAbstractCommandController_ids__[] = 
{
    @"::Ice::Object",
    @"::TeRK::AbstractCommandController",
    @"::TeRK::PropertyManager"
};

static NSString *TeRKAbstractCommandController_all__[] =
{
    @"getProperties",
    @"getProperty",
    @"getPropertyKeys",
    @"ice_id",
    @"ice_ids",
    @"ice_isA",
    @"ice_ping",
    @"setProperty"
};

-(BOOL) dispatch__:(ICECurrent *)current is:(id<ICEInputStream>)is os:(id<ICEOutputStream>)os
{
    id target__ = [self target__];
    switch(ICEInternalLookupString(TeRKAbstractCommandController_all__, sizeof(TeRKAbstractCommandController_all__) / sizeof(NSString*), current.operation))
    {
        case 0:
            return [TeRKPropertyManager getProperties___:(id<TeRKPropertyManager>)target__ current:current is:is os:os];
        case 1:
            return [TeRKPropertyManager getProperty___:(id<TeRKPropertyManager>)target__ current:current is:is os:os];
        case 2:
            return [TeRKPropertyManager getPropertyKeys___:(id<TeRKPropertyManager>)target__ current:current is:is os:os];
        case 3:
            return [ICEObject ice_id___:(id<ICEObject>)self current:current is:is os:os];
        case 4:
            return [ICEObject ice_ids___:(id<ICEObject>)self current:current is:is os:os];
        case 5:
            return [ICEObject ice_isA___:(id<ICEObject>)self current:current is:is os:os];
        case 6:
            return [ICEObject ice_ping___:(id<ICEObject>)self current:current is:is os:os];
        case 7:
            return [TeRKPropertyManager setProperty___:(id<TeRKPropertyManager>)target__ current:current is:is os:os];
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
    *count = sizeof(TeRKAbstractCommandController_ids__) / sizeof(NSString *);
    *idx = 1;
    return TeRKAbstractCommandController_ids__;
}
@end

@implementation TeRKTerkUser

+(id)objectWithDelegate:(id)delegate
{
    return [[[TeRKTerkUser alloc] initWithDelegate:delegate] autorelease];
}

-(void) write__:(id<ICEOutputStream>)os_
{
    [os_ writeTypeId:@"::TeRK::TerkUser"];
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

static NSString *TeRKTerkUser_ids__[] = 
{
    @"::Ice::Object",
    @"::TeRK::PropertyManager",
    @"::TeRK::TerkUser",
    @"::peer::ConnectionEventHandler",
    @"::peer::PeerConnectionEventHandler",
    @"::peer::UserConnectionEventHandler"
};

+(BOOL)getSupportedServices___:(id<TeRKTerkUser>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENonmutating, @selector(getSupportedServices:), current);
    NSDictionary *ret_ = [target getSupportedServices:current];
    [TeRKProxyTypeIdToIdentityMapHelper ice_writeWithStream:ret_ stream:os_];
    return YES;
}

static NSString *TeRKTerkUser_all__[] =
{
    @"forcedLogoutNotification",
    @"getProperties",
    @"getProperty",
    @"getPropertyKeys",
    @"getSupportedServices",
    @"ice_id",
    @"ice_ids",
    @"ice_isA",
    @"ice_ping",
    @"peerConnected",
    @"peerConnectedNoProxy",
    @"peerDisconnected",
    @"setProperty"
};

-(BOOL) dispatch__:(ICECurrent *)current is:(id<ICEInputStream>)is os:(id<ICEOutputStream>)os
{
    id target__ = [self target__];
    switch(ICEInternalLookupString(TeRKTerkUser_all__, sizeof(TeRKTerkUser_all__) / sizeof(NSString*), current.operation))
    {
        case 0:
            return [peerUserConnectionEventHandler forcedLogoutNotification___:(id<peerUserConnectionEventHandler>)target__ current:current is:is os:os];
        case 1:
            return [TeRKPropertyManager getProperties___:(id<TeRKPropertyManager>)target__ current:current is:is os:os];
        case 2:
            return [TeRKPropertyManager getProperty___:(id<TeRKPropertyManager>)target__ current:current is:is os:os];
        case 3:
            return [TeRKPropertyManager getPropertyKeys___:(id<TeRKPropertyManager>)target__ current:current is:is os:os];
        case 4:
            return [TeRKTerkUser getSupportedServices___:(id<TeRKTerkUser>)target__ current:current is:is os:os];
        case 5:
            return [ICEObject ice_id___:(id<ICEObject>)self current:current is:is os:os];
        case 6:
            return [ICEObject ice_ids___:(id<ICEObject>)self current:current is:is os:os];
        case 7:
            return [ICEObject ice_isA___:(id<ICEObject>)self current:current is:is os:os];
        case 8:
            return [ICEObject ice_ping___:(id<ICEObject>)self current:current is:is os:os];
        case 9:
            return [peerPeerConnectionEventHandler peerConnected___:(id<peerPeerConnectionEventHandler>)target__ current:current is:is os:os];
        case 10:
            return [peerPeerConnectionEventHandler peerConnectedNoProxy___:(id<peerPeerConnectionEventHandler>)target__ current:current is:is os:os];
        case 11:
            return [peerPeerConnectionEventHandler peerDisconnected___:(id<peerPeerConnectionEventHandler>)target__ current:current is:is os:os];
        case 12:
            return [TeRKPropertyManager setProperty___:(id<TeRKPropertyManager>)target__ current:current is:is os:os];
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
    *count = sizeof(TeRKTerkUser_ids__) / sizeof(NSString *);
    *idx = 2;
    return TeRKTerkUser_ids__;
}
@end

@implementation TeRKPropertyManagerPrx

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

+(NSString *) ice_staticId
{
    return @"::TeRK::PropertyManager";
}

+(NSMutableString *) getProperty___:(NSString *)key prx:(ICEObjectPrx <TeRKPropertyManagerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"getProperty"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    NSMutableString *ret_ = nil;
    @try
    {
        [os_ writeString:key];
        [prx_ invoke__:@"getProperty" mode:ICENormal os:os_ is:&is_ context:ctx_];
        ret_ = [is_ readString];
    }
    @catch(ICEUserException *ex_)
    {
        @throw [ICEUnknownUserException unknownUserException:__FILE__ line:__LINE__ unknown:[ex_ ice_name]];
    }
    @finally
    {
        [(NSObject*)ret_ autorelease];
        [os_ release];
        [is_ release];
    }
    return ret_;
}

+(BOOL) getProperty_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ key:(NSString *)key prx:(ICEObjectPrx <TeRKPropertyManagerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"getProperty"];
    SEL finished_ = @selector(getProperty_async_finished___:response:exception:ok:is:);
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    @try
    {
        [os_ writeString:key];
        return [prx_ invoke_async__:target_ response:response_ exception:exception_ sent:sent_ finishedClass:self finished:finished_ operation:@"getProperty" mode:ICENormal os:os_ context:ctx_];
    }
    @finally
    {
        [os_ release];
    }
    return FALSE; // Keep the compiler happy.
}

+(void) getProperty_async_finished___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ ok:(BOOL)ok_ is:(id<ICEInputStream>)is_
{
    NSMutableString *ret_ = nil;
    @try
    {
        if(!ok_)
        {
            [is_ throwException];
        }
        ret_ = [is_ readString];
        ((void(*)(id, SEL, NSString *))objc_msgSend)(target_, response_, ret_);
    }
    @catch(ICEUserException *ex_)
    {
        ICEUnknownUserException* uuex_;
        uuex_ = [ICEUnknownUserException unknownUserException:__FILE__ line:__LINE__ unknown:[ex_ ice_name]];
        objc_msgSend(target_, exception_, uuex_);
    }
    @finally
    {
        [(ICEObject*)ret_ release];
    }
}

+(TeRKMutablePropertyMap *) getProperties___:(ICEObjectPrx <TeRKPropertyManagerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"getProperties"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    TeRKMutablePropertyMap *ret_ = nil;
    @try
    {
        [prx_ invoke__:@"getProperties" mode:ICENormal os:os_ is:&is_ context:ctx_];
        ret_ = [TeRKPropertyMapHelper ice_readWithStream:is_];
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

+(BOOL) getProperties_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ prx:(ICEObjectPrx <TeRKPropertyManagerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"getProperties"];
    SEL finished_ = @selector(getProperties_async_finished___:response:exception:ok:is:);
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    @try
    {
        return [prx_ invoke_async__:target_ response:response_ exception:exception_ sent:sent_ finishedClass:self finished:finished_ operation:@"getProperties" mode:ICENormal os:os_ context:ctx_];
    }
    @finally
    {
        [os_ release];
    }
    return FALSE; // Keep the compiler happy.
}

+(void) getProperties_async_finished___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ ok:(BOOL)ok_ is:(id<ICEInputStream>)is_
{
    TeRKMutablePropertyMap *ret_ = nil;
    @try
    {
        if(!ok_)
        {
            [is_ throwException];
        }
        ret_ = [TeRKPropertyMapHelper ice_readWithStream:is_];
        ((void(*)(id, SEL, NSDictionary *))objc_msgSend)(target_, response_, ret_);
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

+(TeRKMutableStringArray *) getPropertyKeys___:(ICEObjectPrx <TeRKPropertyManagerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"getPropertyKeys"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    TeRKMutableStringArray *ret_ = nil;
    @try
    {
        [prx_ invoke__:@"getPropertyKeys" mode:ICENormal os:os_ is:&is_ context:ctx_];
        ret_ = [is_ readStringSeq];
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

+(BOOL) getPropertyKeys_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ prx:(ICEObjectPrx <TeRKPropertyManagerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"getPropertyKeys"];
    SEL finished_ = @selector(getPropertyKeys_async_finished___:response:exception:ok:is:);
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    @try
    {
        return [prx_ invoke_async__:target_ response:response_ exception:exception_ sent:sent_ finishedClass:self finished:finished_ operation:@"getPropertyKeys" mode:ICENormal os:os_ context:ctx_];
    }
    @finally
    {
        [os_ release];
    }
    return FALSE; // Keep the compiler happy.
}

+(void) getPropertyKeys_async_finished___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ ok:(BOOL)ok_ is:(id<ICEInputStream>)is_
{
    TeRKMutableStringArray *ret_ = nil;
    @try
    {
        if(!ok_)
        {
            [is_ throwException];
        }
        ret_ = [is_ readStringSeq];
        ((void(*)(id, SEL, TeRKStringArray *))objc_msgSend)(target_, response_, ret_);
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

+(void) setProperty___:(NSString *)key value:(NSString *)value prx:(ICEObjectPrx <TeRKPropertyManagerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"setProperty"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    @try
    {
        [os_ writeString:key];
        [os_ writeString:value];
        [prx_ invoke__:@"setProperty" mode:ICENormal os:os_ is:&is_ context:ctx_];
    }
    @catch(TeRKReadOnlyPropertyException *ex_)
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

+(BOOL) setProperty_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ key:(NSString *)key value:(NSString *)value prx:(ICEObjectPrx <TeRKPropertyManagerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"setProperty"];
    SEL finished_ = @selector(setProperty_async_finished___:response:exception:ok:is:);
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    @try
    {
        [os_ writeString:key];
        [os_ writeString:value];
        return [prx_ invoke_async__:target_ response:response_ exception:exception_ sent:sent_ finishedClass:self finished:finished_ operation:@"setProperty" mode:ICENormal os:os_ context:ctx_];
    }
    @finally
    {
        [os_ release];
    }
    return FALSE; // Keep the compiler happy.
}

+(void) setProperty_async_finished___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ ok:(BOOL)ok_ is:(id<ICEInputStream>)is_
{
    @try
    {
        if(!ok_)
        {
            [is_ throwException];
        }
        objc_msgSend(target_, response_);
    }
    @catch(TeRKReadOnlyPropertyException *ex_)
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
@end

@implementation TeRKAbstractCommandControllerPrx

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

+(NSString *) ice_staticId
{
    return @"::TeRK::AbstractCommandController";
}
@end

@implementation TeRKTerkUserPrx

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

-(TeRKMutableProxyTypeIdToIdentityMap *) getSupportedServices
{
    return [TeRKTerkUserPrx getSupportedServices___:self context:nil];
}

-(TeRKMutableProxyTypeIdToIdentityMap *) getSupportedServices:(ICEContext *)ctx_
{
    return [TeRKTerkUserPrx getSupportedServices___:self context:ctx_];
}

-(BOOL) getSupportedServices_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_
{
    return [TeRKTerkUserPrx getSupportedServices_async___:target_ response:response_ exception:exception_ sent:nil  prx:self context:nil];
}

-(BOOL) getSupportedServices_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ context:(ICEContext *)ctx_
{
    return [TeRKTerkUserPrx getSupportedServices_async___:target_ response:response_ exception:exception_ sent:nil  prx:self context:ctx_];
}

-(BOOL) getSupportedServices_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_
{
    return [TeRKTerkUserPrx getSupportedServices_async___:target_ response:response_ exception:exception_ sent:sent_  prx:self context:nil];
}

-(BOOL) getSupportedServices_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ context:(ICEContext *)ctx_
{
    return [TeRKTerkUserPrx getSupportedServices_async___:target_ response:response_ exception:exception_ sent:sent_  prx:self context:ctx_];
}

-(void) peerConnected:(NSString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel peerProxy:(id<ICEObjectPrx>)peerProxy
{
    [peerPeerConnectionEventHandlerPrx peerConnected___:peerUserId accessLevel:accessLevel peerProxy:peerProxy prx:self context:nil];
}

-(void) peerConnected:(NSString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel peerProxy:(id<ICEObjectPrx>)peerProxy context:(ICEContext *)ctx_
{
    [peerPeerConnectionEventHandlerPrx peerConnected___:peerUserId accessLevel:accessLevel peerProxy:peerProxy prx:self context:ctx_];
}

-(BOOL) peerConnected_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ peerUserId:(NSString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel peerProxy:(id<ICEObjectPrx>)peerProxy
{
    return [peerPeerConnectionEventHandlerPrx peerConnected_async___:target_ response:response_ exception:exception_ sent:nil  peerUserId:peerUserId accessLevel:accessLevel peerProxy:peerProxy prx:self context:nil];
}

-(BOOL) peerConnected_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ peerUserId:(NSString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel peerProxy:(id<ICEObjectPrx>)peerProxy context:(ICEContext *)ctx_
{
    return [peerPeerConnectionEventHandlerPrx peerConnected_async___:target_ response:response_ exception:exception_ sent:nil  peerUserId:peerUserId accessLevel:accessLevel peerProxy:peerProxy prx:self context:ctx_];
}

-(BOOL) peerConnected_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ peerUserId:(NSString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel peerProxy:(id<ICEObjectPrx>)peerProxy
{
    return [peerPeerConnectionEventHandlerPrx peerConnected_async___:target_ response:response_ exception:exception_ sent:sent_  peerUserId:peerUserId accessLevel:accessLevel peerProxy:peerProxy prx:self context:nil];
}

-(BOOL) peerConnected_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ peerUserId:(NSString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel peerProxy:(id<ICEObjectPrx>)peerProxy context:(ICEContext *)ctx_
{
    return [peerPeerConnectionEventHandlerPrx peerConnected_async___:target_ response:response_ exception:exception_ sent:sent_  peerUserId:peerUserId accessLevel:accessLevel peerProxy:peerProxy prx:self context:ctx_];
}

-(void) peerConnectedNoProxy:(NSString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel
{
    [peerPeerConnectionEventHandlerPrx peerConnectedNoProxy___:peerUserId accessLevel:accessLevel prx:self context:nil];
}

-(void) peerConnectedNoProxy:(NSString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel context:(ICEContext *)ctx_
{
    [peerPeerConnectionEventHandlerPrx peerConnectedNoProxy___:peerUserId accessLevel:accessLevel prx:self context:ctx_];
}

-(BOOL) peerConnectedNoProxy_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ peerUserId:(NSString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel
{
    return [peerPeerConnectionEventHandlerPrx peerConnectedNoProxy_async___:target_ response:response_ exception:exception_ sent:nil  peerUserId:peerUserId accessLevel:accessLevel prx:self context:nil];
}

-(BOOL) peerConnectedNoProxy_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ peerUserId:(NSString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel context:(ICEContext *)ctx_
{
    return [peerPeerConnectionEventHandlerPrx peerConnectedNoProxy_async___:target_ response:response_ exception:exception_ sent:nil  peerUserId:peerUserId accessLevel:accessLevel prx:self context:ctx_];
}

-(BOOL) peerConnectedNoProxy_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ peerUserId:(NSString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel
{
    return [peerPeerConnectionEventHandlerPrx peerConnectedNoProxy_async___:target_ response:response_ exception:exception_ sent:sent_  peerUserId:peerUserId accessLevel:accessLevel prx:self context:nil];
}

-(BOOL) peerConnectedNoProxy_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ peerUserId:(NSString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel context:(ICEContext *)ctx_
{
    return [peerPeerConnectionEventHandlerPrx peerConnectedNoProxy_async___:target_ response:response_ exception:exception_ sent:sent_  peerUserId:peerUserId accessLevel:accessLevel prx:self context:ctx_];
}

-(void) peerDisconnected:(NSString *)peerUserId
{
    [peerPeerConnectionEventHandlerPrx peerDisconnected___:peerUserId prx:self context:nil];
}

-(void) peerDisconnected:(NSString *)peerUserId context:(ICEContext *)ctx_
{
    [peerPeerConnectionEventHandlerPrx peerDisconnected___:peerUserId prx:self context:ctx_];
}

-(BOOL) peerDisconnected_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ peerUserId:(NSString *)peerUserId
{
    return [peerPeerConnectionEventHandlerPrx peerDisconnected_async___:target_ response:response_ exception:exception_ sent:nil  peerUserId:peerUserId prx:self context:nil];
}

-(BOOL) peerDisconnected_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ peerUserId:(NSString *)peerUserId context:(ICEContext *)ctx_
{
    return [peerPeerConnectionEventHandlerPrx peerDisconnected_async___:target_ response:response_ exception:exception_ sent:nil  peerUserId:peerUserId prx:self context:ctx_];
}

-(BOOL) peerDisconnected_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ peerUserId:(NSString *)peerUserId
{
    return [peerPeerConnectionEventHandlerPrx peerDisconnected_async___:target_ response:response_ exception:exception_ sent:sent_  peerUserId:peerUserId prx:self context:nil];
}

-(BOOL) peerDisconnected_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ peerUserId:(NSString *)peerUserId context:(ICEContext *)ctx_
{
    return [peerPeerConnectionEventHandlerPrx peerDisconnected_async___:target_ response:response_ exception:exception_ sent:sent_  peerUserId:peerUserId prx:self context:ctx_];
}

-(void) forcedLogoutNotification
{
    [peerUserConnectionEventHandlerPrx forcedLogoutNotification___:self context:nil];
}

-(void) forcedLogoutNotification:(ICEContext *)ctx_
{
    [peerUserConnectionEventHandlerPrx forcedLogoutNotification___:self context:ctx_];
}

-(BOOL) forcedLogoutNotification_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_
{
    return [peerUserConnectionEventHandlerPrx forcedLogoutNotification_async___:target_ response:response_ exception:exception_ sent:nil  prx:self context:nil];
}

-(BOOL) forcedLogoutNotification_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ context:(ICEContext *)ctx_
{
    return [peerUserConnectionEventHandlerPrx forcedLogoutNotification_async___:target_ response:response_ exception:exception_ sent:nil  prx:self context:ctx_];
}

-(BOOL) forcedLogoutNotification_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_
{
    return [peerUserConnectionEventHandlerPrx forcedLogoutNotification_async___:target_ response:response_ exception:exception_ sent:sent_  prx:self context:nil];
}

-(BOOL) forcedLogoutNotification_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ context:(ICEContext *)ctx_
{
    return [peerUserConnectionEventHandlerPrx forcedLogoutNotification_async___:target_ response:response_ exception:exception_ sent:sent_  prx:self context:ctx_];
}

+(NSString *) ice_staticId
{
    return @"::TeRK::TerkUser";
}

+(TeRKMutableProxyTypeIdToIdentityMap *) getSupportedServices___:(ICEObjectPrx <TeRKTerkUserPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"getSupportedServices"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    TeRKMutableProxyTypeIdToIdentityMap *ret_ = nil;
    @try
    {
        [prx_ invoke__:@"getSupportedServices" mode:ICENonmutating os:os_ is:&is_ context:ctx_];
        ret_ = [TeRKProxyTypeIdToIdentityMapHelper ice_readWithStream:is_];
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

+(BOOL) getSupportedServices_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ prx:(ICEObjectPrx <TeRKTerkUserPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"getSupportedServices"];
    SEL finished_ = @selector(getSupportedServices_async_finished___:response:exception:ok:is:);
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    @try
    {
        return [prx_ invoke_async__:target_ response:response_ exception:exception_ sent:sent_ finishedClass:self finished:finished_ operation:@"getSupportedServices" mode:ICENonmutating os:os_ context:ctx_];
    }
    @finally
    {
        [os_ release];
    }
    return FALSE; // Keep the compiler happy.
}

+(void) getSupportedServices_async_finished___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ ok:(BOOL)ok_ is:(id<ICEInputStream>)is_
{
    TeRKMutableProxyTypeIdToIdentityMap *ret_ = nil;
    @try
    {
        if(!ok_)
        {
            [is_ throwException];
        }
        ret_ = [TeRKProxyTypeIdToIdentityMapHelper ice_readWithStream:is_];
        ((void(*)(id, SEL, NSDictionary *))objc_msgSend)(target_, response_, ret_);
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

@implementation TeRKBooleanArrayHelper
+(id) ice_readWithStream:(id<ICEInputStream>)stream
{
    return [stream readBoolSeq];
}

+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream
{
    [stream writeBoolSeq:obj];
}
@end

@implementation TeRKByteArrayHelper
+(id) ice_readWithStream:(id<ICEInputStream>)stream
{
    return [stream readByteSeq];
}

+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream
{
    [stream writeByteSeq:obj];
}
@end

@implementation TeRKIntArrayHelper
+(id) ice_readWithStream:(id<ICEInputStream>)stream
{
    return [stream readIntSeq];
}

+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream
{
    [stream writeIntSeq:obj];
}
@end

@implementation TeRKShortArrayHelper
+(id) ice_readWithStream:(id<ICEInputStream>)stream
{
    return [stream readShortSeq];
}

+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream
{
    [stream writeShortSeq:obj];
}
@end

@implementation TeRKStringArrayHelper
+(id) ice_readWithStream:(id<ICEInputStream>)stream
{
    return [stream readStringSeq];
}

+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream
{
    [stream writeStringSeq:obj];
}
@end

@implementation TeRKProxyTypeIdToIdentityMapHelper
+(ICEKeyValueTypeHelper) getContained
{
    ICEKeyValueTypeHelper c;
    c.key = [ICEStringHelper class];
    c.value = [ICEIdentity class];
    return c;
}
@end

@implementation TeRKPropertyMapHelper
+(ICEKeyValueTypeHelper) getContained
{
    ICEKeyValueTypeHelper c;
    c.key = [ICEStringHelper class];
    c.value = [ICEStringHelper class];
    return c;
}
@end

@implementation TeRKAbstractCommandControllerProxyArrayHelper
+(Class) getContained
{
    return [TeRKAbstractCommandControllerPrx class];
}
@end
