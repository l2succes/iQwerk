#ifndef TERK_CLIENT_ICE
#define TERK_CLIENT_ICE

#include "Video.ice"
#include "TeRKCommon.ice"

//[["java:java5"]]
//[["java:package:edu.cmu.ri.mrpl"]]
module TeRK
   {
   // todo: eventually change the client from Is-A to Has-A for the VideoStreamerClient interface
   interface TerkClient extends TerkUser, VideoStreamerClient
      {
      };
   };

#endif
