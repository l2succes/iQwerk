#ifndef TERK_THERMISTOR_ICE
#define TERK_THERMISTOR_ICE

#include <TeRKCommon.ice>

[["java:java5"]]
[["java:package:edu.cmu.ri.mrpl"]]
module TeRK
   {
   module thermistor
      {
      interface ThermistorService extends AbstractCommandController
         {
         // returns the value for the thermistor specified by the given id
         ["ami"] int getValue(int id);

         // returns the value of each thermistor
         ["ami"] IntArray getValues();
         };
      };
   };

#endif
