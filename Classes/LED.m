// **********************************************************************
//
// Copyright (c) 2003-2009 ZeroC, Inc. All rights reserved.
//
// This copy of Ice is licensed to you under the terms described in the
// ICE_TOUCH_LICENSE file included in this distribution.
//
// **********************************************************************

// Ice version 3.3.1
// Generated from file `LED.ice'

#import <Ice/LocalException.h>
#import <Ice/Stream.h>
#import <Ice/Internal.h>
#import <LED.h>

#import <objc/message.h>

@implementation TeRKLEDCommandException

-(NSString *) ice_name
{
    return @"TeRK::LEDCommandException";
}

+(id) lEDCommandException:(NSString *)reason_p
{
    TeRKLEDCommandException *s__ = [(TeRKLEDCommandException *)[TeRKLEDCommandException alloc] init:reason_p];
    [s__ autorelease];
    return s__;
}

+(id) lEDCommandException
{
    TeRKLEDCommandException *s__ = [[TeRKLEDCommandException alloc] init];
    [s__ autorelease];
    return s__;
}

-(void) write__:(id<ICEOutputStream>)os_
{
    [os_ writeString:@"::TeRK::LEDCommandException"];
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

@implementation TeRKLEDCommand

@synthesize ledMask;
@synthesize ledModes;

-(id) init:(TeRKBooleanArray *)ledMask_p ledModes:(TeRKLEDModeArray *)ledModes_p
{
    if(![super init])
    {
        return nil;
    }
    ledMask = [ledMask_p retain];
    ledModes = [ledModes_p retain];
    return self;
}

+(id) lEDCommand:(TeRKBooleanArray *)ledMask_p ledModes:(TeRKLEDModeArray *)ledModes_p
{
    TeRKLEDCommand *s__ = [(TeRKLEDCommand* )[TeRKLEDCommand alloc] init:ledMask_p ledModes:ledModes_p];
    [s__ autorelease];
    return s__;
}

+(id) lEDCommand
{
    TeRKLEDCommand *s__ = [[TeRKLEDCommand alloc] init];
    [s__ autorelease];
    return s__;
}

-(id) copyWithZone:(NSZone *)zone_p
{
    return [(TeRKLEDCommand *)[[self class] allocWithZone:zone_p] init:ledMask ledModes:ledModes];
}

-(NSUInteger) hash
{
    NSUInteger h_ = 0;
    h_ = (h_ << 1) ^ [ledMask hash];
    h_ = (h_ << 1) ^ [ledModes hash];
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
    TeRKLEDCommand *obj_ = (TeRKLEDCommand *)o_;
    if(!ledMask)
    {
        if(obj_->ledMask)
        {
            return NO;
        }
    }
    else
    {
        if(![ledMask isEqual:obj_->ledMask])
        {
            return NO;
        }
    }
    if(!ledModes)
    {
        if(obj_->ledModes)
        {
            return NO;
        }
    }
    else
    {
        if(![ledModes isEqual:obj_->ledModes])
        {
            return NO;
        }
    }
    return YES;
}

-(void) dealloc;
{
    [ledMask release];
    [ledModes release];
    [super dealloc];
}

+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)os_
{
    TeRKLEDCommand* p = (TeRKLEDCommand*)obj;
    if(p == nil)
    {
        p = [[[self class] alloc] init];
    }
    @try
    {
        [os_ writeBoolSeq:p->ledMask];
        [os_ writeEnumSeq:p->ledModes limit:3];
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
    TeRKLEDCommand* p = [[[self class] alloc] init];
    @try
    {
        p->ledMask = [is_ readBoolSeq];
        p->ledModes = [is_ readEnumSeq:3];
    }
    @catch(NSException *ex)
    {
        [p release];
        @throw ex;
    }
    return p;
}
@end

@implementation TeRKLEDController

+(id)objectWithDelegate:(id)delegate
{
    return [[[TeRKLEDController alloc] initWithDelegate:delegate] autorelease];
}

-(void) write__:(id<ICEOutputStream>)os_
{
    [os_ writeTypeId:@"::TeRK::LEDController"];
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

static NSString *TeRKLEDController_ids__[] = 
{
    @"::Ice::Object",
    @"::TeRK::AbstractCommandController",
    @"::TeRK::LEDController",
    @"::TeRK::PropertyManager"
};

+(BOOL)execute___:(id<TeRKLEDController>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(execute:current:), current);
    TeRKLEDCommand *command = nil;
    @try
    {
        command = [TeRKLEDCommand ice_readWithStream:is_];
        [target execute:command current:current];
    }
    @catch(TeRKLEDCommandException *ex)
    {
        [os_ writeException:ex];
        return NO;
    }
    @finally
    {
        [(id<NSObject>)command release];
    }
    return YES;
}

static NSString *TeRKLEDController_all__[] =
{
    @"execute",
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
    switch(ICEInternalLookupString(TeRKLEDController_all__, sizeof(TeRKLEDController_all__) / sizeof(NSString*), current.operation))
    {
        case 0:
            return [TeRKLEDController execute___:(id<TeRKLEDController>)target__ current:current is:is os:os];
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
    *count = sizeof(TeRKLEDController_ids__) / sizeof(NSString *);
    *idx = 2;
    return TeRKLEDController_ids__;
}
@end

@implementation TeRKLEDControllerPrx

-(void) execute:(TeRKLEDCommand *)command
{
    [TeRKLEDControllerPrx execute___:command prx:self context:nil];
}

-(void) execute:(TeRKLEDCommand *)command context:(ICEContext *)ctx_
{
    [TeRKLEDControllerPrx execute___:command prx:self context:ctx_];
}

-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ command:(TeRKLEDCommand *)command
{
    return [TeRKLEDControllerPrx execute_async___:target_ response:response_ exception:exception_ sent:nil  command:command prx:self context:nil];
}

-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ command:(TeRKLEDCommand *)command context:(ICEContext *)ctx_
{
    return [TeRKLEDControllerPrx execute_async___:target_ response:response_ exception:exception_ sent:nil  command:command prx:self context:ctx_];
}

-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKLEDCommand *)command
{
    return [TeRKLEDControllerPrx execute_async___:target_ response:response_ exception:exception_ sent:sent_  command:command prx:self context:nil];
}

-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKLEDCommand *)command context:(ICEContext *)ctx_
{
    return [TeRKLEDControllerPrx execute_async___:target_ response:response_ exception:exception_ sent:sent_  command:command prx:self context:ctx_];
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
    return @"::TeRK::LEDController";
}

