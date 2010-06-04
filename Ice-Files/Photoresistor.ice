#ifndef TERK_PHOTORESISTOR_ICE
#define TERK_PHOTORESISTOR_ICE

#include "TeRKCommon.ice"

//[["java:java5"]]
//[["java:package:edu.cmu.ri.mrpl"]]
module TeRK
   {
   module photoresistor
      {
      interface PhotoresistorService extends AbstractCommandController
         {
         // returns the value for the photoresistor specified by the given id
         ["ami"] int getValue(int id);

         // returns the value of each photoresistor
         ["ami"] IntArray getValues();
         };
      };
   };

#endif
