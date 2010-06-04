#ifndef TERK_COMMAND_LINE_ICE
#define TERK_COMMAND_LINE_ICE

#include "MRPLPeer.ice"

// Defines interfaces for the simple, command-line demo (CommandLineClient.java and CommandLineQwerk.java)

//[["java:java5"]]
//[["java:package:edu.cmu.ri.mrpl"]]
module TeRK
   {
   module commandline
      {
      interface SimpleCommandLineClient extends peer::ConnectionEventHandler
         {
         void printMessage(string data);
         };

      interface SimpleCommandLineQwerk extends peer::ConnectionEventHandler
         {
         int getRandomInt(int upperBound);
         void printMessage(string data);
         };
      };
   };

#endif
