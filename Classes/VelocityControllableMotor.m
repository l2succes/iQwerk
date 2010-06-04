// **********************************************************************
//
// Copyright (c) 2003-2009 ZeroC, Inc. All rights reserved.
//
// This copy of Ice is licensed to you under the terms described in the
// ICE_TOUCH_LICENSE file included in this distribution.
//
// **********************************************************************

// Ice version 3.3.1
// Generated from file `VelocityControllableMotor.ice'

#import <Ice/LocalException.h>
#import <Ice/Stream.h>
#import <Ice/Internal.h>
#import <VelocityControllableMotor.h>

#import <objc/message.h>

@implementation TeRKmotorVelocityControllableMotorCommand

@synthesize motorMask;
@synthesize motorVelocities;

-(id) init:(TeRKBooleanArray *)motorMask_p motorVelocities:(TeRKIntArray *)motorVelocities_p
{
    if(![super init])
    {
        return nil;
    }
    motorMask = [motorMask_p retain];
    motorVelocities = [motorVelocities_p retain];
    return self;
}

+(id) velocityControllableMotorCommand:(TeRKBooleanArray *)motorMask_p motorVelocities:(TeRKIntArray *)motorVelocities_p
{
    TeRKmotorVelocityControllableMotorCommand *s__ = [(TeRKmotorVelocityControllableMotorCommand* )[TeRKmotorVelocityControllableMotorCommand alloc] init:motorMask_p motorVelocities:motorVelocities_p];
    [s__ autorelease];
    return s__;
}

+(id) velocityControllableMotorCommand
{
    TeRKmotorVelocityControllableMotorCommand *s__ = [[TeRKmotorVelocityControllableMotorCommand alloc] init];
    [s__ autorelease];
    return s__;
}

-(id) copyWithZone:(NSZone *)zone_p
{
    return [(TeRKmotorVelocityControllableMotorCommand *)[[self class] allocWithZone:zone_p] init:motorMask motorVelocities:motorVelocities];
}

-(NSUInteger) hash
{
    NSUInteger h_ = 0;
    h_ = (h_ << 1) ^ [motorMask hash];
    h_ = (h_ << 1) ^ [motorVelocities hash];
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
    TeRKmotorVelocityControllableMotorCommand *obj_ = (TeRKmotorVelocityControllableMotorCommand *)o_;
    if(!motorMask)
    {
        if(obj_->motorMask)
        {
            return NO;
        }
    }
    else
    {
        if(![motorMask isEqual:obj_->motorMask])
        {
            return NO;
        }
    }
    if(!motorVelocities)
    {
        if(obj_->motorVelocities)
        {
            return NO;
        }
    }
    else
    {
        if(![motorVelocities isEqual:obj_->motorVelocities])
        {
            return NO;
        }
    }
    return YES;
}

-(void) dealloc;
{
    [motorMask release];
    [motorVelocities release];
    [super dealloc];
}

