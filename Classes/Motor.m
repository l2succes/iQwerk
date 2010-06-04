// **********************************************************************
//
// Copyright (c) 2003-2009 ZeroC, Inc. All rights reserved.
//
// This copy of Ice is licensed to you under the terms described in the
// ICE_TOUCH_LICENSE file included in this distribution.
//
// **********************************************************************

// Ice version 3.3.1
// Generated from file `Motor.ice'

#import <Ice/LocalException.h>
#import <Ice/Stream.h>
#import <Ice/Internal.h>
#import <Motor.h>

#import <objc/message.h>

@implementation TeRKMotorException

-(NSString *) ice_name
{
    return @"TeRK::MotorException";
}

+(id) motorException:(NSString *)reason_p
{
    TeRKMotorException *s__ = [(TeRKMotorException *)[TeRKMotorException alloc] init:reason_p];
    [s__ autorelease];
    return s__;
}

+(id) motorException
{
    TeRKMotorException *s__ = [[TeRKMotorException alloc] init];
    [s__ autorelease];
    return s__;
}

-(void) write__:(id<ICEOutputStream>)os_
{
    [os_ writeString:@"::TeRK::MotorException"];
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

@implementation TeRKMotorCommandException

-(NSString *) ice_name
{
    return @"TeRK::MotorCommandException";
}

+(id) motorCommandException:(NSString *)reason_p
{
    TeRKMotorCommandException *s__ = [(TeRKMotorCommandException *)[TeRKMotorCommandException alloc] init:reason_p];
    [s__ autorelease];
    return s__;
}

+(id) motorCommandException
{
    TeRKMotorCommandException *s__ = [[TeRKMotorCommandException alloc] init];
    [s__ autorelease];
    return s__;
}

-(void) write__:(id<ICEOutputStream>)os_
{
    [os_ writeString:@"::TeRK::MotorCommandException"];
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

@implementation TeRKMotorBuffer

@synthesize values;

-(id) init:(TeRKIntArray *)values_p
{
    if(![super init])
    {
        return nil;
    }
    values = [values_p retain];
    return self;
}

+(id) motorBuffer:(TeRKIntArray *)values_p
{
    TeRKMotorBuffer *s__ = [(TeRKMotorBuffer* )[TeRKMotorBuffer alloc] init:values_p];
    [s__ autorelease];
    return s__;
}

+(id) motorBuffer
{
    TeRKMotorBuffer *s__ = [[TeRKMotorBuffer alloc] init];
    [s__ autorelease];
    return s__;
}

-(id) copyWithZone:(NSZone *)zone_p
{
    return [(TeRKMotorBuffer *)[[self class] allocWithZone:zone_p] init:values];
}

-(NSUInteger) hash
{
    NSUInteger h_ = 0;
    h_ = (h_ << 1) ^ [values hash];
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
    TeRKMotorBuffer *obj_ = (TeRKMotorBuffer *)o_;
    if(!values)
    {
        if(obj_->values)
        {
            return NO;
        }
    }
    else
    {
        if(![values isEqual:obj_->values])
        {
            return NO;
        }
    }
    return YES;
}

-(void) dealloc;
{
    [values release];
    [super dealloc];
}

+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)os_
{
    TeRKMotorBuffer* p = (TeRKMotorBuffer*)obj;
    if(p == nil)
    {
        p = [[[self class] alloc] init];
    }
    @try
    {
        [os_ writeIntSeq:p->values];
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
    TeRKMotorBuffer* p = [[[self class] alloc] init];
    @try
    {
        p->values = [is_ readIntSeq];
    }
    @catch(NSException *ex)
    {
        [p release];
        @throw ex;
    }
    return p;
}
@end

@implementation TeRKMotorState

@synthesize motorVelocities;
@synthesize motorPositions;
@synthesize motorCurrents;
@synthesize motorDutyCycles;
@synthesize motorDone;

-(id) init:(TeRKIntArray *)motorVelocities_p motorPositions:(TeRKIntArray *)motorPositions_p motorCurrents:(TeRKIntArray *)motorCurrents_p motorDutyCycles:(TeRKIntArray *)motorDutyCycles_p motorDone:(TeRKBooleanArray *)motorDone_p
{
    if(![super init])
    {
        return nil;
    }
    motorVelocities = [motorVelocities_p retain];
    motorPositions = [motorPositions_p retain];
    motorCurrents = [motorCurrents_p retain];
    motorDutyCycles = [motorDutyCycles_p retain];
    motorDone = [motorDone_p retain];
    return self;
}

+(id) motorState:(TeRKIntArray *)motorVelocities_p motorPositions:(TeRKIntArray *)motorPositions_p motorCurrents:(TeRKIntArray *)motorCurrents_p motorDutyCycles:(TeRKIntArray *)motorDutyCycles_p motorDone:(TeRKBooleanArray *)motorDone_p
{
    TeRKMotorState *s__ = [(TeRKMotorState* )[TeRKMotorState alloc] init:motorVelocities_p motorPositions:motorPositions_p motorCurrents:motorCurrents_p motorDutyCycles:motorDutyCycles_p motorDone:motorDone_p];
    [s__ autorelease];
    return s__;
}

+(id) motorState
{
    TeRKMotorState *s__ = [[TeRKMotorState alloc] init];
    [s__ autorelease];
    return s__;
}

-(id) copyWithZone:(NSZone *)zone_p
{
    return [(TeRKMotorState *)[[self class] allocWithZone:zone_p] init:motorVelocities motorPositions:motorPositions motorCurrents:motorCurrents motorDutyCycles:motorDutyCycles motorDone:motorDone];
}

-(NSUInteger) hash
{
    NSUInteger h_ = 0;
    h_ = (h_ << 1) ^ [motorVelocities hash];
    h_ = (h_ << 1) ^ [motorPositions hash];
    h_ = (h_ << 1) ^ [motorCurrents hash];
    h_ = (h_ << 1) ^ [motorDutyCycles hash];
    h_ = (h_ << 1) ^ [motorDone hash];
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
    TeRKMotorState *obj_ = (TeRKMotorState *)o_;
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
    if(!motorPositions)
    {
        if(obj_->motorPositions)
        {
            return NO;
        }
    }
    else
    {
        if(![motorPositions isEqual:obj_->motorPositions])
        {
            return NO;
        }
    }
    if(!motorCurrents)
    {
        if(obj_->motorCurrents)
        {
            return NO;
        }
    }
    else
    {
        if(![motorCurrents isEqual:obj_->motorCurrents])
        {
            return NO;
        }
    }
    if(!motorDutyCycles)
    {
        if(obj_->motorDutyCycles)
        {
            return NO;
        }
    }
    else
    {
        if(![motorDutyCycles isEqual:obj_->motorDutyCycles])
        {
            return NO;
        }
    }
    if(!motorDone)
    {
        if(obj_->motorDone)
        {
            return NO;
        }
    }
    else
    {
        if(![motorDone isEqual:obj_->motorDone])
        {
            return NO;
        }
    }
    return YES;
}

-(void) dealloc;
{
    [motorVelocities release];
    [motorPositions release];
    [motorCurrents release];
    [motorDutyCycles release];
    [motorDone release];
    [super dealloc];
}

+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)os_
{
    TeRKMotorState* p = (TeRKMotorState*)obj;
    if(p == nil)
    {
        p = [[[self class] alloc] init];
    }
    @try
    {
        [os_ writeIntSeq:p->motorVelocities];
        [os_ writeIntSeq:p->motorPositions];
        [os_ writeIntSeq:p->motorCurrents];
        [os_ writeIntSeq:p->motorDutyCycles];
        [os_ writeBoolSeq:p->motorDone];
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
    TeRKMotorState* p = [[[self class] alloc] init];
    @try
    {
        p->motorVelocities = [is_ readIntSeq];
        p->motorPositions = [is_ readIntSeq];
        p->motorCurrents = [is_ readIntSeq];
        p->motorDutyCycles = [is_ readIntSeq];
        p->motorDone = [is_ readBoolSeq];
    }
    @catch(NSException *ex)
    {
        [p release];
        @throw ex;
    }
    return p;
}
@end

@implementation TeRKMotorCommand

@synthesize motorMask;
@synthesize motorModes;
@synthesize motorPositions;
@synthesize motorVelocities;
@synthesize motorAccelerations;

-(id) init:(TeRKBooleanArray *)motorMask_p motorModes:(TeRKMotorModeArray *)motorModes_p motorPositions:(TeRKIntArray *)motorPositions_p motorVelocities:(TeRKIntArray *)motorVelocities_p motorAccelerations:(TeRKIntArray *)motorAccelerations_p
{
    if(![super init])
    {
        return nil;
    }
    motorMask = [motorMask_p retain];
    motorModes = [motorModes_p retain];
    motorPositions = [motorPositions_p retain];
    motorVelocities = [motorVelocities_p retain];
    motorAccelerations = [motorAccelerations_p retain];
    return self;
}

+(id) motorCommand:(TeRKBooleanArray *)motorMask_p motorModes:(TeRKMotorModeArray *)motorModes_p motorPositions:(TeRKIntArray *)motorPositions_p motorVelocities:(TeRKIntArray *)motorVelocities_p motorAccelerations:(TeRKIntArray *)motorAccelerations_p
{
    TeRKMotorCommand *s__ = [(TeRKMotorCommand* )[TeRKMotorCommand alloc] init:motorMask_p motorModes:motorModes_p motorPositions:motorPositions_p motorVelocities:motorVelocities_p motorAccelerations:motorAccelerations_p];
    [s__ autorelease];
    return s__;
}

+(id) motorCommand
{
    TeRKMotorCommand *s__ = [[TeRKMotorCommand alloc] init];
    [s__ autorelease];
    return s__;
}

-(id) copyWithZone:(NSZone *)zone_p
{
    return [(TeRKMotorCommand *)[[self class] allocWithZone:zone_p] init:motorMask motorModes:motorModes motorPositions:motorPositions motorVelocities:motorVelocities motorAccelerations:motorAccelerations];
}

-(NSUInteger) hash
{
    NSUInteger h_ = 0;
    h_ = (h_ << 1) ^ [motorMask hash];
    h_ = (h_ << 1) ^ [motorModes hash];
    h_ = (h_ << 1) ^ [motorPositions hash];
    h_ = (h_ << 1) ^ [motorVelocities hash];
    h_ = (h_ << 1) ^ [motorAccelerations hash];
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
    TeRKMotorCommand *obj_ = (TeRKMotorCommand *)o_;
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
    if(!motorModes)
    {
        if(obj_->motorModes)
        {
            return NO;
        }
    }
    else
    {
        if(![motorModes isEqual:obj_->motorModes])
        {
            return NO;
        }
    }
    if(!motorPositions)
    {
        if(obj_->motorPositions)
        {
            return NO;
        }
    }
    else
    {
        if(![motorPositions isEqual:obj_->motorPositions])
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
    if(!motorAccelerations)
    {
        if(obj_->motorAccelerations)
        {
            return NO;
        }
    }
    else
    {
        if(![motorAccelerations isEqual:obj_->motorAccelerations])
        {
            return NO;
        }
    }
    return YES;
}

-(void) dealloc;
{
    [motorMask release];
    [motorModes release];
    [motorPositions release];
    [motorVelocities release];
    [motorAccelerations release];
    [super dealloc];
}

+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)os_
{
    TeRKMotorCommand* p = (TeRKMotorCommand*)obj;
    if(p == nil)
    {
        p = [[[self class] alloc] init];
    }
    @try
    {
        [os_ writeBoolSeq:p->motorMask];
        [os_ writeEnumSeq:p->motorModes limit:3];
        [os_ writeIntSeq:p->motorPositions];
        [os_ writeIntSeq:p->motorVelocities];
        [os_ writeIntSeq:p->motorAccelerations];
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
    TeRKMotorCommand* p = [[[self class] alloc] init];
    @try
    {
        p->motorMask = [is_ readBoolSeq];
        p->motorModes = [is_ readEnumSeq:3];
        p->motorPositions = [is_ readIntSeq];
        p->motorVelocities = [is_ readIntSeq];
        p->motorAccelerations = [is_ readIntSeq];
    }
    @catch(NSException *ex)
    {
        [p release];
        @throw ex;
    }
    return p;
}
@end

@implementation TeRKMotorController

+(id)objectWithDelegate:(id)delegate
{
    return [[[TeRKMotorController alloc] initWithDelegate:delegate] autorelease];
}

-(void) write__:(id<ICEOutputStream>)os_
{
    [os_ writeTypeId:@"::TeRK::MotorController"];
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

static NSString *TeRKMotorController_ids__[] = 
{
    @"::Ice::Object",
    @"::TeRK::AbstractCommandController",
    @"::TeRK::MotorController",
    @"::TeRK::PropertyManager"
};

+(BOOL)execute___:(id<TeRKMotorController>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(execute:current:), current);
    TeRKMotorCommand *command = nil;
    @try
    {
        command = [TeRKMotorCommand ice_readWithStream:is_];
        TeRKMotorState *ret_ = [target execute:command current:current];
        [TeRKMotorState ice_writeWithStream:ret_ stream:os_];
    }
    @catch(TeRKMotorCommandException *ex)
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

+(BOOL)getFrequency___:(id<TeRKMotorController>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(getFrequency:), current);
    ICEInt ret_ = [target getFrequency:current];
    [os_ writeInt:ret_];
    return YES;
}

+(BOOL)startMotorBufferRecord___:(id<TeRKMotorController>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(startMotorBufferRecord:current:), current);
    TeRKMutableBooleanArray *motorMask = nil;
    @try
    {
        motorMask = [is_ readBoolSeq];
        [target startMotorBufferRecord:motorMask current:current];
    }
    @catch(TeRKMotorException *ex)
    {
        [os_ writeException:ex];
        return NO;
    }
    @finally
    {
        [(id<NSObject>)motorMask release];
    }
    return YES;
}

+(BOOL)stopMotorBufferRecord___:(id<TeRKMotorController>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICEIdempotent, @selector(stopMotorBufferRecord:current:), current);
    TeRKMutableBooleanArray *motorMask = nil;
    @try
    {
        motorMask = [is_ readBoolSeq];
        [target stopMotorBufferRecord:motorMask current:current];
    }
    @catch(TeRKMotorException *ex)
    {
        [os_ writeException:ex];
        return NO;
    }
    @finally
    {
        [(id<NSObject>)motorMask release];
    }
    return YES;
}

+(BOOL)getMotorBuffers___:(id<TeRKMotorController>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENonmutating, @selector(getMotorBuffers:current:), current);
    TeRKMutableBooleanArray *motorMask = nil;
    @try
    {
        motorMask = [is_ readBoolSeq];
        TeRKMotorBufferArray *ret_ = [target getMotorBuffers:motorMask current:current];
        [TeRKMotorBufferArrayHelper ice_writeWithStream:ret_ stream:os_];
    }
    @catch(TeRKMotorException *ex)
    {
        [os_ writeException:ex];
        return NO;
    }
    @finally
    {
        [(id<NSObject>)motorMask release];
    }
    return YES;
}

