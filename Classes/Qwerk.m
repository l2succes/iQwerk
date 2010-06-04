// **********************************************************************
//
// Copyright (c) 2003-2009 ZeroC, Inc. All rights reserved.
//
// This copy of Ice is licensed to you under the terms described in the
// ICE_TOUCH_LICENSE file included in this distribution.
//
// **********************************************************************

// Ice version 3.3.1
// Generated from file `Qwerk.ice'

#import <Ice/LocalException.h>
#import <Ice/Stream.h>
#import <Ice/Internal.h>
#import <Qwerk.h>

#import <objc/message.h>

@implementation TeRKBatteryState

@synthesize batteryVoltage;

-(id) init:(ICEInt)batteryVoltage_p
{
    if(![super init])
    {
        return nil;
    }
    batteryVoltage = batteryVoltage_p;
    return self;
}

+(id) batteryState:(ICEInt)batteryVoltage_p
{
    TeRKBatteryState *s__ = [(TeRKBatteryState* )[TeRKBatteryState alloc] init:batteryVoltage_p];
    [s__ autorelease];
    return s__;
}

+(id) batteryState
{
    TeRKBatteryState *s__ = [[TeRKBatteryState alloc] init];
    [s__ autorelease];
    return s__;
}

-(id) copyWithZone:(NSZone *)zone_p
{
    return [(TeRKBatteryState *)[[self class] allocWithZone:zone_p] init:batteryVoltage];
}

-(NSUInteger) hash
{
    NSUInteger h_ = 0;
    h_ = (h_ << 1) ^ batteryVoltage;
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
    TeRKBatteryState *obj_ = (TeRKBatteryState *)o_;
    if(batteryVoltage != obj_->batteryVoltage)
    {
        return NO;
    }
    return YES;
}

