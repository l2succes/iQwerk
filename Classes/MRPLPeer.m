// **********************************************************************
//
// Copyright (c) 2003-2009 ZeroC, Inc. All rights reserved.
//
// This copy of Ice is licensed to you under the terms described in the
// ICE_TOUCH_LICENSE file included in this distribution.
//
// **********************************************************************

// Ice version 3.3.1
// Generated from file `MRPLPeer.ice'

#import <Ice/LocalException.h>
#import <Ice/Stream.h>
#import <Ice/Internal.h>
#import <MRPLPeer.h>

#import <objc/message.h>

@implementation peerPeerIdentifier

@synthesize userId;
@synthesize firstName;
@synthesize lastName;

-(id) init:(NSString *)userId_p firstName:(NSString *)firstName_p lastName:(NSString *)lastName_p
{
    if(![super init])
    {
        return nil;
    }
    userId = [userId_p retain];
    firstName = [firstName_p retain];
    lastName = [lastName_p retain];
    return self;
}

+(id) peerIdentifier:(NSString *)userId_p firstName:(NSString *)firstName_p lastName:(NSString *)lastName_p
{
    peerPeerIdentifier *s__ = [(peerPeerIdentifier* )[peerPeerIdentifier alloc] init:userId_p firstName:firstName_p lastName:lastName_p];
    [s__ autorelease];
    return s__;
}

+(id) peerIdentifier
{
    peerPeerIdentifier *s__ = [[peerPeerIdentifier alloc] init];
    [s__ autorelease];
    return s__;
}

-(id) copyWithZone:(NSZone *)zone_p
{
    return [(peerPeerIdentifier *)[[self class] allocWithZone:zone_p] init:userId firstName:firstName lastName:lastName];
}

-(NSUInteger) hash
{
    NSUInteger h_ = 0;
    h_ = (h_ << 1) ^ [userId hash];
    h_ = (h_ << 1) ^ [firstName hash];
    h_ = (h_ << 1) ^ [lastName hash];
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
    peerPeerIdentifier *obj_ = (peerPeerIdentifier *)o_;
    if(!userId)
    {
        if(obj_->userId)
        {
            return NO;
        }
    }
    else
    {
        if(![userId isEqualToString:obj_->userId])
        {
            return NO;
        }
    }
    if(!firstName)
    {
        if(obj_->firstName)
        {
            return NO;
        }
    }
    else
    {
        if(![firstName isEqualToString:obj_->firstName])
        {
            return NO;
        }
    }
    if(!lastName)
    {
        if(obj_->lastName)
        {
            return NO;
        }
    }
    else
    {
        if(![lastName isEqualToString:obj_->lastName])
        {
            return NO;
        }
    }
    return YES;
}

-(void) dealloc;
{
    [userId release];
    [firstName release];
    [lastName release];
    [super dealloc];
}

