#ifndef TERK_ANALOG_IN_ICE
#define TERK_ANALOG_IN_ICE

#include "TeRKCommon.ice"

//[["java:java5"]]
//[["java:package:edu.cmu.ri.mrpl"]]
module TeRK
   {
   struct AnalogInState
      {
      ShortArray analogInValues;
      };

   interface AnalogInController extends AbstractCommandController
      {
      ["ami"] AnalogInState getState();
      };
   };

#endif
