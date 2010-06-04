#ifndef TERK_SERVO_ICE
#define TERK_SERVO_ICE

#include "TeRKCommon.ice"

//[["java:java5"]]
//[["java:package:edu.cmu.ri.mrpl"]]
module TeRK
   {
      enum ServoMode {ServoMotorSpeedControl,ServoMotorPositionControl,ServoOff};

      sequence<ServoMode>   ServoModeArray;

      struct Bounds
         {
         int min;
         int max;
         };

      sequence<Bounds>      BoundsArray;

      exception ServoCommandException           extends CommandException { };

      struct ServoConfig
         {
         Bounds rangeBounds;
         int    initialPosition;
         };

      sequence<ServoConfig> ServoConfigArray;

      struct ServoState
         {
         IntArray servoPositions;
         };

      struct ServoCommand
         {
         BooleanArray servoMask;
         ServoModeArray servoModes;
         IntArray servoPositions;
         IntArray servoSpeeds;
         };

      interface ServoController extends AbstractCommandController
         {
         ["ami"] ServoState execute(ServoCommand command) throws ServoCommandException;

         // Sets the bounds for the servos specified by the given mask.  This method ensures that the given bounds fall
         // within the valid range [0-255] and that the minimum bound is less than the maximum bound for each servo.
         ["ami"] void setBounds(BooleanArray servoMask, BoundsArray servoBounds);

         // Returns the current servo bounds
         ["ami"] BoundsArray getBounds();

         // Sets the config for the servos specified by the given mask.  This method ensures that:
         // * the given bounds fall within the valid range [0-255]
         // * the minimum bound is less than the maximum bound
         // * the initial positions fall within the valid range [0-255]
         ["ami"] void setConfigs(BooleanArray servoMask, ServoConfigArray servoConfigs);

         // Returns the current servo configs
         ["ami"] ServoConfigArray getConfigs();
         };
   };

#endif
