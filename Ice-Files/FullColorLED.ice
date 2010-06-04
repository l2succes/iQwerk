#ifndef TERK_FULL_COLOR_LED_ICE
#define TERK_FULL_COLOR_LED_ICE

#include "Color.ice"
#include "TeRKCommon.ice"

//[["java:java5"]]
//[["java:package:edu.cmu.ri.mrpl"]]
module TeRK
   {
   module led
      {
      struct FullColorLEDCommand
         {
         BooleanArray          mask;
         color::RGBColorArray  colors;
         };

      interface FullColorLEDService extends AbstractCommandController
         {
         ["ami"] color::RGBColorArray execute(FullColorLEDCommand command);
         };
      };
   };

#endif