+(BOOL)setMotorBuffer___:(id<TeRKMotorController>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICEIdempotent, @selector(setMotorBuffer:motorBuffers:current:), current);
    TeRKMutableBooleanArray *motorMask = nil;
    TeRKMutableMotorBufferArray *motorBuffers = nil;
    @try
    {
        motorMask = [is_ readBoolSeq];
        motorBuffers = [TeRKMotorBufferArrayHelper ice_readWithStream:is_];
        [target setMotorBuffer:motorMask motorBuffers:motorBuffers current:current];
    }
    @catch(TeRKMotorException *ex)
    {
        [os_ writeException:ex];
        return NO;
    }
    @finally
    {
        [(id<NSObject>)motorMask release];
        [(id<NSObject>)motorBuffers release];
    }
    return YES;
}

+(BOOL)playMotorBuffer___:(id<TeRKMotorController>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(playMotorBuffer:current:), current);
    TeRKMutableBooleanArray *motorMask = nil;
    @try
    {
        motorMask = [is_ readBoolSeq];
        [target playMotorBuffer:motorMask current:current];
    }
    @catch(TeRKMotorException *ex)
    {
        [os_ writeException:ex];
        return NO;
    }
    @finally
    {
        [(id<NSObject>)motorMask release];
    }
    return YES;
}

