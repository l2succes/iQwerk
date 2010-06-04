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

#import <Ice/Config.h>
#import <Ice/Proxy.h>
#import <Ice/Object.h>
#import <Ice/Current.h>
#import <Ice/Exception.h>
#import <Ice/Stream.h>
#import <Ice/Identity.h>
#import <Glacier2/Session.h>

@class peerUserConnectionEventHandler;
@protocol peerUserConnectionEventHandler;

@class peerPeerConnectionEventHandler;
@protocol peerPeerConnectionEventHandler;

@class peerConnectionEventHandler;
@protocol peerConnectionEventHandler;

@class peerPeerRegistrationHandler;
@protocol peerPeerRegistrationHandler;

@class peerUserSession;
@protocol peerUserSession;

@class peerUserConnectionEventHandlerPrx;
@protocol peerUserConnectionEventHandlerPrx;

@class peerPeerConnectionEventHandlerPrx;
@protocol peerPeerConnectionEventHandlerPrx;

@class peerConnectionEventHandlerPrx;
@protocol peerConnectionEventHandlerPrx;

@class peerPeerRegistrationHandlerPrx;
@protocol peerPeerRegistrationHandlerPrx;

@class peerUserSessionPrx;
@protocol peerUserSessionPrx;

typedef enum
{
    peerAccessLevelOwner,
    peerAccessLevelOwnerRestricted,
    peerAccessLevelNormalEnhanced,
    peerAccessLevelNormal,
    peerAccessLevelNormalRestricted,
    peerAccessLevelGuestEnhanced,
    peerAccessLevelGuest,
    peerAccessLevelGuestRestricted,
    peerAccessLevelNone
} peerPeerAccessLevel;

typedef NSArray peerIdentityArray;
typedef NSMutableArray peerMutableIdentityArray;

typedef NSArray peerObjectProxyArray;
typedef NSMutableArray peerMutableObjectProxyArray;

typedef NSDictionary peerIdentityToProxyMap;
typedef NSMutableDictionary peerMutableIdentityToProxyMap;

@interface peerPeerIdentifier : NSObject <NSCopying>
{
    @private
        NSString *userId;
        NSString *firstName;
        NSString *lastName;
}

@property(nonatomic, retain) NSString *userId;
@property(nonatomic, retain) NSString *firstName;
@property(nonatomic, retain) NSString *lastName;

-(id) init:(NSString *)userId firstName:(NSString *)firstName lastName:(NSString *)lastName;
+(id) peerIdentifier:(NSString *)userId firstName:(NSString *)firstName lastName:(NSString *)lastName;
+(id) peerIdentifier;
// This class also overrides copyWithZone:, hash, and isEqual:
// This class also overrides dealloc.
+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream;
+(id) ice_readWithStream:(id<ICEInputStream>)stream;
@end

@interface peerPeerException : ICEUserException
{
    NSString *reason_;
}

@property(nonatomic, retain) NSString *reason_;

-(NSString *) ice_name;
-(id) init:(NSString *)reason;
+(id) peerException:(NSString *)reason;
+(id) peerException;
// This class also overrides copyWithZone:.
// This class also overrides dealloc.
@end

@interface peerInvalidIdentityException : peerPeerException
-(NSString *) ice_name;
+(id) invalidIdentityException:(NSString *)reason;
+(id) invalidIdentityException;
@end

@interface peerPeerAccessException : peerPeerException
-(NSString *) ice_name;
+(id) peerAccessException:(NSString *)reason;
+(id) peerAccessException;
@end

@interface peerPeerUnavailableException : peerPeerException
-(NSString *) ice_name;
+(id) peerUnavailableException:(NSString *)reason;
+(id) peerUnavailableException;
@end

@interface peerPeerConnectionFailedException : peerPeerException
-(NSString *) ice_name;
+(id) peerConnectionFailedException:(NSString *)reason;
+(id) peerConnectionFailedException;
@end

