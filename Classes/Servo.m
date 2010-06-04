// **********************************************************************
//
// Copyright (c) 2003-2009 ZeroC, Inc. All rights reserved.
//
// This copy of Ice is licensed to you under the terms described in the
// ICE_TOUCH_LICENSE file included in this distribution.
//
// **********************************************************************

// Ice version 3.3.1
// Generated from file `Servo.ice'

#import <Ice/LocalException.h>
#import <Ice/Stream.h>
#import <Ice/Internal.h>
#import <Servo.h>

#import <objc/message.h>

@implementation TeRKBounds

@synthesize min;
@synthesize max;

-(id) init:(ICEInt)min_p max:(ICEInt)max_p
{
    if(![super init])
    {
        return nil;
    }
    min = min_p;
    max = max_p;
    return self;
}

+(id) bounds:(ICEInt)min_p max:(ICEInt)max_p
{
    TeRKBounds *s__ = [(TeRKBounds* )[TeRKBounds alloc] init:min_p max:max_p];
    [s__ autorelease];
    return s__;
}

+(id) bounds
{
    TeRKBounds *s__ = [[TeRKBounds alloc] init];
    [s__ autorelease];
    return s__;
}

-(id) copyWithZone:(NSZone *)zone_p
{
    return [(TeRKBounds *)[[self class] allocWithZone:zone_p] init:min max:max];
}

-(NSUInteger) hash
{
    NSUInteger h_ = 0;
    h_ = (h_ << 1) ^ min;
    h_ = (h_ << 1) ^ max;
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
    TeRKBounds *obj_ = (TeRKBounds *)o_;
    if(min != obj_->min)
    {
        return NO;
    }
    if(max != obj_->max)
    {
        return NO;
    }
    return YES;
}