+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)os_
{
    TeRKBatteryState* p = (TeRKBatteryState*)obj;
    if(p == nil)
    {
        p = [[[self class] alloc] init];
    }
    @try
    {
        [os_ writeInt:p->batteryVoltage];
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
    TeRKBatteryState* p = [[[self class] alloc] init];
    @try
    {
        p->batteryVoltage = [is_ readInt];
    }
    @catch(NSException *ex)
    {
        [p release];
        @throw ex;
    }
    return p;
}
@end

@implementation TeRKButtonState

@synthesize buttonStates;

-(id) init:(TeRKBooleanArray *)buttonStates_p
{
    if(![super init])
    {
        return nil;
    }
    buttonStates = [buttonStates_p retain];
    return self;
}

+(id) buttonState:(TeRKBooleanArray *)buttonStates_p
{
    TeRKButtonState *s__ = [(TeRKButtonState* )[TeRKButtonState alloc] init:buttonStates_p];
    [s__ autorelease];
    return s__;
}

+(id) buttonState
{
    TeRKButtonState *s__ = [[TeRKButtonState alloc] init];
    [s__ autorelease];
    return s__;
}

-(id) copyWithZone:(NSZone *)zone_p
{
    return [(TeRKButtonState *)[[self class] allocWithZone:zone_p] init:buttonStates];
}

-(NSUInteger) hash
{
    NSUInteger h_ = 0;
    h_ = (h_ << 1) ^ [buttonStates hash];
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
    TeRKButtonState *obj_ = (TeRKButtonState *)o_;
    if(!buttonStates)
    {
        if(obj_->buttonStates)
        {
            return NO;
        }
    }
    else
    {
        if(![buttonStates isEqual:obj_->buttonStates])
        {
            return NO;
        }
    }
    return YES;
}

-(void) dealloc;
{
    [buttonStates release];
    [super dealloc];
}

+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)os_
{
    TeRKButtonState* p = (TeRKButtonState*)obj;
    if(p == nil)
    {
        p = [[[self class] alloc] init];
    }
    @try
    {
        [os_ writeBoolSeq:p->buttonStates];
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
    TeRKButtonState* p = [[[self class] alloc] init];
    @try
    {
        p->buttonStates = [is_ readBoolSeq];
    }
    @catch(NSException *ex)
    {
        [p release];
        @throw ex;
    }
    return p;
}
@end

@implementation TeRKQwerkState

@synthesize analogIn;
@synthesize battery;
@synthesize button;
@synthesize digitalIn;
@synthesize motor;
@synthesize servo;

-(id) init:(TeRKAnalogInState *)analogIn_p battery:(TeRKBatteryState *)battery_p button:(TeRKButtonState *)button_p digitalIn:(TeRKDigitalInState *)digitalIn_p motor:(TeRKMotorState *)motor_p servo:(TeRKServoState *)servo_p
{
    if(![super init])
    {
        return nil;
    }
    analogIn = [analogIn_p retain];
    battery = [battery_p retain];
    button = [button_p retain];
    digitalIn = [digitalIn_p retain];
    motor = [motor_p retain];
    servo = [servo_p retain];
    return self;
}

+(id) qwerkState:(TeRKAnalogInState *)analogIn_p battery:(TeRKBatteryState *)battery_p button:(TeRKButtonState *)button_p digitalIn:(TeRKDigitalInState *)digitalIn_p motor:(TeRKMotorState *)motor_p servo:(TeRKServoState *)servo_p
{
    TeRKQwerkState *s__ = [(TeRKQwerkState* )[TeRKQwerkState alloc] init:analogIn_p battery:battery_p button:button_p digitalIn:digitalIn_p motor:motor_p servo:servo_p];
    [s__ autorelease];
    return s__;
}

+(id) qwerkState
{
    TeRKQwerkState *s__ = [[TeRKQwerkState alloc] init];
    [s__ autorelease];
    return s__;
}

-(id) copyWithZone:(NSZone *)zone_p
{
    return [(TeRKQwerkState *)[[self class] allocWithZone:zone_p] init:analogIn battery:battery button:button digitalIn:digitalIn motor:motor servo:servo];
}

-(NSUInteger) hash
{
    NSUInteger h_ = 0;
    h_ = (h_ << 1) ^ [analogIn hash];
    h_ = (h_ << 1) ^ [battery hash];
    h_ = (h_ << 1) ^ [button hash];
    h_ = (h_ << 1) ^ [digitalIn hash];
    h_ = (h_ << 1) ^ [motor hash];
    h_ = (h_ << 1) ^ [servo hash];
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
    TeRKQwerkState *obj_ = (TeRKQwerkState *)o_;
    if(!analogIn)
    {
        if(obj_->analogIn)
        {
            return NO;
        }
    }
    else
    {
        if(![analogIn isEqual:obj_->analogIn])
        {
            return NO;
        }
    }
    if(!battery)
    {
        if(obj_->battery)
        {
            return NO;
        }
    }
    else
    {
        if(![battery isEqual:obj_->battery])
        {
            return NO;
        }
    }
    if(!button)
    {
        if(obj_->button)
        {
            return NO;
        }
    }
    else
    {
        if(![button isEqual:obj_->button])
        {
            return NO;
        }
    }
    if(!digitalIn)
    {
        if(obj_->digitalIn)
        {
            return NO;
        }
    }
    else
    {
        if(![digitalIn isEqual:obj_->digitalIn])
        {
            return NO;
        }
    }
    if(!motor)
    {
        if(obj_->motor)
        {
            return NO;
        }
    }
    else
    {
        if(![motor isEqual:obj_->motor])
        {
            return NO;
        }
    }
    if(!servo)
    {
        if(obj_->servo)
        {
            return NO;
        }
    }
    else
    {
        if(![servo isEqual:obj_->servo])
        {
            return NO;
        }
    }
    return YES;
}

-(void) dealloc;
{
    [analogIn release];
    [battery release];
    [button release];
    [digitalIn release];
    [motor release];
    [servo release];
    [super dealloc];
}

+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)os_
{
    TeRKQwerkState* p = (TeRKQwerkState*)obj;
    if(p == nil)
    {
        p = [[[self class] alloc] init];
    }
    @try
    {
        [TeRKAnalogInState ice_writeWithStream:p->analogIn stream:os_];
        [TeRKBatteryState ice_writeWithStream:p->battery stream:os_];
        [TeRKButtonState ice_writeWithStream:p->button stream:os_];
        [TeRKDigitalInState ice_writeWithStream:p->digitalIn stream:os_];
        [TeRKMotorState ice_writeWithStream:p->motor stream:os_];
        [TeRKServoState ice_writeWithStream:p->servo stream:os_];
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
    TeRKQwerkState* p = [[[self class] alloc] init];
    @try
    {
        p->analogIn = [TeRKAnalogInState ice_readWithStream:is_];
        p->battery = [TeRKBatteryState ice_readWithStream:is_];
        p->button = [TeRKButtonState ice_readWithStream:is_];
        p->digitalIn = [TeRKDigitalInState ice_readWithStream:is_];
        p->motor = [TeRKMotorState ice_readWithStream:is_];
        p->servo = [TeRKServoState ice_readWithStream:is_];
    }
    @catch(NSException *ex)
    {
        [p release];
        @throw ex;
    }
    return p;
}
@end

@implementation TeRKQwerkCommand

@synthesize audioCmd;
@synthesize digitalOutCmd;
@synthesize ledCmd;
@synthesize motorCmd;
@synthesize servoCmd;

-(id) init:(TeRKAudioCommand *)audioCmd_p digitalOutCmd:(TeRKDigitalOutCommand *)digitalOutCmd_p ledCmd:(TeRKLEDCommand *)ledCmd_p motorCmd:(TeRKMotorCommand *)motorCmd_p servoCmd:(TeRKServoCommand *)servoCmd_p
{
    if(![super init])
    {
        return nil;
    }
    audioCmd = [audioCmd_p retain];
    digitalOutCmd = [digitalOutCmd_p retain];
    ledCmd = [ledCmd_p retain];
    motorCmd = [motorCmd_p retain];
    servoCmd = [servoCmd_p retain];
    return self;
}

+(id) qwerkCommand:(TeRKAudioCommand *)audioCmd_p digitalOutCmd:(TeRKDigitalOutCommand *)digitalOutCmd_p ledCmd:(TeRKLEDCommand *)ledCmd_p motorCmd:(TeRKMotorCommand *)motorCmd_p servoCmd:(TeRKServoCommand *)servoCmd_p
{
    TeRKQwerkCommand *s__ = [(TeRKQwerkCommand* )[TeRKQwerkCommand alloc] init:audioCmd_p digitalOutCmd:digitalOutCmd_p ledCmd:ledCmd_p motorCmd:motorCmd_p servoCmd:servoCmd_p];
    [s__ autorelease];
    return s__;
}

+(id) qwerkCommand
{
    TeRKQwerkCommand *s__ = [[TeRKQwerkCommand alloc] init];
    [s__ autorelease];
    return s__;
}

-(id) copyWithZone:(NSZone *)zone_p
{
    return [(TeRKQwerkCommand *)[[self class] allocWithZone:zone_p] init:audioCmd digitalOutCmd:digitalOutCmd ledCmd:ledCmd motorCmd:motorCmd servoCmd:servoCmd];
}

-(NSUInteger) hash
{
    NSUInteger h_ = 0;
    h_ = (h_ << 1) ^ [audioCmd hash];
    h_ = (h_ << 1) ^ [digitalOutCmd hash];
    h_ = (h_ << 1) ^ [ledCmd hash];
    h_ = (h_ << 1) ^ [motorCmd hash];
    h_ = (h_ << 1) ^ [servoCmd hash];
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
    TeRKQwerkCommand *obj_ = (TeRKQwerkCommand *)o_;
    if(!audioCmd)
    {
        if(obj_->audioCmd)
        {
            return NO;
        }
    }
    else
    {
        if(![audioCmd isEqual:obj_->audioCmd])
        {
            return NO;
        }
    }
    if(!digitalOutCmd)
    {
        if(obj_->digitalOutCmd)
        {
            return NO;
        }
    }
    else
    {
        if(![digitalOutCmd isEqual:obj_->digitalOutCmd])
        {
            return NO;
        }
    }
    if(!ledCmd)
    {
        if(obj_->ledCmd)
        {
            return NO;
        }
    }
    else
    {
        if(![ledCmd isEqual:obj_->ledCmd])
        {
            return NO;
        }
    }
    if(!motorCmd)
    {
        if(obj_->motorCmd)
        {
            return NO;
        }
    }
    else
    {
        if(![motorCmd isEqual:obj_->motorCmd])
        {
            return NO;
        }
    }
    if(!servoCmd)
    {
        if(obj_->servoCmd)
        {
            return NO;
        }
    }
    else
    {
        if(![servoCmd isEqual:obj_->servoCmd])
        {
            return NO;
        }
    }
    return YES;
}

-(void) dealloc;
{
    [audioCmd release];
    [digitalOutCmd release];
    [ledCmd release];
    [motorCmd release];
    [servoCmd release];
    [super dealloc];
}

+(void) ice_writeWithStream:(id)obj stream:(id<ICEOutputStream>)os_
{
    TeRKQwerkCommand* p = (TeRKQwerkCommand*)obj;
    if(p == nil)
    {
        p = [[[self class] alloc] init];
    }
    @try
    {
        [TeRKAudioCommand ice_writeWithStream:p->audioCmd stream:os_];
        [TeRKDigitalOutCommand ice_writeWithStream:p->digitalOutCmd stream:os_];
        [TeRKLEDCommand ice_writeWithStream:p->ledCmd stream:os_];
        [TeRKMotorCommand ice_writeWithStream:p->motorCmd stream:os_];
        [TeRKServoCommand ice_writeWithStream:p->servoCmd stream:os_];
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
    TeRKQwerkCommand* p = [[[self class] alloc] init];
    @try
    {
        p->audioCmd = [TeRKAudioCommand ice_readWithStream:is_];
        p->digitalOutCmd = [TeRKDigitalOutCommand ice_readWithStream:is_];
        p->ledCmd = [TeRKLEDCommand ice_readWithStream:is_];
        p->motorCmd = [TeRKMotorCommand ice_readWithStream:is_];
        p->servoCmd = [TeRKServoCommand ice_readWithStream:is_];
    }
    @catch(NSException *ex)
    {
        [p release];
        @throw ex;
    }
    return p;
}
@end

@implementation TeRKQwerk

+(id)objectWithDelegate:(id)delegate
{
    return [[[TeRKQwerk alloc] initWithDelegate:delegate] autorelease];
}

-(void) write__:(id<ICEOutputStream>)os_
{
    [os_ writeTypeId:@"::TeRK::Qwerk"];
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

static NSString *TeRKQwerk_ids__[] = 
{
    @"::Ice::Object",
    @"::TeRK::PropertyManager",
    @"::TeRK::Qwerk",
    @"::TeRK::TerkUser",
    @"::peer::ConnectionEventHandler",
    @"::peer::PeerConnectionEventHandler",
    @"::peer::UserConnectionEventHandler"
};

+(BOOL)getState___:(id<TeRKQwerk>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENonmutating, @selector(getState:), current);
    TeRKQwerkState *ret_ = [target getState:current];
    [TeRKQwerkState ice_writeWithStream:ret_ stream:os_];
    return YES;
}

+(BOOL)execute___:(id<TeRKQwerk>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENormal, @selector(execute:current:), current);
    TeRKQwerkCommand *command = nil;
    @try
    {
        command = [TeRKQwerkCommand ice_readWithStream:is_];
        TeRKQwerkState *ret_ = [target execute:command current:current];
        [TeRKQwerkState ice_writeWithStream:ret_ stream:os_];
    }
    @catch(TeRKCommandException *ex)
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

+(BOOL)emergencyStop___:(id<TeRKQwerk>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICEIdempotent, @selector(emergencyStop:), current);
    TeRKQwerkState *ret_ = [target emergencyStop:current];
    [TeRKQwerkState ice_writeWithStream:ret_ stream:os_];
    return YES;
}

+(BOOL)getCommandControllerTypeToProxyIdentityMap___:(id<TeRKQwerk>)target current:(ICECurrent *)current is:(id<ICEInputStream>)is_ os:(id<ICEOutputStream>)os_
{
    ICEInternalCheckModeAndSelector(target, ICENonmutating, @selector(getCommandControllerTypeToProxyIdentityMap:), current);
    NSDictionary *ret_ = [target getCommandControllerTypeToProxyIdentityMap:current];
    [TeRKProxyTypeIdToIdentityMapHelper ice_writeWithStream:ret_ stream:os_];
    return YES;
}

static NSString *TeRKQwerk_all__[] =
{
    @"emergencyStop",
    @"execute",
    @"forcedLogoutNotification",
    @"getCommandControllerTypeToProxyIdentityMap",
    @"getProperties",
    @"getProperty",
    @"getPropertyKeys",
    @"getState",
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
    switch(ICEInternalLookupString(TeRKQwerk_all__, sizeof(TeRKQwerk_all__) / sizeof(NSString*), current.operation))
    {
        case 0:
            return [TeRKQwerk emergencyStop___:(id<TeRKQwerk>)target__ current:current is:is os:os];
        case 1:
            return [TeRKQwerk execute___:(id<TeRKQwerk>)target__ current:current is:is os:os];
        case 2:
            return [peerUserConnectionEventHandler forcedLogoutNotification___:(id<peerUserConnectionEventHandler>)target__ current:current is:is os:os];
        case 3:
            return [TeRKQwerk getCommandControllerTypeToProxyIdentityMap___:(id<TeRKQwerk>)target__ current:current is:is os:os];
        case 4:
            return [TeRKPropertyManager getProperties___:(id<TeRKPropertyManager>)target__ current:current is:is os:os];
        case 5:
            return [TeRKPropertyManager getProperty___:(id<TeRKPropertyManager>)target__ current:current is:is os:os];
        case 6:
            return [TeRKPropertyManager getPropertyKeys___:(id<TeRKPropertyManager>)target__ current:current is:is os:os];
        case 7:
            return [TeRKQwerk getState___:(id<TeRKQwerk>)target__ current:current is:is os:os];
        case 8:
            return [TeRKTerkUser getSupportedServices___:(id<TeRKTerkUser>)target__ current:current is:is os:os];
        case 9:
            return [ICEObject ice_id___:(id<ICEObject>)self current:current is:is os:os];
        case 10:
            return [ICEObject ice_ids___:(id<ICEObject>)self current:current is:is os:os];
        case 11:
            return [ICEObject ice_isA___:(id<ICEObject>)self current:current is:is os:os];
        case 12:
            return [ICEObject ice_ping___:(id<ICEObject>)self current:current is:is os:os];
        case 13:
            return [peerPeerConnectionEventHandler peerConnected___:(id<peerPeerConnectionEventHandler>)target__ current:current is:is os:os];
        case 14:
            return [peerPeerConnectionEventHandler peerConnectedNoProxy___:(id<peerPeerConnectionEventHandler>)target__ current:current is:is os:os];
        case 15:
            return [peerPeerConnectionEventHandler peerDisconnected___:(id<peerPeerConnectionEventHandler>)target__ current:current is:is os:os];
        case 16:
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
    *count = sizeof(TeRKQwerk_ids__) / sizeof(NSString *);
    *idx = 2;
    return TeRKQwerk_ids__;
}
@end

@implementation TeRKQwerkPrx

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

-(TeRKQwerkState *) emergencyStop
{
    return [TeRKQwerkPrx emergencyStop___:self context:nil];
}

-(TeRKQwerkState *) emergencyStop:(ICEContext *)ctx_
{
    return [TeRKQwerkPrx emergencyStop___:self context:ctx_];
}

-(BOOL) emergencyStop_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_
{
    return [TeRKQwerkPrx emergencyStop_async___:target_ response:response_ exception:exception_ sent:nil  prx:self context:nil];
}

-(BOOL) emergencyStop_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ context:(ICEContext *)ctx_
{
    return [TeRKQwerkPrx emergencyStop_async___:target_ response:response_ exception:exception_ sent:nil  prx:self context:ctx_];
}

-(BOOL) emergencyStop_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_
{
    return [TeRKQwerkPrx emergencyStop_async___:target_ response:response_ exception:exception_ sent:sent_  prx:self context:nil];
}

-(BOOL) emergencyStop_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ context:(ICEContext *)ctx_
{
    return [TeRKQwerkPrx emergencyStop_async___:target_ response:response_ exception:exception_ sent:sent_  prx:self context:ctx_];
}

-(TeRKQwerkState *) execute:(TeRKQwerkCommand *)command
{
    return [TeRKQwerkPrx execute___:command prx:self context:nil];
}

-(TeRKQwerkState *) execute:(TeRKQwerkCommand *)command context:(ICEContext *)ctx_
{
    return [TeRKQwerkPrx execute___:command prx:self context:ctx_];
}

-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ command:(TeRKQwerkCommand *)command
{
    return [TeRKQwerkPrx execute_async___:target_ response:response_ exception:exception_ sent:nil  command:command prx:self context:nil];
}

-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ command:(TeRKQwerkCommand *)command context:(ICEContext *)ctx_
{
    return [TeRKQwerkPrx execute_async___:target_ response:response_ exception:exception_ sent:nil  command:command prx:self context:ctx_];
}

-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKQwerkCommand *)command
{
    return [TeRKQwerkPrx execute_async___:target_ response:response_ exception:exception_ sent:sent_  command:command prx:self context:nil];
}

-(BOOL) execute_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKQwerkCommand *)command context:(ICEContext *)ctx_
{
    return [TeRKQwerkPrx execute_async___:target_ response:response_ exception:exception_ sent:sent_  command:command prx:self context:ctx_];
}