static NSString *TeRKMotorController_all__[] =
{
    @"execute",
    @"getFrequency",
    @"getMotorBuffers",
    @"getProperties",
    @"getProperty",
    @"getPropertyKeys",
    @"ice_id",
    @"ice_ids",
    @"ice_isA",
    @"ice_ping",
    @"playMotorBuffer",
    @"setMotorBuffer",
    @"setProperty",
    @"startMotorBufferRecord",
    @"stopMotorBufferRecord"
};

-(BOOL) dispatch__:(ICECurrent *)current is:(id<ICEInputStream>)is os:(id<ICEOutputStream>)os
{
    id target__ = [self target__];
    switch(ICEInternalLookupString(TeRKMotorController_all__, sizeof(TeRKMotorController_all__) / sizeof(NSString*), current.operation))
    {
        case 0:
            return [TeRKMotorController execute___:(id<TeRKMotorController>)target__ current:current is:is os:os];
        case 1:
            return [TeRKMotorController getFrequency___:(id<TeRKMotorController>)target__ current:current is:is os:os];
        case 2:
            return [TeRKMotorController getMotorBuffers___:(id<TeRKMotorController>)target__ current:current is:is os:os];
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
            return [TeRKMotorController playMotorBuffer___:(id<TeRKMotorController>)target__ current:current is:is os:os];
        case 11:
            return [TeRKMotorController setMotorBuffer___:(id<TeRKMotorController>)target__ current:current is:is os:os];
        case 12:
            return [TeRKPropertyManager setProperty___:(id<TeRKPropertyManager>)target__ current:current is:is os:os];
        case 13:
            return [TeRKMotorController startMotorBufferRecord___:(id<TeRKMotorController>)target__ current:current is:is os:os];
        case 14:
            return [TeRKMotorController stopMotorBufferRecord___:(id<TeRKMotorController>)target__ current:current is:is os:os];
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
    *count = sizeof(TeRKMotorController_ids__) / sizeof(NSString *);
    *idx = 2;
    return TeRKMotorController_ids__;
}
@end

@implementation TeRKMotorControllerPrx

-(TeRKMotorState *) execute:(TeRKMotorCommand *)command
{
    return [TeRKMotorControllerPrx execute___:command prx:self context:nil];
}

-(TeRKMotorState *) execute:(TeRKMotorCommand *)command context:(ICEContext *)ctx_
{
    return [TeRKMotorControllerPrx execute___:command prx:self context:ctx_];
}

-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ command:(TeRKMotorCommand *)command
{
    return [TeRKMotorControllerPrx execute_async___:target_ response:response_ exception:exception_ sent:nil  command:command prx:self context:nil];
}

-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ command:(TeRKMotorCommand *)command context:(ICEContext *)ctx_
{
    return [TeRKMotorControllerPrx execute_async___:target_ response:response_ exception:exception_ sent:nil  command:command prx:self context:ctx_];
}

-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKMotorCommand *)command
{
    return [TeRKMotorControllerPrx execute_async___:target_ response:response_ exception:exception_ sent:sent_  command:command prx:self context:nil];
}