+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)os_
{
    TeRKBounds* p = (TeRKBounds*)obj;
    if(p == nil)
    {
        p = [[[self class] alloc] init];
    }
    @try
    {
        [os_ writeInt:p->min];
        [os_ writeInt:p->max];
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
    TeRKBounds* p = [[[self class] alloc] init];
    @try
    {
        p->min = [is_ readInt];
        p->max = [is_ readInt];
    }
    @catch(NSException *ex)
    {
        [p release];
        @throw ex;
    }
    return p;
}
@end

@implementation TeRKServoCommandException

-(NSString *) ice_name
{
    return @"TeRK::ServoCommandException";
}

+(id) servoCommandException:(NSString *)reason_p
{
    TeRKServoCommandException *s__ = [(TeRKServoCommandException *)[TeRKServoCommandException alloc] init:reason_p];
    [s__ autorelease];
    return s__;
}

+(id) servoCommandException
{
    TeRKServoCommandException *s__ = [[TeRKServoCommandException alloc] init];
    [s__ autorelease];
    return s__;
}

-(void) write__:(id<ICEOutputStream>)os_
{
    [os_ writeString:@"::TeRK::ServoCommandException"];
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

@implementation TeRKServoConfig

@synthesize rangeBounds;
@synthesize initialPosition;

-(id) init:(TeRKBounds *)rangeBounds_p initialPosition:(ICEInt)initialPosition_p
{
    if(![super init])
    {
        return nil;
    }
    rangeBounds = [rangeBounds_p retain];
    initialPosition = initialPosition_p;
    return self;
}

+(id) servoConfig:(TeRKBounds *)rangeBounds_p initialPosition:(ICEInt)initialPosition_p
{
    TeRKServoConfig *s__ = [(TeRKServoConfig* )[TeRKServoConfig alloc] init:rangeBounds_p initialPosition:initialPosition_p];
    [s__ autorelease];
    return s__;
}

+(id) servoConfig
{
    TeRKServoConfig *s__ = [[TeRKServoConfig alloc] init];
    [s__ autorelease];
    return s__;
}

-(id) copyWithZone:(NSZone *)zone_p
{
    return [(TeRKServoConfig *)[[self class] allocWithZone:zone_p] init:rangeBounds initialPosition:initialPosition];
}

-(NSUInteger) hash
{
    NSUInteger h_ = 0;
    h_ = (h_ << 1) ^ [rangeBounds hash];
    h_ = (h_ << 1) ^ initialPosition;
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
    TeRKServoConfig *obj_ = (TeRKServoConfig *)o_;
    if(!rangeBounds)
    {
        if(obj_->rangeBounds)
        {
            return NO;
        }
    }
    else
    {
        if(![rangeBounds isEqual:obj_->rangeBounds])
        {
            return NO;
        }
    }
    if(initialPosition != obj_->initialPosition)
    {
        return NO;
    }
    return YES;
}

-(void) dealloc;
{
    [rangeBounds release];
    [super dealloc];
}

+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)os_
{
    TeRKServoConfig* p = (TeRKServoConfig*)obj;
    if(p == nil)
    {
        p = [[[self class] alloc] init];
    }
    @try
    {
        [TeRKBounds ice_writeWithStream:p->rangeBounds stream:os_];
        [os_ writeInt:p->initialPosition];
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
    TeRKServoConfig* p = [[[self class] alloc] init];
    @try
    {
        p->rangeBounds = [TeRKBounds ice_readWithStream:is_];
        p->initialPosition = [is_ readInt];
    }
    @catch(NSException *ex)
    {
        [p release];
        @throw ex;
    }
    return p;
}
@end

@implementation TeRKServoState

@synthesize servoPositions;

-(id) init:(TeRKIntArray *)servoPositions_p
{
    if(![super init])
    {
        return nil;
    }
    servoPositions = [servoPositions_p retain];
    return self;
}

+(id) servoState:(TeRKIntArray *)servoPositions_p
{
    TeRKServoState *s__ = [(TeRKServoState* )[TeRKServoState alloc] init:servoPositions_p];
    [s__ autorelease];
    return s__;
}

+(id) servoState
{
    TeRKServoState *s__ = [[TeRKServoState alloc] init];
    [s__ autorelease];
    return s__;
}

-(id) copyWithZone:(NSZone *)zone_p
{
    return [(TeRKServoState *)[[self class] allocWithZone:zone_p] init:servoPositions];
}

-(NSUInteger) hash
{
    NSUInteger h_ = 0;
    h_ = (h_ << 1) ^ [servoPositions hash];
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
    TeRKServoState *obj_ = (TeRKServoState *)o_;
    if(!servoPositions)
    {
        if(obj_->servoPositions)
        {
            return NO;
        }
    }
    else
    {
        if(![servoPositions isEqual:obj_->servoPositions])
        {
            return NO;
        }
    }
    return YES;
}

-(void) dealloc;
{
    [servoPositions release];
    [super dealloc];
}

+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)os_
{
    TeRKServoState* p = (TeRKServoState*)obj;
    if(p == nil)
    {
        p = [[[self class] alloc] init];
    }
    @try
    {
        [os_ writeIntSeq:p->servoPositions];
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
    TeRKServoState* p = [[[self class] alloc] init];
    @try
    {
        p->servoPositions = [is_ readIntSeq];
    }
    @catch(NSException *ex)
    {
        [p release];
        @throw ex;
    }
    return p;
}
@end

@implementation TeRKServoCommand

@synthesize servoMask;
@synthesize servoModes;
@synthesize servoPositions;
@synthesize servoSpeeds;

-(id) init:(TeRKBooleanArray *)servoMask_p servoModes:(TeRKServoModeArray *)servoModes_p servoPositions:(TeRKIntArray *)servoPositions_p servoSpeeds:(TeRKIntArray *)servoSpeeds_p
{
    if(![super init])
    {
        return nil;
    }
    servoMask = [servoMask_p retain];
    servoModes = [servoModes_p retain];
    servoPositions = [servoPositions_p retain];
    servoSpeeds = [servoSpeeds_p retain];
    return self;
}

+(id) servoCommand:(TeRKBooleanArray *)servoMask_p servoModes:(TeRKServoModeArray *)servoModes_p servoPositions:(TeRKIntArray *)servoPositions_p servoSpeeds:(TeRKIntArray *)servoSpeeds_p
{
    TeRKServoCommand *s__ = [(TeRKServoCommand* )[TeRKServoCommand alloc] init:servoMask_p servoModes:servoModes_p servoPositions:servoPositions_p servoSpeeds:servoSpeeds_p];
    [s__ autorelease];
    return s__;
}

+(id) servoCommand
{
    TeRKServoCommand *s__ = [[TeRKServoCommand alloc] init];
    [s__ autorelease];
    return s__;
}

-(id) copyWithZone:(NSZone *)zone_p
{
    return [(TeRKServoCommand *)[[self class] allocWithZone:zone_p] init:servoMask servoModes:servoModes servoPositions:servoPositions servoSpeeds:servoSpeeds];
}

-(NSUInteger) hash
{
    NSUInteger h_ = 0;
    h_ = (h_ << 1) ^ [servoMask hash];
    h_ = (h_ << 1) ^ [servoModes hash];
    h_ = (h_ << 1) ^ [servoPositions hash];
    h_ = (h_ << 1) ^ [servoSpeeds hash];
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
    TeRKServoCommand *obj_ = (TeRKServoCommand *)o_;
    if(!servoMask)
    {
        if(obj_->servoMask)
        {
            return NO;
        }
    }
    else
    {
        if(![servoMask isEqual:obj_->servoMask])
        {
            return NO;
        }
    }
    if(!servoModes)
    {
        if(obj_->servoModes)
        {
            return NO;
        }
    }
    else
    {
        if(![servoModes isEqual:obj_->servoModes])
        {
            return NO;
        }
    }
    if(!servoPositions)
    {
        if(obj_->servoPositions)
        {
            return NO;
        }
    }
    else
    {
        if(![servoPositions isEqual:obj_->servoPositions])
        {
            return NO;
        }
    }
    if(!servoSpeeds)
    {
        if(obj_->servoSpeeds)
        {
            return NO;
        }
    }
    else
    {
        if(![servoSpeeds isEqual:obj_->servoSpeeds])
        {
            return NO;
        }
    }
    return YES;
}

-(void) dealloc;
{
    [servoMask release];
    [servoModes release];
    [servoPositions release];
    [servoSpeeds release];
    [super dealloc];
}

+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)os_
{
    TeRKServoCommand* p = (TeRKServoCommand*)obj;
    if(p == nil)
    {
        p = [[[self class] alloc] init];
    }
    @try
    {
        [os_ writeBoolSeq:p->servoMask];
        [os_ writeEnumSeq:p->servoModes limit:3];
        [os_ writeIntSeq:p->servoPositions];
        [os_ writeIntSeq:p->servoSpeeds];
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
    TeRKServoCommand* p = [[[self class] alloc] init];
    @try
    {
        p->servoMask = [is_ readBoolSeq];
        p->servoModes = [is_ readEnumSeq:3];
        p->servoPositions = [is_ readIntSeq];
        p->servoSpeeds = [is_ readIntSeq];
    }
    @catch(NSException *ex)
    {
        [p release];
        @throw ex;
    }
    return p;
}
@end

@implementation TeRKServoController

+(id)objectWithDelegate:(id)delegate
{
    return [[[TeRKServoController alloc] initWithDelegate:delegate] autorelease];
}

-(void) write__:(id<ICEOutputStream>)os_
{
    [os_ writeTypeId:@"::TeRK::ServoController"];
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

static NSString *TeRKServoController_ids__[] = 
{
    @"::Ice::Object",
    @"::TeRK::AbstractCommandController",
    @"::TeRK::PropertyManager",
    @"::TeRK::ServoController"
};

+(BOOL)execute___:(id<TeRKServoController>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(execute:current:), current);
    TeRKServoCommand *command = nil;
    @try
    {
        command = [TeRKServoCommand ice_readWithStream:is_];
        TeRKServoState *ret_ = [target execute:command current:current];
        [TeRKServoState ice_writeWithStream:ret_ stream:os_];
    }
    @catch(TeRKServoCommandException *ex)
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

+(BOOL)setBounds___:(id<TeRKServoController>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(setBounds:servoBounds:current:), current);
    TeRKMutableBooleanArray *servoMask = nil;
    TeRKMutableBoundsArray *servoBounds = nil;
    @try
    {
        servoMask = [is_ readBoolSeq];
        servoBounds = [TeRKBoundsArrayHelper ice_readWithStream:is_];
        [target setBounds:servoMask servoBounds:servoBounds current:current];
    }
    @finally
    {
        [(id<NSObject>)servoMask release];
        [(id<NSObject>)servoBounds release];
    }
    return YES;
}

+(BOOL)getBounds___:(id<TeRKServoController>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(getBounds:), current);
    TeRKBoundsArray *ret_ = [target getBounds:current];
    [TeRKBoundsArrayHelper ice_writeWithStream:ret_ stream:os_];
    return YES;
}

+(BOOL)setConfigs___:(id<TeRKServoController>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(setConfigs:servoConfigs:current:), current);
    TeRKMutableBooleanArray *servoMask = nil;
    TeRKMutableServoConfigArray *servoConfigs = nil;
    @try
    {
        servoMask = [is_ readBoolSeq];
        servoConfigs = [TeRKServoConfigArrayHelper ice_readWithStream:is_];
        [target setConfigs:servoMask servoConfigs:servoConfigs current:current];
    }
    @finally
    {
        [(id<NSObject>)servoMask release];
        [(id<NSObject>)servoConfigs release];
    }
    return YES;
}

