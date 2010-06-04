#ifndef TERK_DIGITAL_OUT_ICE
#define TERK_DIGITAL_OUT_ICE

#include "TeRKCommon.ice"

//[["java:java5"]]
//[["java:package:edu.cmu.ri.mrpl"]]
module TeRK
   {
   exception DigitalOutCommandException      extends CommandException { };

   struct DigitalOutCommand
      {
      BooleanArray digitalOutMask;
      BooleanArray digitalOutValues;
      };

   interface DigitalOutController extends AbstractCommandController
      {
      ["ami"] void execute(DigitalOutCommand command) throws DigitalOutCommandException;
      };
   };

#endif
