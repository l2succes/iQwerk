#ifndef TERK_SIMPLE_SERVO_ICE
#define TERK_SIMPLE_SERVO_ICE

#include "TeRKCommon.ice"

//[["java:java5"]]
//[["java:package:edu.cmu.ri.mrpl"]]
module TeRK
   {
   module servo
      {
      struct SimpleServoCommand
         {
         BooleanArray   mask;
         IntArray       positions;
         };

      interface SimpleServoService extends AbstractCommandController
         {
         ["ami"] IntArray execute(SimpleServoCommand command);
         };
      };
   };

#endif