+(BOOL)getConfigs___:(id<TeRKServoController>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(getConfigs:), current);
    TeRKServoConfigArray *ret_ = [target getConfigs:current];
    [TeRKServoConfigArrayHelper ice_writeWithStream:ret_ stream:os_];
    return YES;
}

static NSString *TeRKServoController_all__[] =
{
    @"execute",
    @"getBounds",
    @"getConfigs",
    @"getProperties",
    @"getProperty",
    @"getPropertyKeys",
    @"ice_id",
    @"ice_ids",
    @"ice_isA",
    @"ice_ping",
    @"setBounds",
    @"setConfigs",
    @"setProperty"
};

-(BOOL) dispatch__:(ICECurrent *)current is:(id<ICEInputStream>)is os:(id<ICEOutputStream>)os
{
    id target__ = [self target__];
    switch(ICEInternalLookupString(TeRKServoController_all__, sizeof(TeRKServoController_all__) / sizeof(NSString*), current.operation))
    {
        case 0:
            return [TeRKServoController execute___:(id<TeRKServoController>)target__ current:current is:is os:os];
        case 1:
            return [TeRKServoController getBounds___:(id<TeRKServoController>)target__ current:current is:is os:os];
        case 2:
            return [TeRKServoController getConfigs___:(id<TeRKServoController>)target__ current:current is:is os:os];
        case 3:
            return [TeRKPropertyManager getProperties___:(id<TeRKPropertyManager>)target__ current:current is:is os:os];
        case 4:
            return [TeRKPropertyManager getProperty___:(id<TeRKPropertyManager>)target__ current:current is:is os:os];
        case 5:
            return [TeRKPropertyManager getPropertyKeys___:(id<TeRKPropertyManager>)target__ current:current is:is os:os];
        case 6:
            return [ICEObject ice_id___:(id<ICEObject>)self current:current is:is os:os];
        case 7:
            return [ICEObject ice_ids___:(id<ICEObject>)self current:current is:is os:os];
        case 8:
            return [ICEObject ice_isA___:(id<ICEObject>)self current:current is:is os:os];
        case 9:
            return [ICEObject ice_ping___:(id<ICEObject>)self current:current is:is os:os];
        case 10:
            return [TeRKServoController setBounds___:(id<TeRKServoController>)target__ current:current is:is os:os];
        case 11:
            return [TeRKServoController setConfigs___:(id<TeRKServoController>)target__ current:current is:is os:os];
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
    *count = sizeof(TeRKServoController_ids__) / sizeof(NSString *);
    *idx = 3;
    return TeRKServoController_ids__;
}
@end

@implementation TeRKServoControllerPrx

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

-(TeRKServoState *) execute:(TeRKServoCommand *)command
{
    return [TeRKServoControllerPrx execute___:command prx:self context:nil];
}

-(TeRKServoState *) execute:(TeRKServoCommand *)command context:(ICEContext *)ctx_
{
    return [TeRKServoControllerPrx execute___:command prx:self context:ctx_];
}

-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ command:(TeRKServoCommand *)command
{
    return [TeRKServoControllerPrx execute_async___:target_ response:response_ exception:exception_ sent:nil  command:command prx:self context:nil];
}

-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ command:(TeRKServoCommand *)command context:(ICEContext *)ctx_
{
    return [TeRKServoControllerPrx execute_async___:target_ response:response_ exception:exception_ sent:nil  command:command prx:self context:ctx_];
}

-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKServoCommand *)command
{
    return [TeRKServoControllerPrx execute_async___:target_ response:response_ exception:exception_ sent:sent_  command:command prx:self context:nil];
}

