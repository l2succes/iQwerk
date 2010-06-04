#ifndef TERK_BUZZER_ICE
#define TERK_BUZZER_ICE

#include "TeRKCommon.ice"

//[["java:java5"]]
//[["java:package:edu.cmu.ri.mrpl"]]
module TeRK
   {
   module buzzer
      {
      struct BuzzerCommand
         {
         int frequency;
         int durationInMilliseconds;
         };

      interface BuzzerService extends AbstractCommandController
         {
         // executes the given command on the buzzer specified by the given id
         ["ami"] void execute(int id, BuzzerCommand command);
         };
      };
   };

#endif