@interface peerDuplicateConnectionException : peerPeerException
-(NSString *) ice_name;
+(id) duplicateConnectionException:(NSString *)reason;
+(id) duplicateConnectionException;
@end

@interface peerRegistrationException : peerPeerException
-(NSString *) ice_name;
+(id) registrationException:(NSString *)reason;
+(id) registrationException;
@end

@protocol peerUserConnectionEventHandler
-(void) forcedLogoutNotification:(ICECurrent *)current;
@end

@interface peerUserConnectionEventHandler : ICEObject
+(BOOL)forcedLogoutNotification___:(id<peerUserConnectionEventHandler>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
@end

@protocol peerPeerConnectionEventHandler
-(void) peerConnected:(NSMutableString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel peerProxy:(id<ICEObjectPrx>)peerProxy current:(ICECurrent *)current;
-(void) peerConnectedNoProxy:(NSMutableString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel current:(ICECurrent *)current;
-(void) peerDisconnected:(NSMutableString *)peerUserId current:(ICECurrent *)current;
@end

@interface peerPeerConnectionEventHandler : ICEObject
+(BOOL)peerConnected___:(id<peerPeerConnectionEventHandler>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
+(BOOL)peerConnectedNoProxy___:(id<peerPeerConnectionEventHandler>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
+(BOOL)peerDisconnected___:(id<peerPeerConnectionEventHandler>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
@end

@protocol peerConnectionEventHandler <peerUserConnectionEventHandler, peerPeerConnectionEventHandler>
@end

@interface peerConnectionEventHandler : ICEObject
@end

@protocol peerPeerRegistrationHandler
-(void) registerCallbacks:(id<ICEObjectPrx>)selfCallbackProxy connectionEventHandlerProxy:(id<peerConnectionEventHandlerPrx>)connectionEventHandlerProxy current:(ICECurrent *)current;
-(void) registerProxy:(id<ICEObjectPrx>)proxy current:(ICECurrent *)current;
-(void) registerProxies:(peerMutableObjectProxyArray *)proxies current:(ICECurrent *)current;
-(id<ICEObjectPrx>) getPeerProxy:(NSMutableString *)peerUserId privateProxyIdentity:(ICEIdentity *)privateProxyIdentity current:(ICECurrent *)current;
-(NSDictionary *) getPeerProxies:(NSMutableString *)peerUserId privateProxyIdentities:(peerMutableIdentityArray *)privateProxyIdentities current:(ICECurrent *)current;
@end

@interface peerPeerRegistrationHandler : ICEObject
+(BOOL)registerCallbacks___:(id<peerPeerRegistrationHandler>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
+(BOOL)registerProxy___:(id<peerPeerRegistrationHandler>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
+(BOOL)registerProxies___:(id<peerPeerRegistrationHandler>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
+(BOOL)getPeerProxy___:(id<peerPeerRegistrationHandler>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
+(BOOL)getPeerProxies___:(id<peerPeerRegistrationHandler>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
@end

typedef NSArray peerPeerIdentifierSet;
typedef NSMutableArray peerMutablePeerIdentifierSet;

@protocol peerUserSession <Glacier2Session, peerPeerRegistrationHandler>
-(peerPeerIdentifierSet *) getMyPeers:(ICECurrent *)current;
-(peerPeerIdentifierSet *) getMyAvailablePeers:(ICECurrent *)current;
-(peerPeerIdentifierSet *) getMyUnavailablePeers:(ICECurrent *)current;
-(id<ICEObjectPrx>) connectToPeer:(NSMutableString *)peerUserId current:(ICECurrent *)current;
-(peerPeerIdentifierSet *) getConnectedPeers:(ICECurrent *)current;
-(void) disconnectFromPeer:(NSMutableString *)peerUserId current:(ICECurrent *)current;
-(void) disconnectFromPeers:(ICECurrent *)current;
@end

@interface peerUserSession : ICEObject
+(BOOL)getMyPeers___:(id<peerUserSession>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
+(BOOL)getMyAvailablePeers___:(id<peerUserSession>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
+(BOOL)getMyUnavailablePeers___:(id<peerUserSession>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
+(BOOL)connectToPeer___:(id<peerUserSession>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
+(BOOL)getConnectedPeers___:(id<peerUserSession>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
+(BOOL)disconnectFromPeer___:(id<peerUserSession>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
+(BOOL)disconnectFromPeers___:(id<peerUserSession>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
@end

@protocol peerUserConnectionEventHandlerPrx <ICEObjectPrx>
-(void) forcedLogoutNotification;
-(void) forcedLogoutNotification:(ICEContext *)context;
-(BOOL) forcedLogoutNotification_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_;
-(BOOL) forcedLogoutNotification_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ context:(ICEContext *)context;
-(BOOL) forcedLogoutNotification_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_;
-(BOOL) forcedLogoutNotification_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ context:(ICEContext *)context;
@end

@protocol peerPeerConnectionEventHandlerPrx <ICEObjectPrx>
-(void) peerConnected:(NSString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel peerProxy:(id<ICEObjectPrx>)peerProxy;
-(void) peerConnected:(NSString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel peerProxy:(id<ICEObjectPrx>)peerProxy context:(ICEContext *)context;
-(BOOL) peerConnected_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ peerUserId:(NSString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel peerProxy:(id<ICEObjectPrx>)peerProxy;
-(BOOL) peerConnected_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ peerUserId:(NSString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel peerProxy:(id<ICEObjectPrx>)peerProxy context:(ICEContext *)context;
-(BOOL) peerConnected_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ peerUserId:(NSString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel peerProxy:(id<ICEObjectPrx>)peerProxy;
-(BOOL) peerConnected_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ peerUserId:(NSString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel peerProxy:(id<ICEObjectPrx>)peerProxy context:(ICEContext *)context;
-(void) peerConnectedNoProxy:(NSString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel;
-(void) peerConnectedNoProxy:(NSString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel context:(ICEContext *)context;
-(BOOL) peerConnectedNoProxy_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ peerUserId:(NSString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel;
-(BOOL) peerConnectedNoProxy_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ peerUserId:(NSString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel context:(ICEContext *)context;
-(BOOL) peerConnectedNoProxy_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ peerUserId:(NSString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel;
-(BOOL) peerConnectedNoProxy_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ peerUserId:(NSString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel context:(ICEContext *)context;
-(void) peerDisconnected:(NSString *)peerUserId;
-(void) peerDisconnected:(NSString *)peerUserId context:(ICEContext *)context;
-(BOOL) peerDisconnected_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ peerUserId:(NSString *)peerUserId;
-(BOOL) peerDisconnected_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ peerUserId:(NSString *)peerUserId context:(ICEContext *)context;
-(BOOL) peerDisconnected_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ peerUserId:(NSString *)peerUserId;
-(BOOL) peerDisconnected_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ peerUserId:(NSString *)peerUserId context:(ICEContext *)context;
@end

@protocol peerConnectionEventHandlerPrx <peerUserConnectionEventHandlerPrx, peerPeerConnectionEventHandlerPrx>
@end

@protocol peerPeerRegistrationHandlerPrx <ICEObjectPrx>
-(void) registerCallbacks:(id<ICEObjectPrx>)selfCallbackProxy connectionEventHandlerProxy:(id<peerConnectionEventHandlerPrx>)connectionEventHandlerProxy;
-(void) registerCallbacks:(id<ICEObjectPrx>)selfCallbackProxy connectionEventHandlerProxy:(id<peerConnectionEventHandlerPrx>)connectionEventHandlerProxy context:(ICEContext *)context;
-(void) registerProxy:(id<ICEObjectPrx>)proxy;
-(void) registerProxy:(id<ICEObjectPrx>)proxy context:(ICEContext *)context;
-(void) registerProxies:(peerObjectProxyArray *)proxies;
-(void) registerProxies:(peerObjectProxyArray *)proxies context:(ICEContext *)context;
-(id<ICEObjectPrx>) getPeerProxy:(NSString *)peerUserId privateProxyIdentity:(ICEIdentity *)privateProxyIdentity;
-(id<ICEObjectPrx>) getPeerProxy:(NSString *)peerUserId privateProxyIdentity:(ICEIdentity *)privateProxyIdentity context:(ICEContext *)context;
-(peerMutableIdentityToProxyMap *) getPeerProxies:(NSString *)peerUserId privateProxyIdentities:(peerIdentityArray *)privateProxyIdentities;
-(peerMutableIdentityToProxyMap *) getPeerProxies:(NSString *)peerUserId privateProxyIdentities:(peerIdentityArray *)privateProxyIdentities context:(ICEContext *)context;
@end

@protocol peerUserSessionPrx <Glacier2SessionPrx, peerPeerRegistrationHandlerPrx>
-(peerMutablePeerIdentifierSet *) getMyPeers;
-(peerMutablePeerIdentifierSet *) getMyPeers:(ICEContext *)context;
-(peerMutablePeerIdentifierSet *) getMyAvailablePeers;
-(peerMutablePeerIdentifierSet *) getMyAvailablePeers:(ICEContext *)context;
-(peerMutablePeerIdentifierSet *) getMyUnavailablePeers;
-(peerMutablePeerIdentifierSet *) getMyUnavailablePeers:(ICEContext *)context;
-(id<ICEObjectPrx>) connectToPeer:(NSString *)peerUserId;
-(id<ICEObjectPrx>) connectToPeer:(NSString *)peerUserId context:(ICEContext *)context;
-(peerMutablePeerIdentifierSet *) getConnectedPeers;
-(peerMutablePeerIdentifierSet *) getConnectedPeers:(ICEContext *)context;
-(void) disconnectFromPeer:(NSString *)peerUserId;
-(void) disconnectFromPeer:(NSString *)peerUserId context:(ICEContext *)context;
-(void) disconnectFromPeers;
-(void) disconnectFromPeers:(ICEContext *)context;
@end

@interface peerUserConnectionEventHandlerPrx : ICEObjectPrx <peerUserConnectionEventHandlerPrx>
+(NSString *) ice_staticId;
+(void) forcedLogoutNotification___:(ICEObjectPrx <peerUserConnectionEventHandlerPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) forcedLogoutNotification_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ prx:(ICEObjectPrx <peerUserConnectionEventHandlerPrx> *)prx context:(ICEContext *)ctx;
+(void) forcedLogoutNotification_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
@end

@interface peerPeerConnectionEventHandlerPrx : ICEObjectPrx <peerPeerConnectionEventHandlerPrx>
+(NSString *) ice_staticId;
+(void) peerConnected___:(NSString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel peerProxy:(id<ICEObjectPrx>)peerProxy prx:(ICEObjectPrx <peerPeerConnectionEventHandlerPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) peerConnected_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ peerUserId:(NSString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel peerProxy:(id<ICEObjectPrx>)peerProxy prx:(ICEObjectPrx <peerPeerConnectionEventHandlerPrx> *)prx context:(ICEContext *)ctx;
+(void) peerConnected_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
+(void) peerConnectedNoProxy___:(NSString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel prx:(ICEObjectPrx <peerPeerConnectionEventHandlerPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) peerConnectedNoProxy_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ peerUserId:(NSString *)peerUserId accessLevel:(peerPeerAccessLevel)accessLevel prx:(ICEObjectPrx <peerPeerConnectionEventHandlerPrx> *)prx context:(ICEContext *)ctx;
+(void) peerConnectedNoProxy_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
+(void) peerDisconnected___:(NSString *)peerUserId prx:(ICEObjectPrx <peerPeerConnectionEventHandlerPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) peerDisconnected_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ peerUserId:(NSString *)peerUserId prx:(ICEObjectPrx <peerPeerConnectionEventHandlerPrx> *)prx context:(ICEContext *)ctx;
+(void) peerDisconnected_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
@end

@interface peerConnectionEventHandlerPrx : ICEObjectPrx <peerConnectionEventHandlerPrx>
+(NSString *) ice_staticId;
@end

@interface peerPeerRegistrationHandlerPrx : ICEObjectPrx <peerPeerRegistrationHandlerPrx>
+(NSString *) ice_staticId;
+(void) registerCallbacks___:(id<ICEObjectPrx>)selfCallbackProxy connectionEventHandlerProxy:(id<peerConnectionEventHandlerPrx>)connectionEventHandlerProxy prx:(ICEObjectPrx <peerPeerRegistrationHandlerPrx> *)prx context:(ICEContext *)ctx;
+(void) registerProxy___:(id<ICEObjectPrx>)proxy prx:(ICEObjectPrx <peerPeerRegistrationHandlerPrx> *)prx context:(ICEContext *)ctx;
+(void) registerProxies___:(peerObjectProxyArray *)proxies prx:(ICEObjectPrx <peerPeerRegistrationHandlerPrx> *)prx context:(ICEContext *)ctx;
+(id<ICEObjectPrx>) getPeerProxy___:(NSString *)peerUserId privateProxyIdentity:(ICEIdentity *)privateProxyIdentity prx:(ICEObjectPrx <peerPeerRegistrationHandlerPrx> *)prx context:(ICEContext *)ctx;
+(peerMutableIdentityToProxyMap *) getPeerProxies___:(NSString *)peerUserId privateProxyIdentities:(peerIdentityArray *)privateProxyIdentities prx:(ICEObjectPrx <peerPeerRegistrationHandlerPrx> *)prx context:(ICEContext *)ctx;
@end

@interface peerUserSessionPrx : ICEObjectPrx <peerUserSessionPrx>
+(NSString *) ice_staticId;
+(peerMutablePeerIdentifierSet *) getMyPeers___:(ICEObjectPrx <peerUserSessionPrx> *)prx context:(ICEContext *)ctx;
+(peerMutablePeerIdentifierSet *) getMyAvailablePeers___:(ICEObjectPrx <peerUserSessionPrx> *)prx context:(ICEContext *)ctx;
+(peerMutablePeerIdentifierSet *) getMyUnavailablePeers___:(ICEObjectPrx <peerUserSessionPrx> *)prx context:(ICEContext *)ctx;
+(id<ICEObjectPrx>) connectToPeer___:(NSString *)peerUserId prx:(ICEObjectPrx <peerUserSessionPrx> *)prx context:(ICEContext *)ctx;
+(peerMutablePeerIdentifierSet *) getConnectedPeers___:(ICEObjectPrx <peerUserSessionPrx> *)prx context:(ICEContext *)ctx;
+(void) disconnectFromPeer___:(NSString *)peerUserId prx:(ICEObjectPrx <peerUserSessionPrx> *)prx context:(ICEContext *)ctx;
+(void) disconnectFromPeers___:(ICEObjectPrx <peerUserSessionPrx> *)prx context:(ICEContext *)ctx;
@end

@interface peerPeerAccessLevelHelper : ICEEnumHelper
+(ICEInt) getLimit;
@end

@interface peerIdentityArrayHelper : ICESequenceHelper
+(Class) getContained;
@end

typedef ICEObjectPrxSequenceHelper peerObjectProxyArrayHelper;

@interface peerIdentityToProxyMapHelper : ICEDictionaryHelper
+(ICEKeyValueTypeHelper) getContained;
@end

@interface peerPeerIdentifierSetHelper : ICESequenceHelper
+(Class) getContained;
@end