-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKServoCommand *)command context:(ICEContext *)ctx_
{
    return [TeRKServoControllerPrx execute_async___:target_ response:response_ exception:exception_ sent:sent_  command:command prx:self context:ctx_];
}

-(TeRKMutableBoundsArray *) getBounds
{
    return [TeRKServoControllerPrx getBounds___:self context:nil];
}

-(TeRKMutableBoundsArray *) getBounds:(ICEContext *)ctx_
{
    return [TeRKServoControllerPrx getBounds___:self context:ctx_];
}

-(BOOL) getBounds_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_
{
    return [TeRKServoControllerPrx getBounds_async___:target_ response:response_ exception:exception_ sent:nil  prx:self context:nil];
}

-(BOOL) getBounds_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ context:(ICEContext *)ctx_
{
    return [TeRKServoControllerPrx getBounds_async___:target_ response:response_ exception:exception_ sent:nil  prx:self context:ctx_];
}

-(BOOL) getBounds_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_
{
    return [TeRKServoControllerPrx getBounds_async___:target_ response:response_ exception:exception_ sent:sent_  prx:self context:nil];
}

-(BOOL) getBounds_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ context:(ICEContext *)ctx_
{
    return [TeRKServoControllerPrx getBounds_async___:target_ response:response_ exception:exception_ sent:sent_  prx:self context:ctx_];
}