-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKMotorCommand *)command context:(ICEContext *)ctx_
{
    return [TeRKMotorControllerPrx execute_async___:target_ response:response_ exception:exception_ sent:sent_  command:command prx:self context:ctx_];
}

-(ICEInt) getFrequency
{
    return [TeRKMotorControllerPrx getFrequency___:self context:nil];
}

-(ICEInt) getFrequency:(ICEContext *)ctx_
{
    return [TeRKMotorControllerPrx getFrequency___:self context:ctx_];
}

-(BOOL) getFrequency_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_
{
    return [TeRKMotorControllerPrx getFrequency_async___:target_ response:response_ exception:exception_ sent:nil  prx:self context:nil];
}

-(BOOL) getFrequency_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ context:(ICEContext *)ctx_
{
    return [TeRKMotorControllerPrx getFrequency_async___:target_ response:response_ exception:exception_ sent:nil  prx:self context:ctx_];
}

-(BOOL) getFrequency_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_
{
    return [TeRKMotorControllerPrx getFrequency_async___:target_ response:response_ exception:exception_ sent:sent_  prx:self context:nil];
}

-(BOOL) getFrequency_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ context:(ICEContext *)ctx_
{
    return [TeRKMotorControllerPrx getFrequency_async___:target_ response:response_ exception:exception_ sent:sent_  prx:self context:ctx_];
}

