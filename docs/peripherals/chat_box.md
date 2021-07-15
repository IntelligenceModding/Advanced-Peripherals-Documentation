# Chat Box

!!! picture inline end
    ![Header](https://srendi.de/wp-content/uploads/2021/04/Chat-box.png){ align=right }

The Chat Box is able to read and write messages to the in-game chat. You can send messages to just one player or to everyone.

!!! hint
    If you prefix your message with a $ the message will not be sent to the global chat but the chat event fires.  
    Example:  
    `$this message is hidden!`

## Overview

| Peripheral Name | Interfaces with | Events | Introduced in |
| --------------- | --------------- | ------ | ------------- |
| chatBox         | Game Chat       | Yes    | 0.1b          |

## Events

| Event Name | Parameter One | Parameter Two   | Parameter Three | Parameter Four  | Parameter Five  | Description                         |
| ---------- | ------------- | --------------- | --------------- | --------------- | --------------- | ----------------------------------- |
| chat       | "chat"        | string username | string message  | string uuid     | boolean isHidden| Fires when a player sends a message |

### Example

```lua
while true do
  event, username, message = os.pullEvent("chat") -- Will be fired when someone sends a chat message
  print(username.. " just wrote: ".. message) -- Prints "*User* just wrote: *Message*"
end
```

!!! info
The `chat` event will fire once a chatbox has been connected to the computer.
You don't have to `.wrap()` or `.find()` the peripheral (unless you intend to send messages).

## Functions

| Function                                             | Returns | Description                              |
| ---------------------------------------------------- | ------- | ---------------------------------------- |
| sendMessage(string prefix, string message)                          |         | Broadcasts a message to the global chat. |
| sendFormattedMessage(string prefix, string jsonObject)              |         | Broadcasts a text component message to the global chat. |
| sendMessageToPlayer(string prefix, string message, string username) |         | Sends a message to one specific player.  |

### Example

The Chat Box is quite easy to use. Wrap the peripheral and send messages or use the chat event.

```lua
local box = peripheral.find("chatBox") -- Finds the peripheral if one is connected

if box == nil then error("chatBox not found") end

box.sendMessage("Hey world") -- Sends a message to the global chat
box.sendMessageToPlayer("Hey you", "Player644") -- Send a message only to one specific player
```

## Scripts & Examples

I made an script which emits a redstone signal if a player sends a specified message.

Script: [here](https://gist.github.com/Seniorendi/2002973af6e983f48d5cf7a225d7257a)

Example Video: [here](https://cloud.srendi.de/index.php/s/insF5MgsmyTz4z4)

## Changelog/Trivia
0.7r
Added the uuid and hidden parameter to the chat event. Also added the `sendFormattedMessage` function.

4.0b
Fixed that the chat box is not working on LAN worlds

0.1b
Added the chat box. It was the first feature of the mod.
