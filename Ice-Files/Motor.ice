#ifndef TERK_MOTOR_ICE
#define TERK_MOTOR_ICE

#include "TeRKCommon.ice"

//[["java:java5"]]
//[["java:package:edu.cmu.ri.mrpl"]]
module TeRK
   {
   enum MotorMode {MotorSpeedControl,MotorPositionControl,MotorOff};

   sequence<MotorMode> MotorModeArray;

   exception MotorException             extends TeRKException { };

   exception MotorCommandException           extends CommandException { };

   struct MotorBuffer
      {
      IntArray values;
      };

   sequence<MotorBuffer> MotorBufferArray;

   struct MotorState
      {
      IntArray       motorVelocities;
      IntArray       motorPositions;
      IntArray       motorCurrents;       // in mA
      IntArray       motorDutyCycles;
      BooleanArray   motorDone;
      };

   struct MotorCommand
      {
      BooleanArray motorMask;
      MotorModeArray motorModes;
      IntArray motorPositions;
      IntArray motorVelocities;
      IntArray motorAccelerations;
      };

   interface MotorController extends AbstractCommandController
      {
      ["ami"] MotorState execute(MotorCommand command) throws MotorCommandException;

      // Motor buffer commands
      ["ami"] int getFrequency();  // control periods per second
      ["ami"] void startMotorBufferRecord(BooleanArray motorMask) throws MotorException;
      ["ami"] idempotent void stopMotorBufferRecord(BooleanArray motorMask) throws MotorException;
      ["ami"] nonmutating MotorBufferArray getMotorBuffers(BooleanArray motorMask) throws MotorException;
      ["ami"] idempotent void setMotorBuffer(BooleanArray motorMask, MotorBufferArray motorBuffers) throws MotorException;
      ["ami"] void playMotorBuffer(BooleanArray motorMask) throws MotorException;
      };
   };

#endif