-(TeRKMutableMotorBufferArray *) getMotorBuffers:(TeRKBooleanArray *)motorMask
{
    return [TeRKMotorControllerPrx getMotorBuffers___:motorMask prx:self context:nil];
}

-(TeRKMutableMotorBufferArray *) getMotorBuffers:(TeRKBooleanArray *)motorMask context:(ICEContext *)ctx_
{
    return [TeRKMotorControllerPrx getMotorBuffers___:motorMask prx:self context:ctx_];
}

-(BOOL) getMotorBuffers_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ motorMask:(TeRKBooleanArray *)motorMask
{
    return [TeRKMotorControllerPrx getMotorBuffers_async___:target_ response:response_ exception:exception_ sent:nil  motorMask:motorMask prx:self context:nil];
}

-(BOOL) getMotorBuffers_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ motorMask:(TeRKBooleanArray *)motorMask context:(ICEContext *)ctx_
{
    return [TeRKMotorControllerPrx getMotorBuffers_async___:target_ response:response_ exception:exception_ sent:nil  motorMask:motorMask prx:self context:ctx_];
}

-(BOOL) getMotorBuffers_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ motorMask:(TeRKBooleanArray *)motorMask
{
    return [TeRKMotorControllerPrx getMotorBuffers_async___:target_ response:response_ exception:exception_ sent:sent_  motorMask:motorMask prx:self context:nil];
}

-(BOOL) getMotorBuffers_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ motorMask:(TeRKBooleanArray *)motorMask context:(ICEContext *)ctx_
{
    return [TeRKMotorControllerPrx getMotorBuffers_async___:target_ response:response_ exception:exception_ sent:sent_  motorMask:motorMask prx:self context:ctx_];
}

-(void) playMotorBuffer:(TeRKBooleanArray *)motorMask
{
    [TeRKMotorControllerPrx playMotorBuffer___:motorMask prx:self context:nil];
}

-(void) playMotorBuffer:(TeRKBooleanArray *)motorMask context:(ICEContext *)ctx_
{
    [TeRKMotorControllerPrx playMotorBuffer___:motorMask prx:self context:ctx_];
}

-(BOOL) playMotorBuffer_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ motorMask:(TeRKBooleanArray *)motorMask
{
    return [TeRKMotorControllerPrx playMotorBuffer_async___:target_ response:response_ exception:exception_ sent:nil  motorMask:motorMask prx:self context:nil];
}

-(BOOL) playMotorBuffer_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ motorMask:(TeRKBooleanArray *)motorMask context:(ICEContext *)ctx_
{
    return [TeRKMotorControllerPrx playMotorBuffer_async___:target_ response:response_ exception:exception_ sent:nil  motorMask:motorMask prx:self context:ctx_];
}

-(BOOL) playMotorBuffer_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ motorMask:(TeRKBooleanArray *)motorMask
{
    return [TeRKMotorControllerPrx playMotorBuffer_async___:target_ response:response_ exception:exception_ sent:sent_  motorMask:motorMask prx:self context:nil];
}

-(BOOL) playMotorBuffer_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ motorMask:(TeRKBooleanArray *)motorMask context:(ICEContext *)ctx_
{
    return [TeRKMotorControllerPrx playMotorBuffer_async___:target_ response:response_ exception:exception_ sent:sent_  motorMask:motorMask prx:self context:ctx_];
}

-(void) setMotorBuffer:(TeRKBooleanArray *)motorMask motorBuffers:(TeRKMotorBufferArray *)motorBuffers
{
    [TeRKMotorControllerPrx setMotorBuffer___:motorMask motorBuffers:motorBuffers prx:self context:nil];
}

-(void) setMotorBuffer:(TeRKBooleanArray *)motorMask motorBuffers:(TeRKMotorBufferArray *)motorBuffers context:(ICEContext *)ctx_
{
    [TeRKMotorControllerPrx setMotorBuffer___:motorMask motorBuffers:motorBuffers prx:self context:ctx_];
}

-(BOOL) setMotorBuffer_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ motorMask:(TeRKBooleanArray *)motorMask motorBuffers:(TeRKMotorBufferArray *)motorBuffers
{
    return [TeRKMotorControllerPrx setMotorBuffer_async___:target_ response:response_ exception:exception_ sent:nil  motorMask:motorMask motorBuffers:motorBuffers prx:self context:nil];
}

-(BOOL) setMotorBuffer_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ motorMask:(TeRKBooleanArray *)motorMask motorBuffers:(TeRKMotorBufferArray *)motorBuffers context:(ICEContext *)ctx_
{
    return [TeRKMotorControllerPrx setMotorBuffer_async___:target_ response:response_ exception:exception_ sent:nil  motorMask:motorMask motorBuffers:motorBuffers prx:self context:ctx_];
}

