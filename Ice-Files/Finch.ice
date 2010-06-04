#ifndef TERK_FINCH_ICE
#define TERK_FINCH_ICE

#include "Accelerometer.ice"
#include "Color.ice"
#include "PositionControllableMotor.ice"
#include "TeRKCommon.ice"

//[["java:java5"]]
//[["java:package:edu.cmu.ri.mrpl"]]
module TeRK
   {
   module finch
      {
      struct FinchState
         {
         color::RGBColor                              fullColorLedColor;
         accelerometer::AccelerometerState            accelerometerValues;
         motor::PositionControllableMotorStateArray   positionControllableMotorStates;    // array index 0 = left, 1 = right
         IntArray                                     velocityControllableMotorStates;    // array index 0 = left, 1 = right
         int                                          thermistorValue;
         IntArray                                     photoresistors;                     // array index 0 = left, 1 = right
         BooleanArray                                 isObstacleDetected;                 // array index 0 = left, 1 = right
         };

      interface FinchService extends AbstractCommandController
         {
         ["ami"] nonmutating FinchState getState();
         ["ami"] idempotent void emergencyStop();
         };
      };
   };

#endif
