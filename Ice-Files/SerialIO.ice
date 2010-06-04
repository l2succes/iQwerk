#ifndef TERK_SERIAL_IO_ICE
#define TERK_SERIAL_IO_ICE

#include "TeRKCommon.ice"

//[["java:java5"]]
//[["java:package:edu.cmu.ri.mrpl"]]
module TeRK
   {
   // The baud rates currently supported by the SUS-2 general terminal interface specification. Note that B0 is not
   // supported because it is not really a baud rate (it causes the modem to hang up i.e. drop DTR). Use the close()
   // method instead.
   enum SerialIOBaudRate
      {
      BAUD50,       // 50 baud
      BAUD75,       // 75 baud
      BAUD110,      // 110 baud
      BAUD150,      // 150 baud
      BAUD200,      // 200 baud
      BAUD300,      // 300 baud
      BAUD600,      // 600 baud
      BAUD1200,     // 1200 baud
      BAUD1800,     // 1800 baud
      BAUD2400,     // 2400 baud
      BAUD4800,     // 4800 baud
      BAUD9600,     // 9600 baud
      BAUD19200,    // 19200 baud
      BAUD38400,    // 38400 baud
      BAUD57600,    // 57600 baud
      BAUD115200    // 115200 baud
      };

   // The allowed values of character sizes that can be used during the serial communication.
   enum SerialIOCharacterSize
      {
      CHARSIZE5,  // 5 bit characters
      CHARSIZE6,  // 6 bit characters
      CHARSIZE7,  // 7 bit characters
      CHARSIZE8   // 8 bit characters
      };

   // The allowed values of the parity associated with the serial port communications.
   enum SerialIOParity
      {
      PARITYEVEN,   // Even parity
      PARITYODD,    // Odd parity
      PARITYNONE    // No parity (i.e. parity checking disabled)
      };

   // The allowed values of the stop bits associated with the serial port communications.
   enum SerialIOStopBits
      {
      STOPBITS1,    // 1 stop bit
      STOPBITS2,    // 2 stop bits
      };

   // The values of the flow control settings for a serial port.
   enum SerialIOFlowControl
      {
      FLOWCONTROLHARDWARE,   // Hardware flow control
      FLOWCONTROLSOFTWARE,   // Software flow control
      FLOWCONTROLNONE        // No flow control
      };

   struct SerialIOConfig
      {
      string                  portName;
      SerialIOBaudRate        baud;
      SerialIOCharacterSize   characterSize;
      SerialIOParity          parity;
      SerialIOStopBits        stopBits;
      SerialIOFlowControl     flowControl;
      };

   exception SerialIOException extends TeRKException { };

   interface SerialIOService extends TeRK::AbstractCommandController
      {
      // Opens a serial port using the given SerialIOConfig.
      ["ami"] void open(SerialIOConfig config) throws SerialIOException;

      // Returns true if the specified serial port is currently open, false otherwise.
      ["ami"] bool isOpen(string portName);

      // Returns true if data is available for reading from the specified serial port; false otherwise.
      ["ami"] bool isDataAvailable(string portName) throws SerialIOException;

      // Reads from the specified serial port and returns the data read in a byte array.  Stops reading when either of
      // the following conditions is satisfied:
      //
      //    * There is no more data available for reading
      //    * The maximum number of bytes has been read (specified by the maxNumberOfBytesToRead parameter)
      //
      // This method does nothing and simply returns an empty arrary if maxNumberOfBytesToRead is less than 1.
      ["ami"] TeRK::ByteArray read(string portName, int maxNumberOfBytesToRead) throws SerialIOException;

      // Reads from the specified serial port and returns the data read in a byte array.  Stops reading when either of
      // the following conditions is satisfied:
      //
      //    * The maximum number of bytes has been read (specified by the maxNumberOfBytesToRead parameter)
      //    * The command times out because the specified maximum number of bytes is not read within the number of
      //      milliseconds specified by timeoutMilliseconds
      //
      // This method does nothing and simply returns an empty arrary if maxNumberOfBytesToRead is less than 1. Setting
      // timeoutMilliseconds to a value less than 1 causes the method to wait indefinitely and only returns when one of
      // the other conditions becomes true.
      ["ami"] TeRK::ByteArray blockingRead(string portName, int maxNumberOfBytesToRead, int timeoutMilliseconds) throws SerialIOException;

      // Reads from the specified serial port and returns the data read in a byte array.  Stops reading when any of the
      // following conditions is satisfied:
      //
      //    * The delimiter character is read
      //    * There is no more data available for reading
      //    * The maximum number of bytes has been read (specified by the maxNumberOfBytesToRead parameter)
      //
      // This method does nothing and simply returns an empty arrary if maxNumberOfBytesToRead is less than 1.
      ["ami"] TeRK::ByteArray readUntilDelimiter(string portName, int maxNumberOfBytesToRead, byte delimiterCharacter) throws SerialIOException;

      // Reads from the specified serial port and returns the data read in a byte array.  Stops reading when any of the
      // following conditions is satisfied:
      //
      //    * The delimiter character is read
      //    * The maximum number of bytes has been read (specified by the maxNumberOfBytesToRead parameter)
      //    * The command times out because neither the specified delimiter character nor the specified number of bytes
      //      is read within the number of milliseconds specified by timeoutMilliseconds
      //
      // This method does nothing and simply returns an empty arrary if maxNumberOfBytesToRead is less than 1. Setting
      // timeoutMilliseconds to a value less than 1 causes the method to wait indefinitely and only returns when one of
      // the other conditions becomes true.
      ["ami"] TeRK::ByteArray blockingReadUntilDelimiter(string portName, int maxNumberOfBytesToRead, byte delimiterCharacter, int timeoutMilliseconds) throws SerialIOException;

      // Writes the given byte array to the specified serial port.
      ["ami"] void write(string portName, TeRK::ByteArray data) throws SerialIOException;

      // Closes the specified serial port
      ["ami"] void close(string portName);
      };
   };

#endif
