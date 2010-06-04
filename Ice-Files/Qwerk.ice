#ifndef TERK_QWERK_ICE
#define TERK_QWERK_ICE

#include "AnalogIn.ice"
#include "Audio.ice"
#include "DigitalIn.ice"
#include "DigitalOut.ice"
#include "LED.ice"
#include "Motor.ice"
#include "Servo.ice"
#include "TeRKCommon.ice"

//[["java:java5"]]
//[["java:package:edu.cmu.ri.mrpl"]]
module TeRK
   {
   struct BatteryState
      {
      int batteryVoltage;
      };

   struct ButtonState
      {
      BooleanArray buttonStates;       // buttons are not latched, so this just returns instantaneous value
      };

   struct QwerkState
      {
      AnalogInState    analogIn;
      BatteryState     battery;
      ButtonState      button;
      DigitalInState   digitalIn;
      MotorState       motor;
      ServoState       servo;
      };

   struct QwerkCommand
      {
      AudioCommand        audioCmd;
      DigitalOutCommand   digitalOutCmd;
      LEDCommand          ledCmd;
      MotorCommand        motorCmd;
      ServoCommand        servoCmd;
      };

   interface Qwerk extends TerkUser
      {
      ["ami"] nonmutating QwerkState getState();
      ["ami"] QwerkState execute(QwerkCommand command) throws CommandException;
      ["ami"] idempotent QwerkState emergencyStop();

      // deprecated, use getSupportedServices() instead
      ["ami"] nonmutating ProxyTypeIdToIdentityMap getCommandControllerTypeToProxyIdentityMap();
      };
   };

#endif
