#ifndef TERK_COLOR_ICE
#define TERK_COLOR_ICE

//[["java:java5"]]
//[["java:package:edu.cmu.ri.mrpl"]]
module TeRK
   {
   module color
      {
      struct RGBColor
         {
         int red;
         int green;
         int blue;
         };

      sequence<RGBColor> RGBColorArray;
      };
   };

#endif