+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)os_
{
    peerPeerIdentifier* p = (peerPeerIdentifier*)obj;
    if(p == nil)
    {
        p = [[[self class] alloc] init];
    }
    @try
    {
        [os_ writeString:p->userId];
        [os_ writeString:p->firstName];
        [os_ writeString:p->lastName];
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
    peerPeerIdentifier* p = [[[self class] alloc] init];
    @try
    {
        p->userId = [is_ readString];
        p->firstName = [is_ readString];
        p->lastName = [is_ readString];
    }
    @catch(NSException *ex)
    {
        [p release];
        @throw ex;
    }
    return p;
}
@end

@implementation peerPeerException

@synthesize reason_;

-(NSString *) ice_name
{
    return @"peer::PeerException";
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

+(id) peerException:(NSString *)reason_p
{
    peerPeerException *s__ = [(peerPeerException *)[peerPeerException alloc] init:reason_p];
    [s__ autorelease];
    return s__;
}

+(id) peerException
{
    peerPeerException *s__ = [[peerPeerException alloc] init];
    [s__ autorelease];
    return s__;
}

-(id) copyWithZone:(NSZone *)zone_p
{
    return [(peerPeerException *)[[self class] allocWithZone:zone_p] init:reason_];
}

-(void) dealloc;
{
    [reason_ release];
    [super dealloc];
}

-(void) write__:(id<ICEOutputStream>)os_
{
    [os_ writeString:@"::peer::PeerException"];
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

@implementation peerInvalidIdentityException

-(NSString *) ice_name
{
    return @"peer::InvalidIdentityException";
}

+(id) invalidIdentityException:(NSString *)reason_p
{
    peerInvalidIdentityException *s__ = [(peerInvalidIdentityException *)[peerInvalidIdentityException alloc] init:reason_p];
    [s__ autorelease];
    return s__;
}

+(id) invalidIdentityException
{
    peerInvalidIdentityException *s__ = [[peerInvalidIdentityException alloc] init];
    [s__ autorelease];
    return s__;
}

-(void) write__:(id<ICEOutputStream>)os_
{
    [os_ writeString:@"::peer::InvalidIdentityException"];
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

@implementation peerPeerAccessException

-(NSString *) ice_name
{
    return @"peer::PeerAccessException";
}

+(id) peerAccessException:(NSString *)reason_p
{
    peerPeerAccessException *s__ = [(peerPeerAccessException *)[peerPeerAccessException alloc] init:reason_p];
    [s__ autorelease];
    return s__;
}

+(id) peerAccessException
{
    peerPeerAccessException *s__ = [[peerPeerAccessException alloc] init];
    [s__ autorelease];
    return s__;
}

-(void) write__:(id<ICEOutputStream>)os_
{
    [os_ writeString:@"::peer::PeerAccessException"];
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

@implementation peerPeerUnavailableException

-(NSString *) ice_name
{
    return @"peer::PeerUnavailableException";
}

+(id) peerUnavailableException:(NSString *)reason_p
{
    peerPeerUnavailableException *s__ = [(peerPeerUnavailableException *)[peerPeerUnavailableException alloc] init:reason_p];
    [s__ autorelease];
    return s__;
}

+(id) peerUnavailableException
{
    peerPeerUnavailableException *s__ = [[peerPeerUnavailableException alloc] init];
    [s__ autorelease];
    return s__;
}

-(void) write__:(id<ICEOutputStream>)os_
{
    [os_ writeString:@"::peer::PeerUnavailableException"];
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

@implementation peerPeerConnectionFailedException

-(NSString *) ice_name
{
    return @"peer::PeerConnectionFailedException";
}

+(id) peerConnectionFailedException:(NSString *)reason_p
{
    peerPeerConnectionFailedException *s__ = [(peerPeerConnectionFailedException *)[peerPeerConnectionFailedException alloc] init:reason_p];
    [s__ autorelease];
    return s__;
}

+(id) peerConnectionFailedException
{
    peerPeerConnectionFailedException *s__ = [[peerPeerConnectionFailedException alloc] init];
    [s__ autorelease];
    return s__;
}

-(void) write__:(id<ICEOutputStream>)os_
{
    [os_ writeString:@"::peer::PeerConnectionFailedException"];
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

@implementation peerDuplicateConnectionException

-(NSString *) ice_name
{
    return @"peer::DuplicateConnectionException";
}

+(id) duplicateConnectionException:(NSString *)reason_p
{
    peerDuplicateConnectionException *s__ = [(peerDuplicateConnectionException *)[peerDuplicateConnectionException alloc] init:reason_p];
    [s__ autorelease];
    return s__;
}

+(id) duplicateConnectionException
{
    peerDuplicateConnectionException *s__ = [[peerDuplicateConnectionException alloc] init];
    [s__ autorelease];
    return s__;
}

-(void) write__:(id<ICEOutputStream>)os_
{
    [os_ writeString:@"::peer::DuplicateConnectionException"];
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

@implementation peerRegistrationException

-(NSString *) ice_name
{
    return @"peer::RegistrationException";
}

+(id) registrationException:(NSString *)reason_p
{
    peerRegistrationException *s__ = [(peerRegistrationException *)[peerRegistrationException alloc] init:reason_p];
    [s__ autorelease];
    return s__;
}

+(id) registrationException
{
    peerRegistrationException *s__ = [[peerRegistrationException alloc] init];
    [s__ autorelease];
    return s__;
}

-(void) write__:(id<ICEOutputStream>)os_
{
    [os_ writeString:@"::peer::RegistrationException"];
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

@implementation peerUserConnectionEventHandler

+(id)objectWithDelegate:(id)delegate
{
    return [[[peerUserConnectionEventHandler alloc] initWithDelegate:delegate] autorelease];
}

-(void) write__:(id<ICEOutputStream>)os_
{
    [os_ writeTypeId:@"::peer::UserConnectionEventHandler"];
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

static NSString *peerUserConnectionEventHandler_ids__[] = 
{
    @"::Ice::Object",
    @"::peer::UserConnectionEventHandler"
};

+(BOOL)forcedLogoutNotification___:(id<peerUserConnectionEventHandler>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(forcedLogoutNotification:), current);
    [target forcedLogoutNotification:current];
    return YES;
}

static NSString *peerUserConnectionEventHandler_all__[] =
{
    @"forcedLogoutNotification",
    @"ice_id",
    @"ice_ids",
    @"ice_isA",
    @"ice_ping"
};

-(BOOL) dispatch__:(ICECurrent *)current is:(id<ICEInputStream>)is os:(id<ICEOutputStream>)os
{
    id target__ = [self target__];
    switch(ICEInternalLookupString(peerUserConnectionEventHandler_all__, sizeof(peerUserConnectionEventHandler_all__) / sizeof(NSString*), current.operation))
    {
        case 0:
            return [peerUserConnectionEventHandler forcedLogoutNotification___:(id<peerUserConnectionEventHandler>)target__ current:current is:is os:os];
        case 1:
            return [ICEObject ice_id___:(id<ICEObject>)self current:current is:is os:os];
        case 2:
            return [ICEObject ice_ids___:(id<ICEObject>)self current:current is:is os:os];
        case 3:
            return [ICEObject ice_isA___:(id<ICEObject>)self current:current is:is os:os];
        case 4:
            return [ICEObject ice_ping___:(id<ICEObject>)self current:current is:is os:os];
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
    *count = sizeof(peerUserConnectionEventHandler_ids__) / sizeof(NSString *);
    *idx = 1;
    return peerUserConnectionEventHandler_ids__;
}
@end

@implementation peerPeerConnectionEventHandler

+(id)objectWithDelegate:(id)delegate
{
    return [[[peerPeerConnectionEventHandler alloc] initWithDelegate:delegate] autorelease];
}

-(void) write__:(id<ICEOutputStream>)os_
{
    [os_ writeTypeId:@"::peer::PeerConnectionEventHandler"];
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

static NSString *peerPeerConnectionEventHandler_ids__[] = 
{
    @"::Ice::Object",
    @"::peer::PeerConnectionEventHandler"
};

+(BOOL)peerConnected___:(id<peerPeerConnectionEventHandler>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(peerConnected:accessLevel:peerProxy:current:), current);
    NSMutableString *peerUserId = nil;
    peerPeerAccessLevel accessLevel;
    id<ICEObjectPrx> peerProxy = nil;
    @try
    {
        peerUserId = [is_ readString];
        accessLevel = [is_ readEnumerator:9];
        peerProxy = [is_ readProxy:[ICEObjectPrx class]];
        [target peerConnected:peerUserId accessLevel:accessLevel peerProxy:peerProxy current:current];
    }
    @finally
    {
        [(id<NSObject>)peerUserId release];
        [(id<NSObject>)peerProxy release];
    }
    return YES;
}

+(BOOL)peerConnectedNoProxy___:(id<peerPeerConnectionEventHandler>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(peerConnectedNoProxy:accessLevel:current:), current);
    NSMutableString *peerUserId = nil;
    peerPeerAccessLevel accessLevel;
    @try
    {
        peerUserId = [is_ readString];
        accessLevel = [is_ readEnumerator:9];
        [target peerConnectedNoProxy:peerUserId accessLevel:accessLevel current:current];
    }
    @finally
    {
        [(id<NSObject>)peerUserId release];
    }
    return YES;
}

+(BOOL)peerDisconnected___:(id<peerPeerConnectionEventHandler>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(peerDisconnected:current:), current);
    NSMutableString *peerUserId = nil;
    @try
    {
        peerUserId = [is_ readString];
        [target peerDisconnected:peerUserId current:current];
    }
    @finally
    {
        [(id<NSObject>)peerUserId release];
    }
    return YES;
}

static NSString *peerPeerConnectionEventHandler_all__[] =
{
    @"ice_id",
    @"ice_ids",
    @"ice_isA",
    @"ice_ping",
    @"peerConnected",
    @"peerConnectedNoProxy",
    @"peerDisconnected"
};

-(BOOL) dispatch__:(ICECurrent *)current is:(id<ICEInputStream>)is os:(id<ICEOutputStream>)os
{
    id target__ = [self target__];
    switch(ICEInternalLookupString(peerPeerConnectionEventHandler_all__, sizeof(peerPeerConnectionEventHandler_all__) / sizeof(NSString*), current.operation))
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
            return [peerPeerConnectionEventHandler peerConnected___:(id<peerPeerConnectionEventHandler>)target__ current:current is:is os:os];
        case 5:
            return [peerPeerConnectionEventHandler peerConnectedNoProxy___:(id<peerPeerConnectionEventHandler>)target__ current:current is:is os:os];
        case 6:
            return [peerPeerConnectionEventHandler peerDisconnected___:(id<peerPeerConnectionEventHandler>)target__ current:current is:is os:os];
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
    *count = sizeof(peerPeerConnectionEventHandler_ids__) / sizeof(NSString *);
    *idx = 1;
    return peerPeerConnectionEventHandler_ids__;
}
@end

@implementation peerConnectionEventHandler

+(id)objectWithDelegate:(id)delegate
{
    return [[[peerConnectionEventHandler alloc] initWithDelegate:delegate] autorelease];
}

-(void) write__:(id<ICEOutputStream>)os_
{
    [os_ writeTypeId:@"::peer::ConnectionEventHandler"];
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

static NSString *peerConnectionEventHandler_ids__[] = 
{
    @"::Ice::Object",
    @"::peer::ConnectionEventHandler",
    @"::peer::PeerConnectionEventHandler",
    @"::peer::UserConnectionEventHandler"
};

static NSString *peerConnectionEventHandler_all__[] =
{
    @"forcedLogoutNotification",
    @"ice_id",
    @"ice_ids",
    @"ice_isA",
    @"ice_ping",
    @"peerConnected",
    @"peerConnectedNoProxy",
    @"peerDisconnected"
};

-(BOOL) dispatch__:(ICECurrent *)current is:(id<ICEInputStream>)is os:(id<ICEOutputStream>)os
{
    id target__ = [self target__];
    switch(ICEInternalLookupString(peerConnectionEventHandler_all__, sizeof(peerConnectionEventHandler_all__) / sizeof(NSString*), current.operation))
    {
        case 0:
            return [peerUserConnectionEventHandler forcedLogoutNotification___:(id<peerUserConnectionEventHandler>)target__ current:current is:is os:os];
        case 1:
            return [ICEObject ice_id___:(id<ICEObject>)self current:current is:is os:os];
        case 2:
            return [ICEObject ice_ids___:(id<ICEObject>)self current:current is:is os:os];
        case 3:
            return [ICEObject ice_isA___:(id<ICEObject>)self current:current is:is os:os];
        case 4:
            return [ICEObject ice_ping___:(id<ICEObject>)self current:current is:is os:os];
        case 5:
            return [peerPeerConnectionEventHandler peerConnected___:(id<peerPeerConnectionEventHandler>)target__ current:current is:is os:os];
        case 6:
            return [peerPeerConnectionEventHandler peerConnectedNoProxy___:(id<peerPeerConnectionEventHandler>)target__ current:current is:is os:os];
        case 7:
            return [peerPeerConnectionEventHandler peerDisconnected___:(id<peerPeerConnectionEventHandler>)target__ current:current is:is os:os];
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
    *count = sizeof(peerConnectionEventHandler_ids__) / sizeof(NSString *);
    *idx = 1;
    return peerConnectionEventHandler_ids__;
}
@end

@implementation peerPeerRegistrationHandler

+(id)objectWithDelegate:(id)delegate
{
    return [[[peerPeerRegistrationHandler alloc] initWithDelegate:delegate] autorelease];
}

-(void) write__:(id<ICEOutputStream>)os_
{
    [os_ writeTypeId:@"::peer::PeerRegistrationHandler"];
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

static NSString *peerPeerRegistrationHandler_ids__[] = 
{
    @"::Ice::Object",
    @"::peer::PeerRegistrationHandler"
};

+(BOOL)registerCallbacks___:(id<peerPeerRegistrationHandler>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(registerCallbacks:connectionEventHandlerProxy:current:), current);
    id<ICEObjectPrx> selfCallbackProxy = nil;
    id<peerConnectionEventHandlerPrx> connectionEventHandlerProxy = nil;
    @try
    {
        selfCallbackProxy = [is_ readProxy:[ICEObjectPrx class]];
        connectionEventHandlerProxy = (id<peerConnectionEventHandlerPrx>)[is_ readProxy:objc_getClass("peerConnectionEventHandlerPrx")];
        [target registerCallbacks:selfCallbackProxy connectionEventHandlerProxy:connectionEventHandlerProxy current:current];
    }
    @catch(peerRegistrationException *ex)
    {
        [os_ writeException:ex];
        return NO;
    }
    @finally
    {
        [(id<NSObject>)selfCallbackProxy release];
        [(id<NSObject>)connectionEventHandlerProxy release];
    }
    return YES;
}

+(BOOL)registerProxy___:(id<peerPeerRegistrationHandler>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(registerProxy:current:), current);
    id<ICEObjectPrx> proxy = nil;
    @try
    {
        proxy = [is_ readProxy:[ICEObjectPrx class]];
        [target registerProxy:proxy current:current];
    }
    @catch(peerRegistrationException *ex)
    {
        [os_ writeException:ex];
        return NO;
    }
    @finally
    {
        [(id<NSObject>)proxy release];
    }
    return YES;
}

+(BOOL)registerProxies___:(id<peerPeerRegistrationHandler>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(registerProxies:current:), current);
    peerMutableObjectProxyArray *proxies = nil;
    @try
    {
        proxies = [is_ readSequence:[ICEObjectPrx class]];
        [target registerProxies:proxies current:current];
    }
    @catch(peerRegistrationException *ex)
    {
        [os_ writeException:ex];
        return NO;
    }
    @finally
    {
        [(id<NSObject>)proxies release];
    }
    return YES;
}

+(BOOL)getPeerProxy___:(id<peerPeerRegistrationHandler>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(getPeerProxy:privateProxyIdentity:current:), current);
    NSMutableString *peerUserId = nil;
    ICEIdentity *privateProxyIdentity = nil;
    @try
    {
        peerUserId = [is_ readString];
        privateProxyIdentity = [ICEIdentity ice_readWithStream:is_];
        id<ICEObjectPrx> ret_ = [target getPeerProxy:peerUserId privateProxyIdentity:privateProxyIdentity current:current];
        [os_ writeProxy:ret_];
    }
    @catch(peerInvalidIdentityException *ex)
    {
        [os_ writeException:ex];
        return NO;
    }
    @catch(peerPeerAccessException *ex)
    {
        [os_ writeException:ex];
        return NO;
    }
    @finally
    {
        [(id<NSObject>)peerUserId release];
        [(id<NSObject>)privateProxyIdentity release];
    }
    return YES;
}

+(BOOL)getPeerProxies___:(id<peerPeerRegistrationHandler>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(getPeerProxies:privateProxyIdentities:current:), current);
    NSMutableString *peerUserId = nil;
    peerMutableIdentityArray *privateProxyIdentities = nil;
    @try
    {
        peerUserId = [is_ readString];
        privateProxyIdentities = [peerIdentityArrayHelper ice_readWithStream:is_];
        NSDictionary *ret_ = [target getPeerProxies:peerUserId privateProxyIdentities:privateProxyIdentities current:current];
        [peerIdentityToProxyMapHelper ice_writeWithStream:ret_ stream:os_];
    }
    @catch(peerInvalidIdentityException *ex)
    {
        [os_ writeException:ex];
        return NO;
    }
    @catch(peerPeerAccessException *ex)
    {
        [os_ writeException:ex];
        return NO;
    }
    @finally
    {
        [(id<NSObject>)peerUserId release];
        [(id<NSObject>)privateProxyIdentities release];
    }
    return YES;
}

static NSString *peerPeerRegistrationHandler_all__[] =
{
    @"getPeerProxies",
    @"getPeerProxy",
    @"ice_id",
    @"ice_ids",
    @"ice_isA",
    @"ice_ping",
    @"registerCallbacks",
    @"registerProxies",
    @"registerProxy"
};

-(BOOL) dispatch__:(ICECurrent *)current is:(id<ICEInputStream>)is os:(id<ICEOutputStream>)os
{
    id target__ = [self target__];
    switch(ICEInternalLookupString(peerPeerRegistrationHandler_all__, sizeof(peerPeerRegistrationHandler_all__) / sizeof(NSString*), current.operation))
    {
        case 0:
            return [peerPeerRegistrationHandler getPeerProxies___:(id<peerPeerRegistrationHandler>)target__ current:current is:is os:os];
        case 1:
            return [peerPeerRegistrationHandler getPeerProxy___:(id<peerPeerRegistrationHandler>)target__ current:current is:is os:os];
        case 2:
            return [ICEObject ice_id___:(id<ICEObject>)self current:current is:is os:os];
        case 3:
            return [ICEObject ice_ids___:(id<ICEObject>)self current:current is:is os:os];
        case 4:
            return [ICEObject ice_isA___:(id<ICEObject>)self current:current is:is os:os];
        case 5:
            return [ICEObject ice_ping___:(id<ICEObject>)self current:current is:is os:os];
        case 6:
            return [peerPeerRegistrationHandler registerCallbacks___:(id<peerPeerRegistrationHandler>)target__ current:current is:is os:os];
        case 7:
            return [peerPeerRegistrationHandler registerProxies___:(id<peerPeerRegistrationHandler>)target__ current:current is:is os:os];
        case 8:
            return [peerPeerRegistrationHandler registerProxy___:(id<peerPeerRegistrationHandler>)target__ current:current is:is os:os];
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
    *count = sizeof(peerPeerRegistrationHandler_ids__) / sizeof(NSString *);
    *idx = 1;
    return peerPeerRegistrationHandler_ids__;
}
@end

@implementation peerUserSession

+(id)objectWithDelegate:(id)delegate
{
    return [[[peerUserSession alloc] initWithDelegate:delegate] autorelease];
}

-(void) write__:(id<ICEOutputStream>)os_
{
    [os_ writeTypeId:@"::peer::UserSession"];
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

static NSString *peerUserSession_ids__[] = 
{
    @"::Glacier2::Session",
    @"::Ice::Object",
    @"::peer::PeerRegistrationHandler",
    @"::peer::UserSession"
};

+(BOOL)getMyPeers___:(id<peerUserSession>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(getMyPeers:), current);
    @try
    {
        peerPeerIdentifierSet *ret_ = [target getMyPeers:current];
        [peerPeerIdentifierSetHelper ice_writeWithStream:ret_ stream:os_];
    }
    @catch(peerPeerException *ex)
    {
        [os_ writeException:ex];
        return NO;
    }
    @finally
    {
    }
    return YES;
}

+(BOOL)getMyAvailablePeers___:(id<peerUserSession>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(getMyAvailablePeers:), current);
    @try
    {
        peerPeerIdentifierSet *ret_ = [target getMyAvailablePeers:current];
        [peerPeerIdentifierSetHelper ice_writeWithStream:ret_ stream:os_];
    }
    @catch(peerPeerException *ex)
    {
        [os_ writeException:ex];
        return NO;
    }
    @finally
    {
    }
    return YES;
}

+(BOOL)getMyUnavailablePeers___:(id<peerUserSession>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(getMyUnavailablePeers:), current);
    @try
    {
        peerPeerIdentifierSet *ret_ = [target getMyUnavailablePeers:current];
        [peerPeerIdentifierSetHelper ice_writeWithStream:ret_ stream:os_];
    }
    @catch(peerPeerException *ex)
    {
        [os_ writeException:ex];
        return NO;
    }
    @finally
    {
    }
    return YES;
}

+(BOOL)connectToPeer___:(id<peerUserSession>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(connectToPeer:current:), current);
    NSMutableString *peerUserId = nil;
    @try
    {
        peerUserId = [is_ readString];
        id<ICEObjectPrx> ret_ = [target connectToPeer:peerUserId current:current];
        [os_ writeProxy:ret_];
    }
    @catch(peerDuplicateConnectionException *ex)
    {
        [os_ writeException:ex];
        return NO;
    }
    @catch(peerPeerAccessException *ex)
    {
        [os_ writeException:ex];
        return NO;
    }
    @catch(peerPeerConnectionFailedException *ex)
    {
        [os_ writeException:ex];
        return NO;
    }
    @catch(peerPeerUnavailableException *ex)
    {
        [os_ writeException:ex];
        return NO;
    }
    @finally
    {
        [(id<NSObject>)peerUserId release];
    }
    return YES;
}

+(BOOL)getConnectedPeers___:(id<peerUserSession>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(getConnectedPeers:), current);
    @try
    {
        peerPeerIdentifierSet *ret_ = [target getConnectedPeers:current];
        [peerPeerIdentifierSetHelper ice_writeWithStream:ret_ stream:os_];
    }
    @catch(peerPeerException *ex)
    {
        [os_ writeException:ex];
        return NO;
    }
    @finally
    {
    }
    return YES;
}

+(BOOL)disconnectFromPeer___:(id<peerUserSession>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(disconnectFromPeer:current:), current);
    NSMutableString *peerUserId = nil;
    @try
    {
        peerUserId = [is_ readString];
        [target disconnectFromPeer:peerUserId current:current];
    }
    @finally
    {
        [(id<NSObject>)peerUserId release];
    }
    return YES;
}

+(BOOL)disconnectFromPeers___:(id<peerUserSession>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(disconnectFromPeers:), current);
    [target disconnectFromPeers:current];
    return YES;
}

static NSString *peerUserSession_all__[] =
{
    @"connectToPeer",
    @"destroy",
    @"disconnectFromPeer",
    @"disconnectFromPeers",
    @"getConnectedPeers",
    @"getMyAvailablePeers",
    @"getMyPeers",
    @"getMyUnavailablePeers",
    @"getPeerProxies",
    @"getPeerProxy",
    @"ice_id",
    @"ice_ids",
    @"ice_isA",
    @"ice_ping",
    @"registerCallbacks",
    @"registerProxies",
    @"registerProxy"
};

-(BOOL) dispatch__:(ICECurrent *)current is:(id<ICEInputStream>)is os:(id<ICEOutputStream>)os
{
    id target__ = [self target__];
    switch(ICEInternalLookupString(peerUserSession_all__, sizeof(peerUserSession_all__) / sizeof(NSString*), current.operation))
    {
        case 0:
            return [peerUserSession connectToPeer___:(id<peerUserSession>)target__ current:current is:is os:os];
        case 1:
            return [Glacier2Session destroy___:(id<Glacier2Session>)target__ current:current is:is os:os];
        case 2:
            return [peerUserSession disconnectFromPeer___:(id<peerUserSession>)target__ current:current is:is os:os];
        case 3:
            return [peerUserSession disconnectFromPeers___:(id<peerUserSession>)target__ current:current is:is os:os];
        case 4:
            return [peerUserSession getConnectedPeers___:(id<peerUserSession>)target__ current:current is:is os:os];
        case 5:
            return [peerUserSession getMyAvailablePeers___:(id<peerUserSession>)target__ current:current is:is os:os];
        case 6:
            return [peerUserSession getMyPeers___:(id<peerUserSession>)target__ current:current is:is os:os];
        case 7:
            return [peerUserSession getMyUnavailablePeers___:(id<peerUserSession>)target__ current:current is:is os:os];
        case 8:
            return [peerPeerRegistrationHandler getPeerProxies___:(id<peerPeerRegistrationHandler>)target__ current:current is:is os:os];
        case 9:
            return [peerPeerRegistrationHandler getPeerProxy___:(id<peerPeerRegistrationHandler>)target__ current:current is:is os:os];
        case 10:
            return [ICEObject ice_id___:(id<ICEObject>)self current:current is:is os:os];
        case 11:
            return [ICEObject ice_ids___:(id<ICEObject>)self current:current is:is os:os];
        case 12:
            return [ICEObject ice_isA___:(id<ICEObject>)self current:current is:is os:os];
        case 13:
            return [ICEObject ice_ping___:(id<ICEObject>)self current:current is:is os:os];
        case 14:
            return [peerPeerRegistrationHandler registerCallbacks___:(id<peerPeerRegistrationHandler>)target__ current:current is:is os:os];
        case 15:
            return [peerPeerRegistrationHandler registerProxies___:(id<peerPeerRegistrationHandler>)target__ current:current is:is os:os];
        case 16:
            return [peerPeerRegistrationHandler registerProxy___:(id<peerPeerRegistrationHandler>)target__ current:current is:is os:os];
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
    *count = sizeof(peerUserSession_ids__) / sizeof(NSString *);
    *idx = 3;
    return peerUserSession_ids__;
}
@end

@implementation peerUserConnectionEventHandlerPrx

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
    return @"::peer::UserConnectionEventHandler";
}

+(void) forcedLogoutNotification___:(ICEObjectPrx <peerUserConnectionEventHandlerPrx> *)prx_ context:(ICEContext *)ctx_
{
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    @try
    {
        [prx_ invoke__:@"forcedLogoutNotification" mode:ICENormal os:os_ is:&is_ context:ctx_];
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

+(BOOL) forcedLogoutNotification_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ prx:(ICEObjectPrx <peerUserConnectionEventHandlerPrx> *)prx_ context:(ICEContext *)ctx_
{
    SEL finished_ = @selector(forcedLogoutNotification_async_finished___:response:exception:ok:is:);
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    @try
    {
        return [prx_ invoke_async__:target_ response:response_ exception:exception_ sent:sent_ finishedClass:self finished:finished_ operation:@"forcedLogoutNotification" mode:ICENormal os:os_ context:ctx_];
    }
    @finally
    {
        [os_ release];
    }
    return FALSE; // Keep the compiler happy.
}

+(void) forcedLogoutNotification_async_finished___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ ok:(BOOL)ok_ is:(id<ICEInputStream>)is_
{
    @try
    {
        if(!ok_)
        {
            [is_ throwException];
        }
        objc_msgSend(target_, response_);
    }
    @catch(ICEUserException *ex_)
    {
        ICEUnknownUserException* uuex_;
        uuex_ = [ICEUnknownUserException unknownUserException:__FILE__ line:__LINE__ unknown:[ex_ ice_name]];
        objc_msgSend(target_, exception_, uuex_);
    }
}
@end

@implementation peerPeerConnectionEventHandlerPrx

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

+(NSString *) ice_staticId
{
    return @"::peer::PeerConnectionEventHandler";
}

+(void) peerConnected___:(NSString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel peerProxy:(id<ICEObjectPrx>)peerProxy prx:(ICEObjectPrx <peerPeerConnectionEventHandlerPrx> *)prx_ context:(ICEContext *)ctx_
{
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    @try
    {
        [os_ writeString:peerUserId];
        [os_ writeEnumerator:accessLevel limit:9];
        [os_ writeProxy:peerProxy];
        [prx_ invoke__:@"peerConnected" mode:ICENormal os:os_ is:&is_ context:ctx_];
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

+(BOOL) peerConnected_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ peerUserId:(NSString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel peerProxy:(id<ICEObjectPrx>)peerProxy prx:(ICEObjectPrx <peerPeerConnectionEventHandlerPrx> *)prx_ context:(ICEContext *)ctx_
{
    SEL finished_ = @selector(peerConnected_async_finished___:response:exception:ok:is:);
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    @try
    {
        [os_ writeString:peerUserId];
        [os_ writeEnumerator:accessLevel limit:9];
        [os_ writeProxy:peerProxy];
        return [prx_ invoke_async__:target_ response:response_ exception:exception_ sent:sent_ finishedClass:self finished:finished_ operation:@"peerConnected" mode:ICENormal os:os_ context:ctx_];
    }
    @finally
    {
        [os_ release];
    }
    return FALSE; // Keep the compiler happy.
}

+(void) peerConnected_async_finished___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ ok:(BOOL)ok_ is:(id<ICEInputStream>)is_
{
    @try
    {
        if(!ok_)
        {
            [is_ throwException];
        }
        objc_msgSend(target_, response_);
    }
    @catch(ICEUserException *ex_)
    {
        ICEUnknownUserException* uuex_;
        uuex_ = [ICEUnknownUserException unknownUserException:__FILE__ line:__LINE__ unknown:[ex_ ice_name]];
        objc_msgSend(target_, exception_, uuex_);
    }
}

+(void) peerConnectedNoProxy___:(NSString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel prx:(ICEObjectPrx <peerPeerConnectionEventHandlerPrx> *)prx_ context:(ICEContext *)ctx_
{
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    @try
    {
        [os_ writeString:peerUserId];
        [os_ writeEnumerator:accessLevel limit:9];
        [prx_ invoke__:@"peerConnectedNoProxy" mode:ICENormal os:os_ is:&is_ context:ctx_];
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

+(BOOL) peerConnectedNoProxy_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ peerUserId:(NSString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel prx:(ICEObjectPrx <peerPeerConnectionEventHandlerPrx> *)prx_ context:(ICEContext *)ctx_
{
    SEL finished_ = @selector(peerConnectedNoProxy_async_finished___:response:exception:ok:is:);
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    @try
    {
        [os_ writeString:peerUserId];
        [os_ writeEnumerator:accessLevel limit:9];
        return [prx_ invoke_async__:target_ response:response_ exception:exception_ sent:sent_ finishedClass:self finished:finished_ operation:@"peerConnectedNoProxy" mode:ICENormal os:os_ context:ctx_];
    }
    @finally
    {
        [os_ release];
    }
    return FALSE; // Keep the compiler happy.
}

+(void) peerConnectedNoProxy_async_finished___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ ok:(BOOL)ok_ is:(id<ICEInputStream>)is_
{
    @try
    {
        if(!ok_)
        {
            [is_ throwException];
        }
        objc_msgSend(target_, response_);
    }
    @catch(ICEUserException *ex_)
    {
        ICEUnknownUserException* uuex_;
        uuex_ = [ICEUnknownUserException unknownUserException:__FILE__ line:__LINE__ unknown:[ex_ ice_name]];
        objc_msgSend(target_, exception_, uuex_);
    }
}

+(void) peerDisconnected___:(NSString *)peerUserId prx:(ICEObjectPrx <peerPeerConnectionEventHandlerPrx> *)prx_ context:(ICEContext *)ctx_
{
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    @try
    {
        [os_ writeString:peerUserId];
        [prx_ invoke__:@"peerDisconnected" mode:ICENormal os:os_ is:&is_ context:ctx_];
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

+(BOOL) peerDisconnected_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ peerUserId:(NSString *)peerUserId prx:(ICEObjectPrx <peerPeerConnectionEventHandlerPrx> *)prx_ context:(ICEContext *)ctx_
{
    SEL finished_ = @selector(peerDisconnected_async_finished___:response:exception:ok:is:);
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    @try
    {
        [os_ writeString:peerUserId];
        return [prx_ invoke_async__:target_ response:response_ exception:exception_ sent:sent_ finishedClass:self finished:finished_ operation:@"peerDisconnected" mode:ICENormal os:os_ context:ctx_];
    }
    @finally
    {
        [os_ release];
    }
    return FALSE; // Keep the compiler happy.
}

+(void) peerDisconnected_async_finished___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ ok:(BOOL)ok_ is:(id<ICEInputStream>)is_
{
    @try
    {
        if(!ok_)
        {
            [is_ throwException];
        }
        objc_msgSend(target_, response_);
    }
    @catch(ICEUserException *ex_)
    {
        ICEUnknownUserException* uuex_;
        uuex_ = [ICEUnknownUserException unknownUserException:__FILE__ line:__LINE__ unknown:[ex_ ice_name]];
        objc_msgSend(target_, exception_, uuex_);
    }
}
@end

@implementation peerConnectionEventHandlerPrx

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
    return @"::peer::ConnectionEventHandler";
}
@end

@implementation peerPeerRegistrationHandlerPrx

-(peerMutableIdentityToProxyMap *) getPeerProxies:(NSString *)peerUserId privateProxyIdentities:(peerIdentityArray *)privateProxyIdentities
{
    return [peerPeerRegistrationHandlerPrx getPeerProxies___:peerUserId privateProxyIdentities:privateProxyIdentities prx:self context:nil];
}

-(peerMutableIdentityToProxyMap *) getPeerProxies:(NSString *)peerUserId privateProxyIdentities:(peerIdentityArray *)privateProxyIdentities context:(ICEContext *)ctx_
{
    return [peerPeerRegistrationHandlerPrx getPeerProxies___:peerUserId privateProxyIdentities:privateProxyIdentities prx:self context:ctx_];
}

-(id<ICEObjectPrx>) getPeerProxy:(NSString *)peerUserId privateProxyIdentity:(ICEIdentity *)privateProxyIdentity
{
    return [peerPeerRegistrationHandlerPrx getPeerProxy___:peerUserId privateProxyIdentity:privateProxyIdentity prx:self context:nil];
}

-(id<ICEObjectPrx>) getPeerProxy:(NSString *)peerUserId privateProxyIdentity:(ICEIdentity *)privateProxyIdentity context:(ICEContext *)ctx_
{
    return [peerPeerRegistrationHandlerPrx getPeerProxy___:peerUserId privateProxyIdentity:privateProxyIdentity prx:self context:ctx_];
}

-(void) registerCallbacks:(id<ICEObjectPrx>)selfCallbackProxy connectionEventHandlerProxy:(id<peerConnectionEventHandlerPrx>)connectionEventHandlerProxy
{
    [peerPeerRegistrationHandlerPrx registerCallbacks___:selfCallbackProxy connectionEventHandlerProxy:connectionEventHandlerProxy prx:self context:nil];
}

-(void) registerCallbacks:(id<ICEObjectPrx>)selfCallbackProxy connectionEventHandlerProxy:(id<peerConnectionEventHandlerPrx>)connectionEventHandlerProxy context:(ICEContext *)ctx_
{
    [peerPeerRegistrationHandlerPrx registerCallbacks___:selfCallbackProxy connectionEventHandlerProxy:connectionEventHandlerProxy prx:self context:ctx_];
}

-(void) registerProxies:(peerObjectProxyArray *)proxies
{
    [peerPeerRegistrationHandlerPrx registerProxies___:proxies prx:self context:nil];
}

-(void) registerProxies:(peerObjectProxyArray *)proxies context:(ICEContext *)ctx_
{
    [peerPeerRegistrationHandlerPrx registerProxies___:proxies prx:self context:ctx_];
}

-(void) registerProxy:(id<ICEObjectPrx>)proxy
{
    [peerPeerRegistrationHandlerPrx registerProxy___:proxy prx:self context:nil];
}

-(void) registerProxy:(id<ICEObjectPrx>)proxy context:(ICEContext *)ctx_
{
    [peerPeerRegistrationHandlerPrx registerProxy___:proxy prx:self context:ctx_];
}

+(NSString *) ice_staticId
{
    return @"::peer::PeerRegistrationHandler";
}

+(void) registerCallbacks___:(id<ICEObjectPrx>)selfCallbackProxy connectionEventHandlerProxy:(id<peerConnectionEventHandlerPrx>)connectionEventHandlerProxy prx:(ICEObjectPrx <peerPeerRegistrationHandlerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"registerCallbacks"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    @try
    {
        [os_ writeProxy:selfCallbackProxy];
        [os_ writeProxy:(id<ICEObjectPrx>)connectionEventHandlerProxy];
        [prx_ invoke__:@"registerCallbacks" mode:ICENormal os:os_ is:&is_ context:ctx_];
    }
    @catch(peerRegistrationException *ex_)
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

+(void) registerProxy___:(id<ICEObjectPrx>)proxy prx:(ICEObjectPrx <peerPeerRegistrationHandlerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"registerProxy"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    @try
    {
        [os_ writeProxy:proxy];
        [prx_ invoke__:@"registerProxy" mode:ICENormal os:os_ is:&is_ context:ctx_];
    }
    @catch(peerRegistrationException *ex_)
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

+(void) registerProxies___:(peerObjectProxyArray *)proxies prx:(ICEObjectPrx <peerPeerRegistrationHandlerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"registerProxies"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    @try
    {
        [os_ writeSequence:proxies type:[ICEObjectPrx class]];
        [prx_ invoke__:@"registerProxies" mode:ICENormal os:os_ is:&is_ context:ctx_];
    }
    @catch(peerRegistrationException *ex_)
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

+(id<ICEObjectPrx>) getPeerProxy___:(NSString *)peerUserId privateProxyIdentity:(ICEIdentity *)privateProxyIdentity prx:(ICEObjectPrx <peerPeerRegistrationHandlerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"getPeerProxy"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    id<ICEObjectPrx> ret_ = nil;
    @try
    {
        [os_ writeString:peerUserId];
        [ICEIdentity ice_writeWithStream:privateProxyIdentity stream:os_];
        [prx_ invoke__:@"getPeerProxy" mode:ICENormal os:os_ is:&is_ context:ctx_];
        ret_ = [is_ readProxy:[ICEObjectPrx class]];
    }
    @catch(peerInvalidIdentityException *ex_)
    {
        @throw;
    }
    @catch(peerPeerAccessException *ex_)
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

+(peerMutableIdentityToProxyMap *) getPeerProxies___:(NSString *)peerUserId privateProxyIdentities:(peerIdentityArray *)privateProxyIdentities prx:(ICEObjectPrx <peerPeerRegistrationHandlerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"getPeerProxies"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    peerMutableIdentityToProxyMap *ret_ = nil;
    @try
    {
        [os_ writeString:peerUserId];
        [peerIdentityArrayHelper ice_writeWithStream:privateProxyIdentities stream:os_];
        [prx_ invoke__:@"getPeerProxies" mode:ICENormal os:os_ is:&is_ context:ctx_];
        ret_ = [peerIdentityToProxyMapHelper ice_readWithStream:is_];
    }
    @catch(peerInvalidIdentityException *ex_)
    {
        @throw;
    }
    @catch(peerPeerAccessException *ex_)
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
@end

@implementation peerUserSessionPrx

-(void) destroy
{
    [Glacier2SessionPrx destroy___:self context:nil];
}

-(void) destroy:(ICEContext *)ctx_
{
    [Glacier2SessionPrx destroy___:self context:ctx_];
}

-(BOOL) destroy_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_
{
    return [Glacier2SessionPrx destroy_async___:target_ response:response_ exception:exception_ sent:nil  prx:self context:nil];
}

-(BOOL) destroy_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ context:(ICEContext *)ctx_
{
    return [Glacier2SessionPrx destroy_async___:target_ response:response_ exception:exception_ sent:nil  prx:self context:ctx_];
}

-(BOOL) destroy_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_
{
    return [Glacier2SessionPrx destroy_async___:target_ response:response_ exception:exception_ sent:sent_  prx:self context:nil];
}

-(BOOL) destroy_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ context:(ICEContext *)ctx_
{
    return [Glacier2SessionPrx destroy_async___:target_ response:response_ exception:exception_ sent:sent_  prx:self context:ctx_];
}

-(peerMutableIdentityToProxyMap *) getPeerProxies:(NSString *)peerUserId privateProxyIdentities:(peerIdentityArray *)privateProxyIdentities
{
    return [peerPeerRegistrationHandlerPrx getPeerProxies___:peerUserId privateProxyIdentities:privateProxyIdentities prx:self context:nil];
}

-(peerMutableIdentityToProxyMap *) getPeerProxies:(NSString *)peerUserId privateProxyIdentities:(peerIdentityArray *)privateProxyIdentities context:(ICEContext *)ctx_
{
    return [peerPeerRegistrationHandlerPrx getPeerProxies___:peerUserId privateProxyIdentities:privateProxyIdentities prx:self context:ctx_];
}

-(id<ICEObjectPrx>) getPeerProxy:(NSString *)peerUserId privateProxyIdentity:(ICEIdentity *)privateProxyIdentity
{
    return [peerPeerRegistrationHandlerPrx getPeerProxy___:peerUserId privateProxyIdentity:privateProxyIdentity prx:self context:nil];
}

-(id<ICEObjectPrx>) getPeerProxy:(NSString *)peerUserId privateProxyIdentity:(ICEIdentity *)privateProxyIdentity context:(ICEContext *)ctx_
{
    return [peerPeerRegistrationHandlerPrx getPeerProxy___:peerUserId privateProxyIdentity:privateProxyIdentity prx:self context:ctx_];
}

-(void) registerCallbacks:(id<ICEObjectPrx>)selfCallbackProxy connectionEventHandlerProxy:(id<peerConnectionEventHandlerPrx>)connectionEventHandlerProxy
{
    [peerPeerRegistrationHandlerPrx registerCallbacks___:selfCallbackProxy connectionEventHandlerProxy:connectionEventHandlerProxy prx:self context:nil];
}

-(void) registerCallbacks:(id<ICEObjectPrx>)selfCallbackProxy connectionEventHandlerProxy:(id<peerConnectionEventHandlerPrx>)connectionEventHandlerProxy context:(ICEContext *)ctx_
{
    [peerPeerRegistrationHandlerPrx registerCallbacks___:selfCallbackProxy connectionEventHandlerProxy:connectionEventHandlerProxy prx:self context:ctx_];
}

-(void) registerProxies:(peerObjectProxyArray *)proxies
{
    [peerPeerRegistrationHandlerPrx registerProxies___:proxies prx:self context:nil];
}

-(void) registerProxies:(peerObjectProxyArray *)proxies context:(ICEContext *)ctx_
{
    [peerPeerRegistrationHandlerPrx registerProxies___:proxies prx:self context:ctx_];
}

-(void) registerProxy:(id<ICEObjectPrx>)proxy
{
    [peerPeerRegistrationHandlerPrx registerProxy___:proxy prx:self context:nil];
}

-(void) registerProxy:(id<ICEObjectPrx>)proxy context:(ICEContext *)ctx_
{
    [peerPeerRegistrationHandlerPrx registerProxy___:proxy prx:self context:ctx_];
}

-(id<ICEObjectPrx>) connectToPeer:(NSString *)peerUserId
{
    return [peerUserSessionPrx connectToPeer___:peerUserId prx:self context:nil];
}

-(id<ICEObjectPrx>) connectToPeer:(NSString *)peerUserId context:(ICEContext *)ctx_
{
    return [peerUserSessionPrx connectToPeer___:peerUserId prx:self context:ctx_];
}

-(void) disconnectFromPeer:(NSString *)peerUserId
{
    [peerUserSessionPrx disconnectFromPeer___:peerUserId prx:self context:nil];
}

-(void) disconnectFromPeer:(NSString *)peerUserId context:(ICEContext *)ctx_
{
    [peerUserSessionPrx disconnectFromPeer___:peerUserId prx:self context:ctx_];
}

-(void) disconnectFromPeers
{
    [peerUserSessionPrx disconnectFromPeers___:self context:nil];
}

-(void) disconnectFromPeers:(ICEContext *)ctx_
{
    [peerUserSessionPrx disconnectFromPeers___:self context:ctx_];
}

-(peerMutablePeerIdentifierSet *) getConnectedPeers
{
    return [peerUserSessionPrx getConnectedPeers___:self context:nil];
}

-(peerMutablePeerIdentifierSet *) getConnectedPeers:(ICEContext *)ctx_
{
    return [peerUserSessionPrx getConnectedPeers___:self context:ctx_];
}

-(peerMutablePeerIdentifierSet *) getMyAvailablePeers
{
    return [peerUserSessionPrx getMyAvailablePeers___:self context:nil];
}

-(peerMutablePeerIdentifierSet *) getMyAvailablePeers:(ICEContext *)ctx_
{
    return [peerUserSessionPrx getMyAvailablePeers___:self context:ctx_];
}

-(peerMutablePeerIdentifierSet *) getMyPeers
{
    return [peerUserSessionPrx getMyPeers___:self context:nil];
}

-(peerMutablePeerIdentifierSet *) getMyPeers:(ICEContext *)ctx_
{
    return [peerUserSessionPrx getMyPeers___:self context:ctx_];
}

-(peerMutablePeerIdentifierSet *) getMyUnavailablePeers
{
    return [peerUserSessionPrx getMyUnavailablePeers___:self context:nil];
}

-(peerMutablePeerIdentifierSet *) getMyUnavailablePeers:(ICEContext *)ctx_
{
    return [peerUserSessionPrx getMyUnavailablePeers___:self context:ctx_];
}

+(NSString *) ice_staticId
{
    return @"::peer::UserSession";
}

+(peerMutablePeerIdentifierSet *) getMyPeers___:(ICEObjectPrx <peerUserSessionPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"getMyPeers"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    peerMutablePeerIdentifierSet *ret_ = nil;
    @try
    {
        [prx_ invoke__:@"getMyPeers" mode:ICENormal os:os_ is:&is_ context:ctx_];
        ret_ = [peerPeerIdentifierSetHelper ice_readWithStream:is_];
    }
    @catch(peerPeerException *ex_)
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

+(peerMutablePeerIdentifierSet *) getMyAvailablePeers___:(ICEObjectPrx <peerUserSessionPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"getMyAvailablePeers"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    peerMutablePeerIdentifierSet *ret_ = nil;
    @try
    {
        [prx_ invoke__:@"getMyAvailablePeers" mode:ICENormal os:os_ is:&is_ context:ctx_];
        ret_ = [peerPeerIdentifierSetHelper ice_readWithStream:is_];
    }
    @catch(peerPeerException *ex_)
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

+(peerMutablePeerIdentifierSet *) getMyUnavailablePeers___:(ICEObjectPrx <peerUserSessionPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"getMyUnavailablePeers"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    peerMutablePeerIdentifierSet *ret_ = nil;
    @try
    {
        [prx_ invoke__:@"getMyUnavailablePeers" mode:ICENormal os:os_ is:&is_ context:ctx_];
        ret_ = [peerPeerIdentifierSetHelper ice_readWithStream:is_];
    }
    @catch(peerPeerException *ex_)
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

+(id<ICEObjectPrx>) connectToPeer___:(NSString *)peerUserId prx:(ICEObjectPrx <peerUserSessionPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"connectToPeer"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    id<ICEObjectPrx> ret_ = nil;
    @try
    {
        [os_ writeString:peerUserId];
        [prx_ invoke__:@"connectToPeer" mode:ICENormal os:os_ is:&is_ context:ctx_];
        ret_ = [is_ readProxy:[ICEObjectPrx class]];
    }
    @catch(peerDuplicateConnectionException *ex_)
    {
        @throw;
    }
    @catch(peerPeerAccessException *ex_)
    {
        @throw;
    }
    @catch(peerPeerConnectionFailedException *ex_)
    {
        @throw;
    }
    @catch(peerPeerUnavailableException *ex_)
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

+(peerMutablePeerIdentifierSet *) getConnectedPeers___:(ICEObjectPrx <peerUserSessionPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"getConnectedPeers"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    peerMutablePeerIdentifierSet *ret_ = nil;
    @try
    {
        [prx_ invoke__:@"getConnectedPeers" mode:ICENormal os:os_ is:&is_ context:ctx_];
        ret_ = [peerPeerIdentifierSetHelper ice_readWithStream:is_];
    }
    @catch(peerPeerException *ex_)
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

+(void) disconnectFromPeer___:(NSString *)peerUserId prx:(ICEObjectPrx <peerUserSessionPrx> *)prx_ context:(ICEContext *)ctx_
{
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    @try
    {
        [os_ writeString:peerUserId];
        [prx_ invoke__:@"disconnectFromPeer" mode:ICENormal os:os_ is:&is_ context:ctx_];
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

+(void) disconnectFromPeers___:(ICEObjectPrx <peerUserSessionPrx> *)prx_ context:(ICEContext *)ctx_
{
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    @try
    {
        [prx_ invoke__:@"disconnectFromPeers" mode:ICENormal os:os_ is:&is_ context:ctx_];
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

@implementation peerPeerAccessLevelHelper
+(ICEInt) getLimit
{
    return 9;
}
@end

@implementation peerIdentityArrayHelper
+(Class) getContained
{
    return [ICEIdentity class];
}
@end

@implementation peerIdentityToProxyMapHelper
+(ICEKeyValueTypeHelper) getContained
{
    ICEKeyValueTypeHelper c;
    c.key = [ICEIdentity class];
    c.value = [ICEObjectPrx class];
    return c;
}
@end

@implementation peerPeerIdentifierSetHelper
+(Class) getContained
{
    return [peerPeerIdentifier class];
}
@end