-(TeRKMutableServoConfigArray *) getConfigs
{
    return [TeRKServoControllerPrx getConfigs___:self context:nil];
}

-(TeRKMutableServoConfigArray *) getConfigs:(ICEContext *)ctx_
{
    return [TeRKServoControllerPrx getConfigs___:self context:ctx_];
}

-(BOOL) getConfigs_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_
{
    return [TeRKServoControllerPrx getConfigs_async___:target_ response:response_ exception:exception_ sent:nil  prx:self context:nil];
}

-(BOOL) getConfigs_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ context:(ICEContext *)ctx_
{
    return [TeRKServoControllerPrx getConfigs_async___:target_ response:response_ exception:exception_ sent:nil  prx:self context:ctx_];
}

-(BOOL) getConfigs_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_
{
    return [TeRKServoControllerPrx getConfigs_async___:target_ response:response_ exception:exception_ sent:sent_  prx:self context:nil];
}

-(BOOL) getConfigs_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ context:(ICEContext *)ctx_
{
    return [TeRKServoControllerPrx getConfigs_async___:target_ response:response_ exception:exception_ sent:sent_  prx:self context:ctx_];
}

-(void) setBounds:(TeRKBooleanArray *)servoMask servoBounds:(TeRKBoundsArray *)servoBounds
{
    [TeRKServoControllerPrx setBounds___:servoMask servoBounds:servoBounds prx:self context:nil];
}

