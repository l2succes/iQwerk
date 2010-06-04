#ifndef TERK_VIDEO_ICE
#define TERK_VIDEO_ICE

#include "TeRKCommon.ice"

//[["java:java5"]]
//[["java:package:edu.cmu.ri.mrpl"]]
module TeRK
   {
   enum ImageFormat {ImageJPEG, ImageRGB24, ImageRGB32, ImageGray8, ImageYUV420P, ImageUnknown};

   exception VideoException             extends TeRKException { };

   struct Image
      {
      int           height;
      int           width;
      int           frameNum;
      ImageFormat   format;
      ByteArray     data;
      };

   interface VideoStreamerClient
      {
      void newFrame(Image frame);
      };

   interface VideoStreamerServer extends AbstractCommandController
      {
      // for push model
      ["ami"] idempotent void startVideoStream() throws VideoException;
      ["ami"] idempotent void stopVideoStream() throws VideoException;

      // for pull model
      ["ami"] idempotent int startCamera() throws VideoException;
      ["ami"] idempotent int stopCamera() throws VideoException;
      ["ami"] Image getFrame(int frameNumber) throws VideoException;
      };

   };

#endif
