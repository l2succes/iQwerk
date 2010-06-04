#ifndef MRPL_PEER_ICE
#define MRPL_PEER_ICE

#include <Ice/Identity.ice>
#include <Glacier2/Session.ice>

//[["java:java5"]]
//[["java:package:edu.cmu.ri.mrpl"]]
module peer
   {
   enum PeerAccessLevel {AccessLevelOwner,
                         AccessLevelOwnerRestricted,
                         AccessLevelNormalEnhanced,
                         AccessLevelNormal,
                         AccessLevelNormalRestricted,
                         AccessLevelGuestEnhanced,
                         AccessLevelGuest,
                         AccessLevelGuestRestricted,
                         AccessLevelNone};

   ["java:type:java.util.ArrayList<Ice.Identity>"] sequence<Ice::Identity> IdentityArray;
   ["java:type:java.util.ArrayList<Ice.ObjectPrx>"] sequence<Object*> ObjectProxyArray;
   ["java:type:java.util.HashMap<Ice.Identity,Ice.ObjectPrx>"] dictionary<Ice::Identity,Object*> IdentityToProxyMap;

   struct PeerIdentifier
      {
      string userId;
      string firstName;
      string lastName;
      };

   exception PeerException
      {
      string reason;
      };

   exception InvalidIdentityException extends PeerException { };

   exception PeerAccessException extends PeerException { };

   exception PeerUnavailableException extends PeerException { };

   exception PeerConnectionFailedException extends PeerException { };

   exception DuplicateConnectionException extends PeerException { };

   exception RegistrationException extends PeerException { };

   interface UserConnectionEventHandler
      {
      ["ami"] void forcedLogoutNotification();
      };

   interface PeerConnectionEventHandler
      {
      ["ami"] void peerConnected(string peerUserId, PeerAccessLevel accessLevel, Object* peerProxy);

      ["ami"] void peerConnectedNoProxy(string peerUserId, PeerAccessLevel accessLevel);

      ["ami"] void peerDisconnected(string peerUserId);
      };

   interface ConnectionEventHandler extends UserConnectionEventHandler, PeerConnectionEventHandler
      {
      };

   interface PeerRegistrationHandler
      {
      void registerCallbacks(Object* selfCallbackProxy, ConnectionEventHandler* connectionEventHandlerProxy) throws RegistrationException;

      // registers the given proxy as a proxy that can be shared with peers
      void registerProxy(Object* proxy) throws RegistrationException;

      // registers the given proxies as proxies that can be shared with peers
      void registerProxies(ObjectProxyArray proxies) throws RegistrationException;

      // creates and returns a proxy to the object specified by the given peer and private proxy identity
      Object* getPeerProxy(string peerUserId, Ice::Identity privateProxyIdentity) throws PeerAccessException, InvalidIdentityException;

      // creates proxies and returns them in a Map containing the private identities mapped to the newly-created peer proxies
      IdentityToProxyMap getPeerProxies(string peerUserId, IdentityArray privateProxyIdentities) throws PeerAccessException, InvalidIdentityException;
      };

   ["java:type:java.util.ArrayList<PeerIdentifier>"] sequence<PeerIdentifier> PeerIdentifierSet;

   interface UserSession extends Glacier2::Session, PeerRegistrationHandler
      {
      // returns a collection of all the peers which can connect with this user, regardless of whether they're currently online
      PeerIdentifierSet getMyPeers() throws PeerException;

      // returns a collection of all the peers which can connect with this user and are currently online
      PeerIdentifierSet getMyAvailablePeers() throws PeerException;

      // returns a collection of all the peers which can connect with this user and are not currently online
      PeerIdentifierSet getMyUnavailablePeers() throws PeerException;

      Object* connectToPeer(string peerUserId) throws PeerAccessException, PeerUnavailableException, PeerConnectionFailedException, DuplicateConnectionException;

      PeerIdentifierSet getConnectedPeers() throws PeerException;

      void disconnectFromPeer(string peerUserId);

      void disconnectFromPeers();
      };
   };

#endif
