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

#import <Ice/Config.h>
#import <Ice/Proxy.h>
#import <Ice/Object.h>
#import <Ice/Current.h>
#import <Ice/Exception.h>
#import <Ice/Stream.h>
#import <Ice/Identity.h>
#import <MRPLPeer.h>

@class TeRKPropertyManager;
@protocol TeRKPropertyManager;

@class TeRKAbstractCommandController;
@protocol TeRKAbstractCommandController;

@class TeRKTerkUser;
@protocol TeRKTerkUser;

@class TeRKPropertyManagerPrx;
@protocol TeRKPropertyManagerPrx;

@class TeRKAbstractCommandControllerPrx;
@protocol TeRKAbstractCommandControllerPrx;

@class TeRKTerkUserPrx;
@protocol TeRKTerkUserPrx;

typedef NSData TeRKBooleanArray;
typedef NSMutableData TeRKMutableBooleanArray;

typedef NSData TeRKByteArray;
typedef NSMutableData TeRKMutableByteArray;

typedef NSData TeRKIntArray;
typedef NSMutableData TeRKMutableIntArray;

typedef NSData TeRKShortArray;
typedef NSMutableData TeRKMutableShortArray;

typedef NSArray TeRKStringArray;
typedef NSMutableArray TeRKMutableStringArray;

typedef NSDictionary TeRKProxyTypeIdToIdentityMap;
typedef NSMutableDictionary TeRKMutableProxyTypeIdToIdentityMap;

typedef NSDictionary TeRKPropertyMap;
typedef NSMutableDictionary TeRKMutablePropertyMap;

@interface TeRKTeRKException : ICEUserException
{
    NSString *reason_;
}

@property(nonatomic, retain) NSString *reason_;

-(NSString *) ice_name;
-(id) init:(NSString *)reason;
+(id) teRKException:(NSString *)reason;
+(id) teRKException;
// This class also overrides copyWithZone:.
// This class also overrides dealloc.
@end

@interface TeRKReadOnlyPropertyException : TeRKTeRKException
-(NSString *) ice_name;
+(id) readOnlyPropertyException:(NSString *)reason;
+(id) readOnlyPropertyException;
@end

@interface TeRKCommandException : TeRKTeRKException
-(NSString *) ice_name;
+(id) commandException:(NSString *)reason;
+(id) commandException;
@end

@protocol TeRKPropertyManager
-(NSString *) getProperty:(NSMutableString *)key current:(ICECurrent *)current;
-(NSDictionary *) getProperties:(ICECurrent *)current;
-(TeRKStringArray *) getPropertyKeys:(ICECurrent *)current;
-(void) setProperty:(NSMutableString *)key value:(NSMutableString *)value current:(ICECurrent *)current;
@end

