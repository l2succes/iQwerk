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

#import <Ice/LocalException.h>
#import <Ice/Stream.h>
#import <Ice/Internal.h>
#import <DigitalIn.h>

#import <objc/message.h>

@implementation TeRKDigitalInState

@synthesize digitalInStates;

-(id) init:(TeRKBooleanArray *)digitalInStates_p
{
    if(![super init])
    {
        return nil;
    }
    digitalInStates = [digitalInStates_p retain];
    return self;
}

+(id) digitalInState:(TeRKBooleanArray *)digitalInStates_p
{
    TeRKDigitalInState *s__ = [(TeRKDigitalInState* )[TeRKDigitalInState alloc] init:digitalInStates_p];
    [s__ autorelease];
    return s__;
}

+(id) digitalInState
{
    TeRKDigitalInState *s__ = [[TeRKDigitalInState alloc] init];
    [s__ autorelease];
    return s__;
}

-(id) copyWithZone:(NSZone *)zone_p
{
    return [(TeRKDigitalInState *)[[self class] allocWithZone:zone_p] init:digitalInStates];
}

-(NSUInteger) hash
{
    NSUInteger h_ = 0;
    h_ = (h_ << 1) ^ [digitalInStates hash];
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
    TeRKDigitalInState *obj_ = (TeRKDigitalInState *)o_;
    if(!digitalInStates)
    {
        if(obj_->digitalInStates)
        {
            return NO;
        }
    }
    else
    {
        if(![digitalInStates isEqual:obj_->digitalInStates])
        {
            return NO;
        }
    }
    return YES;
}

-(void) dealloc;
{
    [digitalInStates release];
    [super dealloc];
}

+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)os_
{
    TeRKDigitalInState* p = (TeRKDigitalInState*)obj;
    if(p == nil)
    {
        p = [[[self class] alloc] init];
    }
    @try
    {
        [os_ writeBoolSeq:p->digitalInStates];
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
    TeRKDigitalInState* p = [[[self class] alloc] init];
    @try
    {
        p->digitalInStates = [is_ readBoolSeq];
    }
    @catch(NSException *ex)
    {
        [p release];
        @throw ex;
    }
    return p;
}
@end

@implementation TeRKDigitalInController

+(id)objectWithDelegate:(id)delegate
{
    return [[[TeRKDigitalInController alloc] initWithDelegate:delegate] autorelease];
}

-(void) write__:(id<ICEOutputStream>)os_
{
    [os_ writeTypeId:@"::TeRK::DigitalInController"];
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

static NSString *TeRKDigitalInController_ids__[] = 
{
    @"::Ice::Object",
    @"::TeRK::AbstractCommandController",
    @"::TeRK::DigitalInController",
    @"::TeRK::PropertyManager"
};

+(BOOL)getState___:(id<TeRKDigitalInController>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(getState:), current);
    TeRKDigitalInState *ret_ = [target getState:current];
    [TeRKDigitalInState ice_writeWithStream:ret_ stream:os_];
    return YES;
}

static NSString *TeRKDigitalInController_all__[] =
{
    @"getProperties",
    @"getProperty",
    @"getPropertyKeys",
    @"getState",
    @"ice_id",
    @"ice_ids",
    @"ice_isA",
    @"ice_ping",
    @"setProperty"
};

-(BOOL) dispatch__:(ICECurrent *)current is:(id<ICEInputStream>)is os:(id<ICEOutputStream>)os
{
    id target__ = [self target__];
    switch(ICEInternalLookupString(TeRKDigitalInController_all__, sizeof(TeRKDigitalInController_all__) / sizeof(NSString*), current.operation))
    {
        case 0:
            return [TeRKPropertyManager getProperties___:(id<TeRKPropertyManager>)target__ current:current is:is os:os];
        case 1:
            return [TeRKPropertyManager getProperty___:(id<TeRKPropertyManager>)target__ current:current is:is os:os];
        case 2:
            return [TeRKPropertyManager getPropertyKeys___:(id<TeRKPropertyManager>)target__ current:current is:is os:os];
        case 3:
            return [TeRKDigitalInController getState___:(id<TeRKDigitalInController>)target__ current:current is:is os:os];
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
    *count = sizeof(TeRKDigitalInController_ids__) / sizeof(NSString *);
    *idx = 2;
    return TeRKDigitalInController_ids__;
}
@end

@implementation TeRKDigitalInControllerPrx

-(TeRKDigitalInState *) getState
{
    return [TeRKDigitalInControllerPrx getState___:self context:nil];
}

-(TeRKDigitalInState *) getState:(ICEContext *)ctx_
{
    return [TeRKDigitalInControllerPrx getState___:self context:ctx_];
}

-(BOOL) getState_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_
{
    return [TeRKDigitalInControllerPrx getState_async___:target_ response:response_ exception:exception_ sent:nil  prx:self context:nil];
}

-(BOOL) getState_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ context:(ICEContext *)ctx_
{
    return [TeRKDigitalInControllerPrx getState_async___:target_ response:response_ exception:exception_ sent:nil  prx:self context:ctx_];
}

-(BOOL) getState_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_
{
    return [TeRKDigitalInControllerPrx getState_async___:target_ response:response_ exception:exception_ sent:sent_  prx:self context:nil];
}

-(BOOL) getState_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ context:(ICEContext *)ctx_
{
    return [TeRKDigitalInControllerPrx getState_async___:target_ response:response_ exception:exception_ sent:sent_  prx:self context:ctx_];
}

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
    return @"::TeRK::DigitalInController";
}

+(TeRKDigitalInState *) getState___:(ICEObjectPrx <TeRKDigitalInControllerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"getState"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    TeRKDigitalInState *ret_ = nil;
    @try
    {
        [prx_ invoke__:@"getState" mode:ICENormal os:os_ is:&is_ context:ctx_];
        ret_ = [TeRKDigitalInState ice_readWithStream:is_];
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

+(BOOL) getState_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ prx:(ICEObjectPrx <TeRKDigitalInControllerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"getState"];
    SEL finished_ = @selector(getState_async_finished___:response:exception:ok:is:);
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    @try
    {
        return [prx_ invoke_async__:target_ response:response_ exception:exception_ sent:sent_ finishedClass:self finished:finished_ operation:@"getState" mode:ICENormal os:os_ context:ctx_];
    }
    @finally
    {
        [os_ release];
    }
    return FALSE; // Keep the compiler happy.
}

+(void) getState_async_finished___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ ok:(BOOL)ok_ is:(id<ICEInputStream>)is_
{
    TeRKDigitalInState *ret_ = nil;
    @try
    {
        if(!ok_)
        {
            [is_ throwException];
        }
        ret_ = [TeRKDigitalInState ice_readWithStream:is_];
        ((void(*)(id, SEL, TeRKDigitalInState *))objc_msgSend)(target_, response_, ret_);
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
