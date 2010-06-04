#ifndef TERK_ROBOTICON_MESSAGING_ICE
#define TERK_ROBOTICON_MESSAGING_ICE

#include "Color.ice"
#include "TeRKCommon.ice"

//[["java:java5"]]
//[["java:package:edu.cmu.ri.mrpl"]]
module TeRK
   {
   module roboticonmessenger
      {
      struct Message
         {
         string      subject;
         string      text;
         };

      struct Roboticon
         {
         long        timestamp;  // creation or last modification timestamp
         string      filename;   // filename for the Sequence or Expression
         string      xml;        // xml for the Sequence or Expression
         string      creator;    // creator of the roboticon
         };

      ["java:type:java.util.ArrayList<Roboticon>"] sequence<Roboticon> RoboticonList;

      struct RoboticonMessage
         {
         long            timestamp;        // time the message was sent
         string          senderUserId;     // sender user id
         string          recipientUserId;  // recipient user id, if the message is private
         bool            isPrivate;        // specifies whether the message is private
         Message         theMessage;       // the message
         RoboticonList   roboticons;       // roboticon attachment(s)
         string          messageId;        // message id
         string          parentMessageId;  // id of the message to which this message is a reply (empty if not a reply)
         };

      ["java:type:java.util.ArrayList<RoboticonMessage>"] sequence<RoboticonMessage> RoboticonMessageList;

      interface RoboticonMessagingServerService extends TeRK::AbstractCommandController
         {
         // Sends a message to all users.  The parentMessageId is optional, and should be empty for new threads.
         // A reply to an existing message should specify the parent message's messageId for the parentMessageId
         // argument.
         void sendPublicMessage(string parentMessageId, Message theMessage, RoboticonList roboticons);

         // Similar to sendPublicMessage(), but the message is sent only to the user specified by the recipientUserId.
         // Any attached roboticons are still published to all users, but all other details are censored.
         void sendPrivateMessage(string parentMessageId, string recipientUserId, Message theMessage, RoboticonList roboticons);

         RoboticonMessageList getMessageHistory();

         // Returns the timestamp of the last logout by the calling user.  Returns -1 if the user has never logged out
         // or if the data is unavailable.
         long getLastLogoutTimestamp();
         };

      interface RoboticonMessagingClientService extends TeRK::AbstractCommandController
         {
         void handleRoboticonMessage(RoboticonMessage message);
         };
      };
   };

#endif
