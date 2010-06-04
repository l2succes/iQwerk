#ifndef TERK_COMMON_ICE
#define TERK_COMMON_ICE

#include <Ice/Identity.ice>
#include "MRPLPeer.ice"

//[["java:java5"]]
//[["java:package:edu.cmu.ri.mrpl"]]
module TeRK
   {
   sequence<bool> BooleanArray;
   sequence<byte> ByteArray;
   sequence<int> IntArray;
   sequence<short> ShortArray;
   ["java:type:java.util.ArrayList<String>"] sequence<string> StringArray;

   dictionary<string,Ice::Identity> ProxyTypeIdToIdentityMap;
   dictionary<string,string> PropertyMap;

   exception TeRKException
      {
      string reason;
      };

   exception ReadOnlyPropertyException  extends TeRKException { };

   exception CommandException                extends TeRKException { };

   interface PropertyManager
      {
      ["ami"] string getProperty(string key);
      ["ami"] PropertyMap getProperties();
      ["ami"] StringArray getPropertyKeys();
      ["ami"] void setProperty(string key, string value) throws ReadOnlyPropertyException;
      };

   interface AbstractCommandController extends PropertyManager { };

   sequence<AbstractCommandController*> AbstractCommandControllerProxyArray;

   interface TerkUser extends peer::ConnectionEventHandler, PropertyManager
      {
      // Returns a map which specifies all the services that this TerkUser supports. The
      // map associates proxy types (i.e. the result of .ice_getId()) with the private proxy
      // identities that the user used to register the services with the relay (via
      // the registerProxy() or registerProxies() method).  Peers call this method to see which
      // commands the user supports so they know what kind of commands they can send to the peer.
      // Peers will typically use the private identities in the returned map to fetch proxies
      // from the relay via the getPeerProxy() or getPeerProxies() methods.
      ["ami"] nonmutating ProxyTypeIdToIdentityMap getSupportedServices();
      };
   };

#endif
