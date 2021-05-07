#Player Detector
!!! picture inline end
    ![Header](https://srendi.de/wp-content/uploads/2021/04/Player-Detector.png){ align=right }

The Player Detector is able to recognize players within a certain range. In addition, it recognizes the player who clicks on him.

##Events

| Event Name | Parameter One  | Parameter Two | Description |
|------------|--------------|-------------|-------------|
| playerClick | "playerClick" | string username | Fires when a player clicks on the block. |

##Functions

Example:

```lua
detector = peripheral.wrap("right") --Defines the Detector on the right


function getPlayers(int range)
  local players = detector.getPlayersInRange(range) --Returns a table of every player in a certain range
  for k,v in pairs(players) do --we use a for loop to print the names of every player
    print(v) --We print every player name
  end
end

function printPlayerCords(player) --this function will print the coordinates of the player
  local pos = detector.getPlayerPos(player) --getPlayerPos returns a table with coordinates
  print("X of ".. player .." is: ".. pos.x)
  print("Y of ".. player .." is: ".. pos.y)
  print("Z of ".. player .." is: ".. pos.z)
end

getPlayers(50) --Will execute the function getPlayers

printPlayerCords("Srendi")  --Will execute the function printPlayerCords

--Prints some information to the terminal of the computer
while true do
  event, username = os.pullEvent("playerClick") --This event will fires when a player clicks on the block
  print("A player clicked the block: ".. username) --Prints the username of the player
end
```

| Function | Returns | Description |
|----------|---------|-------------|
| getPlayersInRange(int range) | table | Return players within a certain range. |
| getPlayerPos(string player) | table | Returns player's position. |
| isPlayerInRange(int range, string username) | boolean | Returns true if the player is in range, false if not. |
| isPlayersInRange(int range)	 | boolean | Returns true if any player is in range, false if not. |

!!! info
    The center of the range is the Player Detector itself and not the Computer.

##Changelog/Trivia

The player detector was also a buggy block, like the energy detector. But it was not too buggy.
We had bugs that the block uses completely wrong coordinates or the range was broken.

0.4.2b
Added a max range config value.

0.3b
Added the functions isPlayersInRange and isPlayerinRange.

0.2.6b
Added the function getPlayersInRange.

0.1b
Added the player detector, it was the third feature of the mod.