@interface TeRKPropertyManager : ICEObject
+(BOOL)getProperty___:(id<TeRKPropertyManager>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
+(BOOL)getProperties___:(id<TeRKPropertyManager>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
+(BOOL)getPropertyKeys___:(id<TeRKPropertyManager>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
+(BOOL)setProperty___:(id<TeRKPropertyManager>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
@end

@protocol TeRKAbstractCommandController <TeRKPropertyManager>
@end

@interface TeRKAbstractCommandController : ICEObject
@end

typedef NSArray TeRKAbstractCommandControllerProxyArray;
typedef NSMutableArray TeRKMutableAbstractCommandControllerProxyArray;

@protocol TeRKTerkUser <peerConnectionEventHandler, TeRKPropertyManager>
-(NSDictionary *) getSupportedServices:(ICECurrent *)current;
@end

@interface TeRKTerkUser : ICEObject
+(BOOL)getSupportedServices___:(id<TeRKTerkUser>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_;
@end

@protocol TeRKPropertyManagerPrx <ICEObjectPrx>
-(NSMutableString *) getProperty:(NSString *)key;
-(NSMutableString *) getProperty:(NSString *)key context:(ICEContext *)context;
-(BOOL) getProperty_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ key:(NSString *)key;
-(BOOL) getProperty_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ key:(NSString *)key context:(ICEContext *)context;
-(BOOL) getProperty_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ key:(NSString *)key;
-(BOOL) getProperty_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ key:(NSString *)key context:(ICEContext *)context;
-(TeRKMutablePropertyMap *) getProperties;
-(TeRKMutablePropertyMap *) getProperties:(ICEContext *)context;
-(BOOL) getProperties_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_;
-(BOOL) getProperties_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ context:(ICEContext *)context;
-(BOOL) getProperties_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_;
-(BOOL) getProperties_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ context:(ICEContext *)context;
-(TeRKMutableStringArray *) getPropertyKeys;
-(TeRKMutableStringArray *) getPropertyKeys:(ICEContext *)context;
-(BOOL) getPropertyKeys_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_;
-(BOOL) getPropertyKeys_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ context:(ICEContext *)context;
-(BOOL) getPropertyKeys_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_;
-(BOOL) getPropertyKeys_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ context:(ICEContext *)context;
-(void) setProperty:(NSString *)key value:(NSString *)value;
-(void) setProperty:(NSString *)key value:(NSString *)value context:(ICEContext *)context;
-(BOOL) setProperty_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ key:(NSString *)key value:(NSString *)value;
-(BOOL) setProperty_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ key:(NSString *)key value:(NSString *)value context:(ICEContext *)context;
-(BOOL) setProperty_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ key:(NSString *)key value:(NSString *)value;
-(BOOL) setProperty_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ key:(NSString *)key value:(NSString *)value context:(ICEContext *)context;
@end

@protocol TeRKAbstractCommandControllerPrx <TeRKPropertyManagerPrx>
@end

@protocol TeRKTerkUserPrx <peerConnectionEventHandlerPrx, TeRKPropertyManagerPrx>
-(TeRKMutableProxyTypeIdToIdentityMap *) getSupportedServices;
-(TeRKMutableProxyTypeIdToIdentityMap *) getSupportedServices:(ICEContext *)context;
-(BOOL) getSupportedServices_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_;
-(BOOL) getSupportedServices_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ context:(ICEContext *)context;
-(BOOL) getSupportedServices_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_;
-(BOOL) getSupportedServices_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ context:(ICEContext *)context;
@end

@interface TeRKPropertyManagerPrx : ICEObjectPrx <TeRKPropertyManagerPrx>
+(NSString *) ice_staticId;
+(NSMutableString *) getProperty___:(NSString *)key prx:(ICEObjectPrx <TeRKPropertyManagerPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) getProperty_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ key:(NSString *)key prx:(ICEObjectPrx <TeRKPropertyManagerPrx> *)prx context:(ICEContext *)ctx;
+(void) getProperty_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
+(TeRKMutablePropertyMap *) getProperties___:(ICEObjectPrx <TeRKPropertyManagerPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) getProperties_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ prx:(ICEObjectPrx <TeRKPropertyManagerPrx> *)prx context:(ICEContext *)ctx;
+(void) getProperties_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
+(TeRKMutableStringArray *) getPropertyKeys___:(ICEObjectPrx <TeRKPropertyManagerPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) getPropertyKeys_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ prx:(ICEObjectPrx <TeRKPropertyManagerPrx> *)prx context:(ICEContext *)ctx;
+(void) getPropertyKeys_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
+(void) setProperty___:(NSString *)key value:(NSString *)value prx:(ICEObjectPrx <TeRKPropertyManagerPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) setProperty_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ key:(NSString *)key value:(NSString *)value prx:(ICEObjectPrx <TeRKPropertyManagerPrx> *)prx context:(ICEContext *)ctx;
+(void) setProperty_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
@end

@interface TeRKAbstractCommandControllerPrx : ICEObjectPrx <TeRKAbstractCommandControllerPrx>
+(NSString *) ice_staticId;
@end

@interface TeRKTerkUserPrx : ICEObjectPrx <TeRKTerkUserPrx>
+(NSString *) ice_staticId;
+(TeRKMutableProxyTypeIdToIdentityMap *) getSupportedServices___:(ICEObjectPrx <TeRKTerkUserPrx> *)prx context:(ICEContext *)ctx;
+(BOOL) getSupportedServices_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ prx:(ICEObjectPrx <TeRKTerkUserPrx> *)prx context:(ICEContext *)ctx;
+(void) getSupportedServices_async_finished___:(id)target response:(SEL)response exception:(SEL)exception ok:(BOOL)ok is:(id<ICEInputStream>)is;
@end

@interface TeRKBooleanArrayHelper : NSObject
+(id) ice_readWithStream:(id<ICEInputStream>)stream;
+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream;
@end

@interface TeRKByteArrayHelper : NSObject
+(id) ice_readWithStream:(id<ICEInputStream>)stream;
+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream;
@end

@interface TeRKIntArrayHelper : NSObject
+(id) ice_readWithStream:(id<ICEInputStream>)stream;
+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream;
@end

@interface TeRKShortArrayHelper : NSObject
+(id) ice_readWithStream:(id<ICEInputStream>)stream;
+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream;
@end

@interface TeRKStringArrayHelper : NSObject
+(id) ice_readWithStream:(id<ICEInputStream>)stream;
+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream;
@end

@interface TeRKProxyTypeIdToIdentityMapHelper : ICEDictionaryHelper
+(ICEKeyValueTypeHelper) getContained;
@end

@interface TeRKPropertyMapHelper : ICEDictionaryHelper
+(ICEKeyValueTypeHelper) getContained;
@end

@interface TeRKAbstractCommandControllerProxyArrayHelper : ICESequenceHelper
+(Class) getContained;
@end
