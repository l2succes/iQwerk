#ifndef TERK_SIMPLE_LED_ICE
#define TERK_SIMPLE_LED_ICE

#include "TeRKCommon.ice"

//[["java:java5"]]
//[["java:package:edu.cmu.ri.mrpl"]]
module TeRK
   {
   module led
      {
      struct SimpleLEDCommand
         {
         BooleanArray   mask;
         IntArray       intensities;
         };

      interface SimpleLEDService extends AbstractCommandController
         {
         ["ami"] IntArray execute(SimpleLEDCommand command);
         };
      };
   };

#endif
