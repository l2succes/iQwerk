#ifndef TERK_SIMPLEOBSTACLEDETECTOR_ICE
#define TERK_SIMPLEOBSTACLEDETECTOR_ICE

#include "TeRKCommon.ice"

//[["java:java5"]]
//[["java:package:edu.cmu.ri.mrpl"]]
module TeRK
   {
   module obstacle
      {
      interface SimpleObstacleDetectorService extends AbstractCommandController
         {
         // returns true if an obstacle is detected by the detector specified by the given id; false otherwise
         ["ami"] bool isObstacleDetected(int id);

         // returns whether each obstacle detector detects an obstacle
         ["ami"] BooleanArray areObstaclesDetected();
         };
      };
   };

#endif
