#ifndef TERK_PEER_INFO_ICE
#define TERK_PEER_INFO_ICE

#include "TeRKCommon.ice"

//[["java:java5"]]
//[["java:package:edu.cmu.ri.mrpl"]]
module TeRK
   {
   module peerinformation
      {
      dictionary<string,string> AttributeMap;

      struct PeerInfo
         {
         bool              isConnected;
         long              connectionTimestamp;
         string            userId;
         AttributeMap      attributes;
         };

      ["java:type:java.util.ArrayList<PeerInfo>"] sequence<PeerInfo> PeerInfoList;

      interface PeerInfoServerService extends TeRK::AbstractCommandController
         {
         // returns a list of all possible peers (i.e. users which have access to the server)
         PeerInfoList getPeerInfo();

         // returns a list of all connected peers
         PeerInfoList getConnectedPeerInfo();

         // returns a list of all disconnected peers
         PeerInfoList getDisconnectedPeerInfo();

         void setAttribute(string key, string value);
         };

      interface PeerInfoClientService extends TeRK::AbstractCommandController
         {
         void peerConnected(PeerInfo peer);
         void peerUpdated(PeerInfo peer);
         void peerDisconnected(PeerInfo peer);
         };
      };
   };

#endif
