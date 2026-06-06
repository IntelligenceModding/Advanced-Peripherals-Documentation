---
comments: true
---

# Chat Box

!!! picture inline end
    ![!Image of the Chat Box block](../img/previews/chat_box.png){ align=right }

The Chat Box is able to read and write messages to the in-game chat. You can send messages to just one player or to everyone.

!!! hint
    If you prefix your message with a $ the message will not be sent to the global chat but it will still fire the chat event.  
    Example:  
    `$this message is hidden!`

---

<center markdown>

| Peripheral Name | Interfaces with | Has events | Introduced in |
| --------------- | --------------- | ---------- | ------------- |
| chat_box        | Game Chat       | Yes        | 0.1b          |

</center>

---

## Events

### chat
Fires when a chat message appears within a chatbox's detection range.  
**Values:**  
1. `uuid: string` Message sender's UUID. `nil` if triggered from a /say command  
2. `name: string` Message sender's name. `[say]` if triggered from a /say command  
3. `message: string` The chat message  
4. `isHidden: boolean` Whether or not the message is privately sent to chatboxes  
5. `encodedUtf8Message: string` The encoded chat message from utf8

```lua linenums="1"
local event, uuid, username, message, isHidden = os.pullEvent("chat")
print("The 'chat' event was fired with the username " .. username .. " and the message " .. message)
```

!!! info
    The `chat` event will fire when a chatbox has been connected to a computer. You don't have to `.wrap()` or `.find()` the peripheral (unless you intend to send messages).

---

## Functions

### sendMessage
```
sendMessage(message: string, options: table | nil) -> true | nil, string
```

Broadcasts a message to the global chat or if `range` is specified it is sent to all players in the range.  
Returns true if the message is successfully sent, or nil and an error message if it fails.

`options` format:
```
{
    utf8: boolean = if strings and message should be treated as encoded utf8
    range: number = the broadcast range
    prefix: string = change the text that appears inside the brackets at the start of a message. Defaults to "AP".
    brackets: string = used around the prefix. Must specify a two length string like "[]", "()", "<>", ...
    bracketColor: string = specifies the color to use for the brackets, must be in the [MOTD code format](https://www.digminecraft.com/lists/color_list_pc.php).
}
```

Returns true if the message is successfully sent, or nil and an error message if it fails.

```lua linenums="1"
local chatBox = peripheral.find("chat_box")

chatBox.sendMessage("Hello world!") -- Sends "[AP] Hello world!" in chat
sleep(1) -- We must account for the cooldown between messages, this is to prevent spam
chatBox.sendMessage("I am dave", {prefix="Dave"}) -- Sends "[Dave] I am dave"
sleep(1)

-- Sends message "Welcome!" with cyan <> brackets around "<Box>"
-- to players within 30 blocks of the chat box
chatBox.sendMessage("Welcome!", {prefix="Box", brackets="<>", bracketColor="&b", range=30})
```

!!! tip
    Just like the `bracketColor` argument you can add colors to the `message` and `prefix` arguments using the same [MOTD color code format](https://www.digminecraft.com/lists/color_list_pc.php).  
    Since CC doesn't accept non-ascii charactor `§`, you should replace it with `&`.  
    If you want to send colored message but not only colored brackets, please use [`sendFormattedMessage()`](#sendformattedmessage) instead.

---

### sendMessageToPlayer
```
sendMessageToPlayer(message: string, username: string, options: table | nil) -> true | nil, string
```
Similar to [`sendMessage()`](#sendmessage) this sends a message to one specific player. Specify the player to send the message to with the `username` parameter.

`username` is player's in game name or its uuid.

```lua linenums="1"
local chatBox = peripheral.find("chat_box")

chatBox.sendMessageToPlayer("Hello there.", "Player123") -- Sends "[AP] Hello there." to Player123 in chat
```

---

### sendFormattedMessage
```
sendFormattedMessage(json: string, options: table | nil) -> true | nil, string
```
This function is fundamentally the same as [`sendMessage()`](#sendmessage) except it takes a json text component as the first parameter.  
Find out more information on how the text component format works on the [minecraft wiki](https://minecraft.wiki/w/Text_component_format).
You can generate the json at [minecraft.tools](https://minecraft.tools/en/json_text.php?json=Welcome%20to%20Minecraft%20Tools).

```lua linenums="1"
local chatBox = peripheral.find("chat_box")

local message = {
    {text = "Click "}, 
    {
        text = "here",
        underlined = true,
        color = "aqua",
        clickEvent = {
            action = "open_url",
            value = "https://advancedperipherals.madefor.cc/"
        }
    },
    {text = " for the AP "},
    {text = "documentation", color = "red"},
    {text = "!"}
}

local json = textutils.serialiseJSON(message)

chatBox.sendFormattedMessage(json)
```

---

### sendFormattedMessageToPlayer
```
sendFormattedMessageToPlayer(json: string, username: string, options: table | nil) -> true | nil, string
```
Similar to [`sendFormattedMessage()`](#sendformattedmessage) this sends a formatted message to one specific player. Specify the player to send the message to with the `username` parameter.

`username` is player's in game name or its uuid.

---

### sendToastToPlayer
```
sendToastToPlayer(options: table) -> true | nil, string
```
Sends a toast to the specified player. The design of the toast is the classic notification design. It's planned to add a custom rendered design in the future.

![!Image of the toast](../img/chat_box/toast.png)

`options` format:
```
{
    utf8: boolean = if strings should be treated as encoded utf8
    message: string = the message in the toast
    title: string = the title of the toast
    player: string = player's name or uuid
    prefix: string = change the text that appears inside the brackets at the start of a message. Defaults to "AP".
    brackets: string = used around the prefix
    bracketColor: string = specifies the color to use for the brackets
}
```

```lua linenums="1"
local chatBox = peripheral.find("chat_box")

chatBox.sendToastToPlayer({
    message = "I will chat box you",
    title = "Hello",
    player = "Dev",
    prefix = "&4&lBoxi",
    brackets = "()",
    bracketColor = "&c&l",
})
```

---

### sendFormattedToastToPlayer
```
sendFormattedToastToPlayer(options: table) -> true | nil, string
```
This function is fundamentally the same as [`sendToast()`](#sendtoasttoplayer) except it takes a json text component for `message`, and `title` fields.  
Find out more information on how the text component format works on the [minecraft wiki](https://minecraft.wiki/w/Text_component_format).
You can generate the json at [minecraft.tools](https://minecraft.tools/en/json_text.php?json=Welcome%20to%20Minecraft%20Tools).

![!Image of the formatted toast](../img/chat_box/toast_formatted.png)

```lua linenums="1"
local chatBox = peripheral.find("chat_box")


local title = {
    { text = "Hello", color = "dark_purple"}
}

local message = {
    { text = "I will chat "},
    { text = "box ", color = "red"},
    { text = "you"}
}

local titleJson = textutils.serializeJSON(title)
local messageJson = textutils.serialiseJSON(message)

successful, error = chatBox.sendFormattedToastToPlayer({
    message = messageJson,
    title = titleJson,
    player = "Dev",
    prefix = "&4&lBoxi",
    brackets = "()",
    bracketColor = "&c&l",
})
```

---

## Changelog/Trivia

**1.19.2-0.7.33r/1.20.1-0.7.37r**   
Added `sendToastToPlayer` and `sendFormattedToastToPlayer`

**0.7r**  
Added the `uuid` and `isHidden` parameter to the **chat** event. Also added the `sendFormattedMessage` function.

**4.0b**  
Fixed the chat box so that is should now work in LAN worlds

**0.1b**  
Added the chat box. This was the first feature of the mod.
