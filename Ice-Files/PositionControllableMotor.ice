#ifndef TERK_POSITION_CONTROLLABLE_MOTOR_ICE
#define TERK_POSITION_CONTROLLABLE_MOTOR_ICE

#include "TeRKCommon.ice"

//[["java:java5"]]
//[["java:package:edu.cmu.ri.mrpl"]]
module TeRK
   {
   module motor
      {
      struct PositionControllableMotorState
         {
         int       currentPosition;
         int       specifiedPosition;
         int       specifiedSpeed;
         };

      sequence<PositionControllableMotorState> PositionControllableMotorStateArray;

      struct PositionControllableMotorCommand
         {
         BooleanArray   motorMask;
         IntArray       motorPositionDeltas;
         IntArray       motorSpeeds;
         };

      interface PositionControllableMotorService extends AbstractCommandController
         {
         ["ami"] PositionControllableMotorStateArray getState();
         
         ["ami"] void execute(PositionControllableMotorCommand command);
         };
      };
   };

#endif
