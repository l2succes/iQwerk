#ifndef TERK_DIGITAL_IN_ICE
#define TERK_DIGITAL_IN_ICE

#include "TeRKCommon.ice"

//[["java:java5"]]
//[["java:package:edu.cmu.ri.mrpl"]]
module TeRK
   {
   struct DigitalInState
      {
      BooleanArray digitalInStates;
      };

   interface DigitalInController extends AbstractCommandController
      {
      ["ami"] DigitalInState getState();
      };
   };

#endif
