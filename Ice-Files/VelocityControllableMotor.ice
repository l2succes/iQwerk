#ifndef TERK_VELOCITY_CONTROLLABLE_MOTOR_ICE
#define TERK_VELOCITY_CONTROLLABLE_MOTOR_ICE

#include "TeRKCommon.ice"

//[["java:java5"]]
//[["java:package:edu.cmu.ri.mrpl"]]
module TeRK
   {
   module motor
      {
      struct VelocityControllableMotorCommand
         {
         BooleanArray   motorMask;
         IntArray       motorVelocities;
         };

      interface VelocityControllableMotorService extends AbstractCommandController
         {
         ["ami"] IntArray execute(VelocityControllableMotorCommand command);
         };
      };
   };

#endif
