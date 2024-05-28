#ifndef __ETHERBUF_H__
#define __ETHERBUF_H__

#include "pb_encode.h"
#include "pb_decode.h"
#include "etherbuf.pb.h"

enum class EtherbufMessages_E
{
${',\n'.join([f'    {messages[i]} = {i}' for i in range(len(messages))])}
};

class Etherbuf
{
private:
    void* messageHandlers[static_cast<int>(EtherbufMessages_E::EtherbufNumMessages)] = {0};
public:
    /// @brief Unpacks Etherbuf messages and calls the handler for the message type.
    /// @param messageBytes Pointer to raw bytes of an Etherbuf message
    /// @param numBytes Size of the Etherbuf message in bytes
    /// @return Returns true if a handler for the received message was found and called. False otherwise.
    bool handleIncomingMessage(char* messageBytes, int numBytes)
    {
        if (messageBytes[0] >= static_cast<int>(EtherbufMessages_E::EtherbufNumMessages))
            return false;
        if (messageHandlers[messageBytes[0]] == 0)
            return false;
        switch (messageBytes[0])
        {
% for i in range(len(messages) - 1):
            case static_cast<int>(EtherbufMessages_E::${messages[i]}):
                if (messageHandlers[static_cast<int>(EtherbufMessages_E::${messages[i]})] != 0)
                {
                    ${c_prefix}${messages[i]} unpackTarget;
                    pb_istream_t stream = pb_istream_from_buffer((const pb_byte_t*)&messageBytes[1], numBytes - 1);
                    bool success = pb_decode(&stream, ${c_prefix}${messages[i]}_fields, &unpackTarget);

                    if (success == false)
                        return false;

                    ((void(*)(${c_prefix}${messages[i]}*))messageHandlers[static_cast<int>(EtherbufMessages_E::${messages[i]})])(&unpackTarget);
                    return true;
                }
                break;
% endfor
            default:
                break;
        }
        return false;
    }
    /// @brief Packs a message into a buffer
    /// @param messageBytes Buffer into which the message will be packed
    /// @param numBytes Size of the buffer in bytes
    /// @param packTarget PB struct representing the message to be packed
    /// @return -1 on failure to pack. Otherwise, the number of bytes in the buffer which were used.
% for i in range(len(messages) - 1):
    int toEtherbuf_${messages[i]}(char* messageBytes, int numBytes, ${c_prefix}${messages[i]} packTarget)
    {
        messageBytes[0] = static_cast<char>(EtherbufMessages_E::${messages[i]});
        pb_ostream_t stream = pb_ostream_from_buffer((pb_byte_t*)&messageBytes[1], numBytes - 1);
        bool success = pb_encode(&stream, ${c_prefix}${messages[i]}_fields, &packTarget);
        success &= (stream.bytes_written != 0);

        if (success == false)
            return -1;
        return stream.bytes_written + 1;
    }
% endfor
    // Handlers are passed a pointer to an unpacked protobuf object
% for i in range(len(messages) - 1):
    void registerHandler_${messages[i]} (void* handler) {messageHandlers[${i}] = handler;}
% endfor
};

#endif