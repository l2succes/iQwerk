#ifndef TERK_SPEED_CONTROLLABLE_MOTOR_ICE
#define TERK_SPEED_CONTROLLABLE_MOTOR_ICE

#include "TeRKCommon.ice"

//[["java:java5"]]
//[["java:package:edu.cmu.ri.mrpl"]]
module TeRK
   {
   module motor
      {
      struct SpeedControllableMotorCommand
         {
         BooleanArray   motorMask;
         IntArray       motorSpeeds;
         };

      interface SpeedControllableMotorService extends AbstractCommandController
         {
         ["ami"] IntArray execute(SpeedControllableMotorCommand command);
         };
      };
   };

#endif