-(TeRKMutableProxyTypeIdToIdentityMap *) getCommandControllerTypeToProxyIdentityMap
{
    return [TeRKQwerkPrx getCommandControllerTypeToProxyIdentityMap___:self context:nil];
}

-(TeRKMutableProxyTypeIdToIdentityMap *) getCommandControllerTypeToProxyIdentityMap:(ICEContext *)ctx_
{
    return [TeRKQwerkPrx getCommandControllerTypeToProxyIdentityMap___:self context:ctx_];
}

-(BOOL) getCommandControllerTypeToProxyIdentityMap_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_
{
    return [TeRKQwerkPrx getCommandControllerTypeToProxyIdentityMap_async___:target_ response:response_ exception:exception_ sent:nil  prx:self context:nil];
}

-(BOOL) getCommandControllerTypeToProxyIdentityMap_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ context:(ICEContext *)ctx_
{
    return [TeRKQwerkPrx getCommandControllerTypeToProxyIdentityMap_async___:target_ response:response_ exception:exception_ sent:nil  prx:self context:ctx_];
}

-(BOOL) getCommandControllerTypeToProxyIdentityMap_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_
{
    return [TeRKQwerkPrx getCommandControllerTypeToProxyIdentityMap_async___:target_ response:response_ exception:exception_ sent:sent_  prx:self context:nil];
}