-(void) setBounds:(TeRKBooleanArray *)servoMask servoBounds:(TeRKBoundsArray *)servoBounds context:(ICEContext *)ctx_
{
    [TeRKServoControllerPrx setBounds___:servoMask servoBounds:servoBounds prx:self context:ctx_];
}

-(BOOL) setBounds_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ servoMask:(TeRKBooleanArray *)servoMask servoBounds:(TeRKBoundsArray *)servoBounds
{
    return [TeRKServoControllerPrx setBounds_async___:target_ response:response_ exception:exception_ sent:nil  servoMask:servoMask servoBounds:servoBounds prx:self context:nil];
}

-(BOOL) setBounds_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ servoMask:(TeRKBooleanArray *)servoMask servoBounds:(TeRKBoundsArray *)servoBounds context:(ICEContext *)ctx_
{
    return [TeRKServoControllerPrx setBounds_async___:target_ response:response_ exception:exception_ sent:nil  servoMask:servoMask servoBounds:servoBounds prx:self context:ctx_];
}

-(BOOL) setBounds_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ servoMask:(TeRKBooleanArray *)servoMask servoBounds:(TeRKBoundsArray *)servoBounds
{
    return [TeRKServoControllerPrx setBounds_async___:target_ response:response_ exception:exception_ sent:sent_  servoMask:servoMask servoBounds:servoBounds prx:self context:nil];
}

-(BOOL) setBounds_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ servoMask:(TeRKBooleanArray *)servoMask servoBounds:(TeRKBoundsArray *)servoBounds context:(ICEContext *)ctx_
{
    return [TeRKServoControllerPrx setBounds_async___:target_ response:response_ exception:exception_ sent:sent_  servoMask:servoMask servoBounds:servoBounds prx:self context:ctx_];
}

-(void) setConfigs:(TeRKBooleanArray *)servoMask servoConfigs:(TeRKServoConfigArray *)servoConfigs
{
    [TeRKServoControllerPrx setConfigs___:servoMask servoConfigs:servoConfigs prx:self context:nil];
}

-(void) setConfigs:(TeRKBooleanArray *)servoMask servoConfigs:(TeRKServoConfigArray *)servoConfigs context:(ICEContext *)ctx_
{
    [TeRKServoControllerPrx setConfigs___:servoMask servoConfigs:servoConfigs prx:self context:ctx_];
}

-(BOOL) setConfigs_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ servoMask:(TeRKBooleanArray *)servoMask servoConfigs:(TeRKServoConfigArray *)servoConfigs
{
    return [TeRKServoControllerPrx setConfigs_async___:target_ response:response_ exception:exception_ sent:nil  servoMask:servoMask servoConfigs:servoConfigs prx:self context:nil];
}

-(BOOL) setConfigs_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ servoMask:(TeRKBooleanArray *)servoMask servoConfigs:(TeRKServoConfigArray *)servoConfigs context:(ICEContext *)ctx_
{
    return [TeRKServoControllerPrx setConfigs_async___:target_ response:response_ exception:exception_ sent:nil  servoMask:servoMask servoConfigs:servoConfigs prx:self context:ctx_];
}

-(BOOL) setConfigs_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ servoMask:(TeRKBooleanArray *)servoMask servoConfigs:(TeRKServoConfigArray *)servoConfigs
{
    return [TeRKServoControllerPrx setConfigs_async___:target_ response:response_ exception:exception_ sent:sent_  servoMask:servoMask servoConfigs:servoConfigs prx:self context:nil];
}

-(BOOL) setConfigs_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ servoMask:(TeRKBooleanArray *)servoMask servoConfigs:(TeRKServoConfigArray *)servoConfigs context:(ICEContext *)ctx_
{
    return [TeRKServoControllerPrx setConfigs_async___:target_ response:response_ exception:exception_ sent:sent_  servoMask:servoMask servoConfigs:servoConfigs prx:self context:ctx_];
}