-(BOOL) setMotorBuffer_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ motorMask:(TeRKBooleanArray *)motorMask motorBuffers:(TeRKMotorBufferArray *)motorBuffers
{
    return [TeRKMotorControllerPrx setMotorBuffer_async___:target_ response:response_ exception:exception_ sent:sent_  motorMask:motorMask motorBuffers:motorBuffers prx:self context:nil];
}

-(BOOL) setMotorBuffer_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ motorMask:(TeRKBooleanArray *)motorMask motorBuffers:(TeRKMotorBufferArray *)motorBuffers context:(ICEContext *)ctx_
{
    return [TeRKMotorControllerPrx setMotorBuffer_async___:target_ response:response_ exception:exception_ sent:sent_  motorMask:motorMask motorBuffers:motorBuffers prx:self context:ctx_];
}

-(void) startMotorBufferRecord:(TeRKBooleanArray *)motorMask
{
    [TeRKMotorControllerPrx startMotorBufferRecord___:motorMask prx:self context:nil];
}

-(void) startMotorBufferRecord:(TeRKBooleanArray *)motorMask context:(ICEContext *)ctx_
{
    [TeRKMotorControllerPrx startMotorBufferRecord___:motorMask prx:self context:ctx_];
}

-(BOOL) startMotorBufferRecord_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ motorMask:(TeRKBooleanArray *)motorMask
{
    return [TeRKMotorControllerPrx startMotorBufferRecord_async___:target_ response:response_ exception:exception_ sent:nil  motorMask:motorMask prx:self context:nil];
}

-(BOOL) startMotorBufferRecord_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ motorMask:(TeRKBooleanArray *)motorMask context:(ICEContext *)ctx_
{
    return [TeRKMotorControllerPrx startMotorBufferRecord_async___:target_ response:response_ exception:exception_ sent:nil  motorMask:motorMask prx:self context:ctx_];
}

-(BOOL) startMotorBufferRecord_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ motorMask:(TeRKBooleanArray *)motorMask
{
    return [TeRKMotorControllerPrx startMotorBufferRecord_async___:target_ response:response_ exception:exception_ sent:sent_  motorMask:motorMask prx:self context:nil];
}

-(BOOL) startMotorBufferRecord_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ motorMask:(TeRKBooleanArray *)motorMask context:(ICEContext *)ctx_
{
    return [TeRKMotorControllerPrx startMotorBufferRecord_async___:target_ response:response_ exception:exception_ sent:sent_  motorMask:motorMask prx:self context:ctx_];
}

-(void) stopMotorBufferRecord:(TeRKBooleanArray *)motorMask
{
    [TeRKMotorControllerPrx stopMotorBufferRecord___:motorMask prx:self context:nil];
}

-(void) stopMotorBufferRecord:(TeRKBooleanArray *)motorMask context:(ICEContext *)ctx_
{
    [TeRKMotorControllerPrx stopMotorBufferRecord___:motorMask prx:self context:ctx_];
}

-(BOOL) stopMotorBufferRecord_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ motorMask:(TeRKBooleanArray *)motorMask
{
    return [TeRKMotorControllerPrx stopMotorBufferRecord_async___:target_ response:response_ exception:exception_ sent:nil  motorMask:motorMask prx:self context:nil];
}

-(BOOL) stopMotorBufferRecord_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ motorMask:(TeRKBooleanArray *)motorMask context:(ICEContext *)ctx_
{
    return [TeRKMotorControllerPrx stopMotorBufferRecord_async___:target_ response:response_ exception:exception_ sent:nil  motorMask:motorMask prx:self context:ctx_];
}

-(BOOL) stopMotorBufferRecord_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ motorMask:(TeRKBooleanArray *)motorMask
{
    return [TeRKMotorControllerPrx stopMotorBufferRecord_async___:target_ response:response_ exception:exception_ sent:sent_  motorMask:motorMask prx:self context:nil];
}

-(BOOL) stopMotorBufferRecord_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ motorMask:(TeRKBooleanArray *)motorMask context:(ICEContext *)ctx_
{
    return [TeRKMotorControllerPrx stopMotorBufferRecord_async___:target_ response:response_ exception:exception_ sent:sent_  motorMask:motorMask prx:self context:ctx_];
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
    return @"::TeRK::MotorController";
}