-(BOOL) getCommandControllerTypeToProxyIdentityMap_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ context:(ICEContext *)ctx_
{
    return [TeRKQwerkPrx getCommandControllerTypeToProxyIdentityMap_async___:target_ response:response_ exception:exception_ sent:sent_  prx:self context:ctx_];
}

-(TeRKQwerkState *) getState
{
    return [TeRKQwerkPrx getState___:self context:nil];
}

-(TeRKQwerkState *) getState:(ICEContext *)ctx_
{
    return [TeRKQwerkPrx getState___:self context:ctx_];
}

-(BOOL) getState_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_
{
    return [TeRKQwerkPrx getState_async___:target_ response:response_ exception:exception_ sent:nil  prx:self context:nil];
}

-(BOOL) getState_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ context:(ICEContext *)ctx_
{
    return [TeRKQwerkPrx getState_async___:target_ response:response_ exception:exception_ sent:nil  prx:self context:ctx_];
}

-(BOOL) getState_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_
{
    return [TeRKQwerkPrx getState_async___:target_ response:response_ exception:exception_ sent:sent_  prx:self context:nil];
}

-(BOOL) getState_async:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ context:(ICEContext *)ctx_
{
    return [TeRKQwerkPrx getState_async___:target_ response:response_ exception:exception_ sent:sent_  prx:self context:ctx_];
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
    return @"::TeRK::Qwerk";
}

