#ifndef TERK_ACCELEROMETER_ICE
#define TERK_ACCELEROMETER_ICE

#include "TeRKCommon.ice"

//[["java:java5"]]
//[["java:package:edu.cmu.ri.mrpl"]]
module TeRK
   {
   module accelerometer
      {
      struct AccelerometerState
         {
         int x;
         int y;
         int z;
         };

      sequence<AccelerometerState> AccelerometerStateArray;

      interface AccelerometerService extends AbstractCommandController
         {
         // returns the state for the accelerometer specified by the given id
         ["ami"] AccelerometerState       getState(int id);

         // returns the state of each accelerometer
         ["ami"] AccelerometerStateArray  getStates();
         };
      };
   };

#endif