+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)os_
{
    TeRKmotorVelocityControllableMotorCommand* p = (TeRKmotorVelocityControllableMotorCommand*)obj;
    if(p == nil)
    {
        p = [[[self class] alloc] init];
    }
    @try
    {
        [os_ writeBoolSeq:p->motorMask];
        [os_ writeIntSeq:p->motorVelocities];
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
    TeRKmotorVelocityControllableMotorCommand* p = [[[self class] alloc] init];
    @try
    {
        p->motorMask = [is_ readBoolSeq];
        p->motorVelocities = [is_ readIntSeq];
    }
    @catch(NSException *ex)
    {
        [p release];
        @throw ex;
    }
    return p;
}
@end

@implementation TeRKmotorVelocityControllableMotorService

+(id)objectWithDelegate:(id)delegate
{
    return [[[TeRKmotorVelocityControllableMotorService alloc] initWithDelegate:delegate] autorelease];
}

-(void) write__:(id<ICEOutputStream>)os_
{
    [os_ writeTypeId:@"::TeRK::motor::VelocityControllableMotorService"];
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

static NSString *TeRKmotorVelocityControllableMotorService_ids__[] = 
{
    @"::Ice::Object",
    @"::TeRK::AbstractCommandController",
    @"::TeRK::PropertyManager",
    @"::TeRK::motor::VelocityControllableMotorService"
};

+(BOOL)execute___:(id<TeRKmotorVelocityControllableMotorService>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(execute:current:), current);
    TeRKmotorVelocityControllableMotorCommand *command = nil;
    @try
    {
        command = [TeRKmotorVelocityControllableMotorCommand ice_readWithStream:is_];
        TeRKIntArray *ret_ = [target execute:command current:current];
        [os_ writeIntSeq:ret_];
    }
    @finally
    {
        [(id<NSObject>)command release];
    }
    return YES;
}

static NSString *TeRKmotorVelocityControllableMotorService_all__[] =
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
    switch(ICEInternalLookupString(TeRKmotorVelocityControllableMotorService_all__, sizeof(TeRKmotorVelocityControllableMotorService_all__) / sizeof(NSString*), current.operation))
    {
        case 0:
            return [TeRKmotorVelocityControllableMotorService execute___:(id<TeRKmotorVelocityControllableMotorService>)target__ current:current is:is os:os];
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
    *count = sizeof(TeRKmotorVelocityControllableMotorService_ids__) / sizeof(NSString *);
    *idx = 3;
    return TeRKmotorVelocityControllableMotorService_ids__;
}
@end

@implementation TeRKmotorVelocityControllableMotorServicePrx

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

-(TeRKMutableIntArray *) execute:(TeRKmotorVelocityControllableMotorCommand *)command
{
    return [TeRKmotorVelocityControllableMotorServicePrx execute___:command prx:self context:nil];
}

-(TeRKMutableIntArray *) execute:(TeRKmotorVelocityControllableMotorCommand *)command context:(ICEContext *)ctx_
{
    return [TeRKmotorVelocityControllableMotorServicePrx execute___:command prx:self context:ctx_];
}

-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ command:(TeRKmotorVelocityControllableMotorCommand *)command
{
    return [TeRKmotorVelocityControllableMotorServicePrx execute_async___:target_ response:response_ exception:exception_ sent:nil  command:command prx:self context:nil];
}

-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ command:(TeRKmotorVelocityControllableMotorCommand *)command context:(ICEContext *)ctx_
{
    return [TeRKmotorVelocityControllableMotorServicePrx execute_async___:target_ response:response_ exception:exception_ sent:nil  command:command prx:self context:ctx_];
}

-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKmotorVelocityControllableMotorCommand *)command
{
    return [TeRKmotorVelocityControllableMotorServicePrx execute_async___:target_ response:response_ exception:exception_ sent:sent_  command:command prx:self context:nil];
}

-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKmotorVelocityControllableMotorCommand *)command context:(ICEContext *)ctx_
{
    return [TeRKmotorVelocityControllableMotorServicePrx execute_async___:target_ response:response_ exception:exception_ sent:sent_  command:command prx:self context:ctx_];
}

+(NSString *) ice_staticId
{
    return @"::TeRK::motor::VelocityControllableMotorService";
}

+(TeRKMutableIntArray *) execute___:(TeRKmotorVelocityControllableMotorCommand *)command prx:(ICEObjectPrx <TeRKmotorVelocityControllableMotorServicePrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"execute"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    TeRKMutableIntArray *ret_ = nil;
    @try
    {
        [TeRKmotorVelocityControllableMotorCommand ice_writeWithStream:command stream:os_];
        [prx_ invoke__:@"execute" mode:ICENormal os:os_ is:&is_ context:ctx_];
        ret_ = [is_ readIntSeq];
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

+(BOOL) execute_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKmotorVelocityControllableMotorCommand *)command prx:(ICEObjectPrx <TeRKmotorVelocityControllableMotorServicePrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"execute"];
    SEL finished_ = @selector(execute_async_finished___:response:exception:ok:is:);
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    @try
    {
        [TeRKmotorVelocityControllableMotorCommand ice_writeWithStream:command stream:os_];
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
    TeRKMutableIntArray *ret_ = nil;
    @try
    {
        if(!ok_)
        {
            [is_ throwException];
        }
        ret_ = [is_ readIntSeq];
        ((void(*)(id, SEL, TeRKIntArray *))objc_msgSend)(target_, response_, ret_);
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