+(TeRKQwerkState *) getState___:(ICEObjectPrx <TeRKQwerkPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"getState"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    TeRKQwerkState *ret_ = nil;
    @try
    {
        [prx_ invoke__:@"getState" mode:ICENonmutating os:os_ is:&is_ context:ctx_];
        ret_ = [TeRKQwerkState ice_readWithStream:is_];
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

+(BOOL) getState_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ prx:(ICEObjectPrx <TeRKQwerkPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"getState"];
    SEL finished_ = @selector(getState_async_finished___:response:exception:ok:is:);
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    @try
    {
        return [prx_ invoke_async__:target_ response:response_ exception:exception_ sent:sent_ finishedClass:self finished:finished_ operation:@"getState" mode:ICENonmutating os:os_ context:ctx_];
    }
    @finally
    {
        [os_ release];
    }
    return FALSE; // Keep the compiler happy.
}

+(void) getState_async_finished___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ ok:(BOOL)ok_ is:(id<ICEInputStream>)is_
{
    TeRKQwerkState *ret_ = nil;
    @try
    {
        if(!ok_)
        {
            [is_ throwException];
        }
        ret_ = [TeRKQwerkState ice_readWithStream:is_];
        ((void(*)(id, SEL, TeRKQwerkState *))objc_msgSend)(target_, response_, ret_);
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

+(TeRKQwerkState *) execute___:(TeRKQwerkCommand *)command prx:(ICEObjectPrx <TeRKQwerkPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"execute"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    TeRKQwerkState *ret_ = nil;
    @try
    {
        [TeRKQwerkCommand ice_writeWithStream:command stream:os_];
        [prx_ invoke__:@"execute" mode:ICENormal os:os_ is:&is_ context:ctx_];
        ret_ = [TeRKQwerkState ice_readWithStream:is_];
    }
    @catch(TeRKCommandException *ex_)
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

+(BOOL) execute_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ command:(TeRKQwerkCommand *)command prx:(ICEObjectPrx <TeRKQwerkPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"execute"];
    SEL finished_ = @selector(execute_async_finished___:response:exception:ok:is:);
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    @try
    {
        [TeRKQwerkCommand ice_writeWithStream:command stream:os_];
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
    TeRKQwerkState *ret_ = nil;
    @try
    {
        if(!ok_)
        {
            [is_ throwException];
        }
        ret_ = [TeRKQwerkState ice_readWithStream:is_];
        ((void(*)(id, SEL, TeRKQwerkState *))objc_msgSend)(target_, response_, ret_);
    }
    @catch(TeRKCommandException *ex_)
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

+(TeRKQwerkState *) emergencyStop___:(ICEObjectPrx <TeRKQwerkPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"emergencyStop"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    TeRKQwerkState *ret_ = nil;
    @try
    {
        [prx_ invoke__:@"emergencyStop" mode:ICEIdempotent os:os_ is:&is_ context:ctx_];
        ret_ = [TeRKQwerkState ice_readWithStream:is_];
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

+(BOOL) emergencyStop_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ prx:(ICEObjectPrx <TeRKQwerkPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"emergencyStop"];
    SEL finished_ = @selector(emergencyStop_async_finished___:response:exception:ok:is:);
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    @try
    {
        return [prx_ invoke_async__:target_ response:response_ exception:exception_ sent:sent_ finishedClass:self finished:finished_ operation:@"emergencyStop" mode:ICEIdempotent os:os_ context:ctx_];
    }
    @finally
    {
        [os_ release];
    }
    return FALSE; // Keep the compiler happy.
}

+(void) emergencyStop_async_finished___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ ok:(BOOL)ok_ is:(id<ICEInputStream>)is_
{
    TeRKQwerkState *ret_ = nil;
    @try
    {
        if(!ok_)
        {
            [is_ throwException];
        }
        ret_ = [TeRKQwerkState ice_readWithStream:is_];
        ((void(*)(id, SEL, TeRKQwerkState *))objc_msgSend)(target_, response_, ret_);
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

+(TeRKMutableProxyTypeIdToIdentityMap *) getCommandControllerTypeToProxyIdentityMap___:(ICEObjectPrx <TeRKQwerkPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"getCommandControllerTypeToProxyIdentityMap"];
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    id<ICEInputStream> is_ = nil;
    TeRKMutableProxyTypeIdToIdentityMap *ret_ = nil;
    @try
    {
        [prx_ invoke__:@"getCommandControllerTypeToProxyIdentityMap" mode:ICENonmutating os:os_ is:&is_ context:ctx_];
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

+(BOOL) getCommandControllerTypeToProxyIdentityMap_async___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ sent:(SEL)sent_ prx:(ICEObjectPrx <TeRKQwerkPrx> *)prx_ context:(ICEContext *)ctx_
{
    [prx_ checkTwowayOnly__:@"getCommandControllerTypeToProxyIdentityMap"];
    SEL finished_ = @selector(getCommandControllerTypeToProxyIdentityMap_async_finished___:response:exception:ok:is:);
    id<ICEOutputStream> os_ = [prx_ createOutputStream__];
    @try
    {
        return [prx_ invoke_async__:target_ response:response_ exception:exception_ sent:sent_ finishedClass:self finished:finished_ operation:@"getCommandControllerTypeToProxyIdentityMap" mode:ICENonmutating os:os_ context:ctx_];
    }
    @finally
    {
        [os_ release];
    }
    return FALSE; // Keep the compiler happy.
}

+(void) getCommandControllerTypeToProxyIdentityMap_async_finished___:(id)target_ response:(SEL)response_ exception:(SEL)exception_ ok:(BOOL)ok_ is:(id<ICEInputStream>)is_
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
