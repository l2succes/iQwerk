#ifndef TERK_AUDIO_ICE
#define TERK_AUDIO_ICE

#include "TeRKCommon.ice"

//[["java:java5"]]
//[["java:package:edu.cmu.ri.mrpl"]]
module TeRK
   {
   enum AudioMode {AudioTone,AudioClip};

   exception AudioCommandException           extends CommandException { };
   exception AudioCommandQueueFullException  extends AudioCommandException { };
   exception AudioFileTooLargeException      extends AudioCommandException { };

   struct AudioCommand
      {
      AudioMode mode;
      int       frequency;
      byte      amplitude;
      int       duration;     // In milliseconds.  For tones, it specifies the length of the tone.  For clips, it specifies how long to wait to see if there's an error.
      ByteArray sound;
      };

   interface AudioController extends AbstractCommandController
      {
      ["ami"] void execute(AudioCommand command) throws AudioCommandException;
      };

   };

#endif