+(NSString *) ice_staticId
{
    return @"::TeRK::ServoController";
}

+(TeRKServoState *) execute___:(TeRKServoCommand *)command prx:(ICEObjectPrx <TeRKServoControllerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"execute"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    TeRKServoState *ret_ = nil;
    @try
    {
        [TeRKServoCommand ice_writeWithStream:command stream:os_];
        [prx_ invoke__:@"execute" mode:ICENormal os:os_ is:&is_ context:ctx_];
        ret_ = [TeRKServoState ice_readWithStream:is_];
    }
    @catch(TeRKServoCommandException *ex_)
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

+(BOOL) execute_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKServoCommand *)command prx:(ICEObjectPrx <TeRKServoControllerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"execute"];
    SEL finished_ = @selector(execute_async_finished___:response:exception:ok:is:);
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    @try
    {
        [TeRKServoCommand ice_writeWithStream:command stream:os_];
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
    TeRKServoState *ret_ = nil;
    @try
    {
        if(!ok_)
        {
            [is_ throwException];
        }
        ret_ = [TeRKServoState ice_readWithStream:is_];
        ((void(*)(id, SEL, TeRKServoState *))objc_msgSend)(target_, response_, ret_);
    }
    @catch(TeRKServoCommandException *ex_)
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

+(void) setBounds___:(TeRKBooleanArray *)servoMask servoBounds:(TeRKBoundsArray *)servoBounds prx:(ICEObjectPrx <TeRKServoControllerPrx> *)prx_ context:(ICEContext *)ctx_
{
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    @try
    {
        [os_ writeBoolSeq:servoMask];
        [TeRKBoundsArrayHelper ice_writeWithStream:servoBounds stream:os_];
        [prx_ invoke__:@"setBounds" mode:ICENormal os:os_ is:&is_ context:ctx_];
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

+(BOOL) setBounds_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ servoMask:(TeRKBooleanArray *)servoMask servoBounds:(TeRKBoundsArray *)servoBounds prx:(ICEObjectPrx <TeRKServoControllerPrx> *)prx_ context:(ICEContext *)ctx_
{
    SEL finished_ = @selector(setBounds_async_finished___:response:exception:ok:is:);
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    @try
    {
        [os_ writeBoolSeq:servoMask];
        [TeRKBoundsArrayHelper ice_writeWithStream:servoBounds stream:os_];
        return [prx_ invoke_async__:target_ response:response_ exception:exception_ sent:sent_ finishedClass:self finished:finished_ operation:@"setBounds" mode:ICENormal os:os_ context:ctx_];
    }
    @finally
    {
        [os_ release];
    }
    return FALSE; // Keep the compiler happy.
}

+(void) setBounds_async_finished___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ ok:(BOOL)ok_ is:(id<ICEInputStream>)is_
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

+(TeRKMutableBoundsArray *) getBounds___:(ICEObjectPrx <TeRKServoControllerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"getBounds"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    TeRKMutableBoundsArray *ret_ = nil;
    @try
    {
        [prx_ invoke__:@"getBounds" mode:ICENormal os:os_ is:&is_ context:ctx_];
        ret_ = [TeRKBoundsArrayHelper ice_readWithStream:is_];
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

+(BOOL) getBounds_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ prx:(ICEObjectPrx <TeRKServoControllerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"getBounds"];
    SEL finished_ = @selector(getBounds_async_finished___:response:exception:ok:is:);
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    @try
    {
        return [prx_ invoke_async__:target_ response:response_ exception:exception_ sent:sent_ finishedClass:self finished:finished_ operation:@"getBounds" mode:ICENormal os:os_ context:ctx_];
    }
    @finally
    {
        [os_ release];
    }
    return FALSE; // Keep the compiler happy.
}

+(void) getBounds_async_finished___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ ok:(BOOL)ok_ is:(id<ICEInputStream>)is_
{
    TeRKMutableBoundsArray *ret_ = nil;
    @try
    {
        if(!ok_)
        {
            [is_ throwException];
        }
        ret_ = [TeRKBoundsArrayHelper ice_readWithStream:is_];
        ((void(*)(id, SEL, TeRKBoundsArray *))objc_msgSend)(target_, response_, ret_);
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

+(void) setConfigs___:(TeRKBooleanArray *)servoMask servoConfigs:(TeRKServoConfigArray *)servoConfigs prx:(ICEObjectPrx <TeRKServoControllerPrx> *)prx_ context:(ICEContext *)ctx_
{
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    @try
    {
        [os_ writeBoolSeq:servoMask];
        [TeRKServoConfigArrayHelper ice_writeWithStream:servoConfigs stream:os_];
        [prx_ invoke__:@"setConfigs" mode:ICENormal os:os_ is:&is_ context:ctx_];
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

+(BOOL) setConfigs_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ servoMask:(TeRKBooleanArray *)servoMask servoConfigs:(TeRKServoConfigArray *)servoConfigs prx:(ICEObjectPrx <TeRKServoControllerPrx> *)prx_ context:(ICEContext *)ctx_
{
    SEL finished_ = @selector(setConfigs_async_finished___:response:exception:ok:is:);
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    @try
    {
        [os_ writeBoolSeq:servoMask];
        [TeRKServoConfigArrayHelper ice_writeWithStream:servoConfigs stream:os_];
        return [prx_ invoke_async__:target_ response:response_ exception:exception_ sent:sent_ finishedClass:self finished:finished_ operation:@"setConfigs" mode:ICENormal os:os_ context:ctx_];
    }
    @finally
    {
        [os_ release];
    }
    return FALSE; // Keep the compiler happy.
}

+(void) setConfigs_async_finished___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ ok:(BOOL)ok_ is:(id<ICEInputStream>)is_
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

+(TeRKMutableServoConfigArray *) getConfigs___:(ICEObjectPrx <TeRKServoControllerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"getConfigs"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    TeRKMutableServoConfigArray *ret_ = nil;
    @try
    {
        [prx_ invoke__:@"getConfigs" mode:ICENormal os:os_ is:&is_ context:ctx_];
        ret_ = [TeRKServoConfigArrayHelper ice_readWithStream:is_];
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

+(BOOL) getConfigs_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ prx:(ICEObjectPrx <TeRKServoControllerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"getConfigs"];
    SEL finished_ = @selector(getConfigs_async_finished___:response:exception:ok:is:);
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    @try
    {
        return [prx_ invoke_async__:target_ response:response_ exception:exception_ sent:sent_ finishedClass:self finished:finished_ operation:@"getConfigs" mode:ICENormal os:os_ context:ctx_];
    }
    @finally
    {
        [os_ release];
    }
    return FALSE; // Keep the compiler happy.
}

+(void) getConfigs_async_finished___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ ok:(BOOL)ok_ is:(id<ICEInputStream>)is_
{
    TeRKMutableServoConfigArray *ret_ = nil;
    @try
    {
        if(!ok_)
        {
            [is_ throwException];
        }
        ret_ = [TeRKServoConfigArrayHelper ice_readWithStream:is_];
        ((void(*)(id, SEL, TeRKServoConfigArray *))objc_msgSend)(target_, response_, ret_);
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

@implementation TeRKServoModeHelper
+(ICEInt) getLimit
{
    return 3;
}
@end

@implementation TeRKServoModeArrayHelper
+(id) ice_readWithStream:(id<ICEInputStream>)stream
{
    return [stream readEnumSeq:3];
}

+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream
{
    [stream writeEnumSeq:obj limit:3];
}
@end

@implementation TeRKBoundsArrayHelper
+(Class) getContained
{
    return [TeRKBounds class];
}
@end

@implementation TeRKServoConfigArrayHelper
+(Class) getContained
{
    return [TeRKServoConfig class];
}
@end
