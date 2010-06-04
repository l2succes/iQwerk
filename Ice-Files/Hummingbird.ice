#ifndef TERK_HUMMINGBIRD_ICE
#define TERK_HUMMINGBIRD_ICE

#include "AnalogIn.ice"
#include "Color.ice"
#include "TeRKCommon.ice"

//[["java:java5"]]
//[["java:package:edu.cmu.ri.mrpl"]]
module TeRK
   {
   module hummingbird
      {
      struct HummingbirdState
         {
         TeRK::AnalogInState  analogIn;
         color::RGBColorArray fullColorLedColors;
         IntArray             ledIntensities;
         IntArray             motorVelocities;
         IntArray             servoPositions;
         IntArray             vibrationMotorSpeeds;
         };

      interface HummingbirdService extends AbstractCommandController
         {
         ["ami"] nonmutating HummingbirdState getState();
         ["ami"] idempotent void emergencyStop();
         };
      };
   };

#endif