+(TeRKMotorState *) execute___:(TeRKMotorCommand *)command prx:(ICEObjectPrx <TeRKMotorControllerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"execute"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    TeRKMotorState *ret_ = nil;
    @try
    {
        [TeRKMotorCommand ice_writeWithStream:command stream:os_];
        [prx_ invoke__:@"execute" mode:ICENormal os:os_ is:&is_ context:ctx_];
        ret_ = [TeRKMotorState ice_readWithStream:is_];
    }
    @catch(TeRKMotorCommandException *ex_)
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

+(BOOL) execute_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKMotorCommand *)command prx:(ICEObjectPrx <TeRKMotorControllerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"execute"];
    SEL finished_ = @selector(execute_async_finished___:response:exception:ok:is:);
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    @try
    {
        [TeRKMotorCommand ice_writeWithStream:command stream:os_];
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
    TeRKMotorState *ret_ = nil;
    @try
    {
        if(!ok_)
        {
            [is_ throwException];
        }
        ret_ = [TeRKMotorState ice_readWithStream:is_];
        ((void(*)(id, SEL, TeRKMotorState *))objc_msgSend)(target_, response_, ret_);
    }
    @catch(TeRKMotorCommandException *ex_)
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

+(ICEInt) getFrequency___:(ICEObjectPrx <TeRKMotorControllerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"getFrequency"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    ICEInt ret_;
    @try
    {
        [prx_ invoke__:@"getFrequency" mode:ICENormal os:os_ is:&is_ context:ctx_];
        ret_ = [is_ readInt];
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

+(BOOL) getFrequency_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ prx:(ICEObjectPrx <TeRKMotorControllerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"getFrequency"];
    SEL finished_ = @selector(getFrequency_async_finished___:response:exception:ok:is:);
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    @try
    {
        return [prx_ invoke_async__:target_ response:response_ exception:exception_ sent:sent_ finishedClass:self finished:finished_ operation:@"getFrequency" mode:ICENormal os:os_ context:ctx_];
    }
    @finally
    {
        [os_ release];
    }
    return FALSE; // Keep the compiler happy.
}

+(void) getFrequency_async_finished___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ ok:(BOOL)ok_ is:(id<ICEInputStream>)is_
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
    @catch(ICEUserException *ex_)
    {
        ICEUnknownUserException* uuex_;
        uuex_ = [ICEUnknownUserException unknownUserException:__FILE__ line:__LINE__ unknown:[ex_ ice_name]];
        objc_msgSend(target_, exception_, uuex_);
    }
}

+(void) startMotorBufferRecord___:(TeRKBooleanArray *)motorMask prx:(ICEObjectPrx <TeRKMotorControllerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"startMotorBufferRecord"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    @try
    {
        [os_ writeBoolSeq:motorMask];
        [prx_ invoke__:@"startMotorBufferRecord" mode:ICENormal os:os_ is:&is_ context:ctx_];
    }
    @catch(TeRKMotorException *ex_)
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

+(BOOL) startMotorBufferRecord_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ motorMask:(TeRKBooleanArray *)motorMask prx:(ICEObjectPrx <TeRKMotorControllerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"startMotorBufferRecord"];
    SEL finished_ = @selector(startMotorBufferRecord_async_finished___:response:exception:ok:is:);
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    @try
    {
        [os_ writeBoolSeq:motorMask];
        return [prx_ invoke_async__:target_ response:response_ exception:exception_ sent:sent_ finishedClass:self finished:finished_ operation:@"startMotorBufferRecord" mode:ICENormal os:os_ context:ctx_];
    }
    @finally
    {
        [os_ release];
    }
    return FALSE; // Keep the compiler happy.
}

+(void) startMotorBufferRecord_async_finished___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ ok:(BOOL)ok_ is:(id<ICEInputStream>)is_
{
    @try
    {
        if(!ok_)
        {
            [is_ throwException];
        }
        objc_msgSend(target_, response_);
    }
    @catch(TeRKMotorException *ex_)
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

+(void) stopMotorBufferRecord___:(TeRKBooleanArray *)motorMask prx:(ICEObjectPrx <TeRKMotorControllerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"stopMotorBufferRecord"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    @try
    {
        [os_ writeBoolSeq:motorMask];
        [prx_ invoke__:@"stopMotorBufferRecord" mode:ICEIdempotent os:os_ is:&is_ context:ctx_];
    }
    @catch(TeRKMotorException *ex_)
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

+(BOOL) stopMotorBufferRecord_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ motorMask:(TeRKBooleanArray *)motorMask prx:(ICEObjectPrx <TeRKMotorControllerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"stopMotorBufferRecord"];
    SEL finished_ = @selector(stopMotorBufferRecord_async_finished___:response:exception:ok:is:);
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    @try
    {
        [os_ writeBoolSeq:motorMask];
        return [prx_ invoke_async__:target_ response:response_ exception:exception_ sent:sent_ finishedClass:self finished:finished_ operation:@"stopMotorBufferRecord" mode:ICEIdempotent os:os_ context:ctx_];
    }
    @finally
    {
        [os_ release];
    }
    return FALSE; // Keep the compiler happy.
}

+(void) stopMotorBufferRecord_async_finished___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ ok:(BOOL)ok_ is:(id<ICEInputStream>)is_
{
    @try
    {
        if(!ok_)
        {
            [is_ throwException];
        }
        objc_msgSend(target_, response_);
    }
    @catch(TeRKMotorException *ex_)
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

+(TeRKMutableMotorBufferArray *) getMotorBuffers___:(TeRKBooleanArray *)motorMask prx:(ICEObjectPrx <TeRKMotorControllerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"getMotorBuffers"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    TeRKMutableMotorBufferArray *ret_ = nil;
    @try
    {
        [os_ writeBoolSeq:motorMask];
        [prx_ invoke__:@"getMotorBuffers" mode:ICENonmutating os:os_ is:&is_ context:ctx_];
        ret_ = [TeRKMotorBufferArrayHelper ice_readWithStream:is_];
    }
    @catch(TeRKMotorException *ex_)
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

+(BOOL) getMotorBuffers_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ motorMask:(TeRKBooleanArray *)motorMask prx:(ICEObjectPrx <TeRKMotorControllerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"getMotorBuffers"];
    SEL finished_ = @selector(getMotorBuffers_async_finished___:response:exception:ok:is:);
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    @try
    {
        [os_ writeBoolSeq:motorMask];
        return [prx_ invoke_async__:target_ response:response_ exception:exception_ sent:sent_ finishedClass:self finished:finished_ operation:@"getMotorBuffers" mode:ICENonmutating os:os_ context:ctx_];
    }
    @finally
    {
        [os_ release];
    }
    return FALSE; // Keep the compiler happy.
}

+(void) getMotorBuffers_async_finished___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ ok:(BOOL)ok_ is:(id<ICEInputStream>)is_
{
    TeRKMutableMotorBufferArray *ret_ = nil;
    @try
    {
        if(!ok_)
        {
            [is_ throwException];
        }
        ret_ = [TeRKMotorBufferArrayHelper ice_readWithStream:is_];
        ((void(*)(id, SEL, TeRKMotorBufferArray *))objc_msgSend)(target_, response_, ret_);
    }
    @catch(TeRKMotorException *ex_)
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

+(void) setMotorBuffer___:(TeRKBooleanArray *)motorMask motorBuffers:(TeRKMotorBufferArray *)motorBuffers prx:(ICEObjectPrx <TeRKMotorControllerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"setMotorBuffer"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    @try
    {
        [os_ writeBoolSeq:motorMask];
        [TeRKMotorBufferArrayHelper ice_writeWithStream:motorBuffers stream:os_];
        [prx_ invoke__:@"setMotorBuffer" mode:ICEIdempotent os:os_ is:&is_ context:ctx_];
    }
    @catch(TeRKMotorException *ex_)
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

+(BOOL) setMotorBuffer_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ motorMask:(TeRKBooleanArray *)motorMask motorBuffers:(TeRKMotorBufferArray *)motorBuffers prx:(ICEObjectPrx <TeRKMotorControllerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"setMotorBuffer"];
    SEL finished_ = @selector(setMotorBuffer_async_finished___:response:exception:ok:is:);
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    @try
    {
        [os_ writeBoolSeq:motorMask];
        [TeRKMotorBufferArrayHelper ice_writeWithStream:motorBuffers stream:os_];
        return [prx_ invoke_async__:target_ response:response_ exception:exception_ sent:sent_ finishedClass:self finished:finished_ operation:@"setMotorBuffer" mode:ICEIdempotent os:os_ context:ctx_];
    }
    @finally
    {
        [os_ release];
    }
    return FALSE; // Keep the compiler happy.
}

+(void) setMotorBuffer_async_finished___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ ok:(BOOL)ok_ is:(id<ICEInputStream>)is_
{
    @try
    {
        if(!ok_)
        {
            [is_ throwException];
        }
        objc_msgSend(target_, response_);
    }
    @catch(TeRKMotorException *ex_)
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

+(void) playMotorBuffer___:(TeRKBooleanArray *)motorMask prx:(ICEObjectPrx <TeRKMotorControllerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"playMotorBuffer"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    @try
    {
        [os_ writeBoolSeq:motorMask];
        [prx_ invoke__:@"playMotorBuffer" mode:ICENormal os:os_ is:&is_ context:ctx_];
    }
    @catch(TeRKMotorException *ex_)
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

+(BOOL) playMotorBuffer_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ motorMask:(TeRKBooleanArray *)motorMask prx:(ICEObjectPrx <TeRKMotorControllerPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"playMotorBuffer"];
    SEL finished_ = @selector(playMotorBuffer_async_finished___:response:exception:ok:is:);
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    @try
    {
        [os_ writeBoolSeq:motorMask];
        return [prx_ invoke_async__:target_ response:response_ exception:exception_ sent:sent_ finishedClass:self finished:finished_ operation:@"playMotorBuffer" mode:ICENormal os:os_ context:ctx_];
    }
    @finally
    {
        [os_ release];
    }
    return FALSE; // Keep the compiler happy.
}

+(void) playMotorBuffer_async_finished___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ ok:(BOOL)ok_ is:(id<ICEInputStream>)is_
{
    @try
    {
        if(!ok_)
        {
            [is_ throwException];
        }
        objc_msgSend(target_, response_);
    }
    @catch(TeRKMotorException *ex_)
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

@implementation TeRKMotorModeHelper
+(ICEInt) getLimit
{
    return 3;
}
@end

@implementation TeRKMotorModeArrayHelper
+(id) ice_readWithStream:(id<ICEInputStream>)stream
{
    return [stream readEnumSeq:3];
}

+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)stream
{
    [stream writeEnumSeq:obj limit:3];
}
@end

@implementation TeRKMotorBufferArrayHelper
+(Class) getContained
{
    return [TeRKMotorBuffer class];
}
@end