+(void) execute___:(TeRKLEDCommand *)command prx:(ICEObjectPrx <TeRKLEDControllerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"execute"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    @try
    {
        [TeRKLEDCommand ice_writeWithStream:command stream:os_];
        [prx_ invoke__:@"execute" mode:ICENormal os:os_ is:&is_ context:ctx_];
    }
    @catch(TeRKLEDCommandException *ex_)
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

+(BOOL) execute_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKLEDCommand *)command prx:(ICEObjectPrx <TeRKLEDControllerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"execute"];
    SEL finished_ = @selector(execute_async_finished___:response:exception:ok:is:);
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    @try
    {
        [TeRKLEDCommand ice_writeWithStream:command stream:os_];
        return [prx_ invoke_async__:target_ response:response_ exception:exception_ sent:sent_ finishedClass:self finished:finished_ operation:@"execute" mode:ICENormal os:os_ context:ctx_];
    }
    @finally
    {
        [os_ release];
    }
    return FALSE; // Keep the compiler happy.
}

+(void) execute_async_finished___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ ok:(BOOL)ok_ is:(id<ICEInputStream>)is_
{
    @try
    {
        if(!ok_)
        {
            [is_ throwException];
        }
        objc_msgSend(target_, response_);
    }
    @catch(TeRKLEDCommandException *ex_)
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

@implementation TeRKLEDModeHelper
+(ICEInt) getLimit
{
    return 3;
}
@end

@implementation TeRKLEDModeArrayHelper
+(id) ice_readWithStream:(id<ICEInputStream>)stream
{
    return [stream readEnumSeq:3];
}

+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream
{
    [stream writeEnumSeq:obj limit:3];
}
@end
