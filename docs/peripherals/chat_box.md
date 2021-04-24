#Chat Box
!!! picture inline end
    ![Header](https://srendi.de/wp-content/uploads/2021/04/Chat-box.png){ align=right }

The chat box is able to read and write messages to the ingame chat. You can send messages to just one player or to everyone.

!!! hint
    If you write your message with an $ the message will not be sent to the global chat but the chat event fires.

##Events

| Event Name | Parameter One  | Parameter Two | Parameter Three | Description |
|------------|--------------|-------------|-------------|-------------|
|chat        | "chat"       | string username | string message | Fires when a player sends a message |

##Functions

The chat box is quite easy to use. Wrap the peripheral and send messages or use the chat event.

``` lua
box = peripheral.wrap("right") --Defines the chat box on the right

box.sendMessage("Hey world") --Sends a message to the global chat
box.sendMessageToPlayer("Hey you", "Player644") --Send a message only to one specific players

while true do
  event, username, message = os.pullEvent("chat") --will be fired when someone sends a chat messages
  print(username.. " just wrote: ".. message) --Prints "*User* just wrote: *Message*"
end
```

| Function | Returns  | Description |
|------------|--------------|-------------|
| sendMessage(string message)  | | Broadcasts a message to the global chat |
| sendMessageToPlayer(string message, string username)  | | Sends a message to one specific players |

##Example

I made an script which emits an redstone signal if a player sends a specified message.

Script: [here](https://gist.github.com/Seniorendi/2002973af6e983f48d5cf7a225d7257a)

Example Video: [here](https://cloud.srendi.de/index.php/s/insF5MgsmyTz4z4)

##Changelog/Trivia

4.0b
Fixed that the chat bos is not working on LAN worlds

0.1b
Added the chat box. it was the first feature of the mod.
