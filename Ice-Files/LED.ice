#ifndef TERK_LED_ICE
#define TERK_LED_ICE

#include "TeRKCommon.ice"

//[["java:java5"]]
//[["java:package:edu.cmu.ri.mrpl"]]
module TeRK
   {
   enum LEDMode {LEDOn,LEDOff,LEDBlinking};

   sequence<LEDMode> LEDModeArray;

   exception LEDCommandException             extends CommandException { };

   struct LEDCommand
      {
      BooleanArray ledMask;
      LEDModeArray ledModes;
      };

   interface LEDController extends AbstractCommandController
      {
      ["ami"] void execute(LEDCommand command) throws LEDCommandException;
      };
   };

#endif
