---
comments: true
---

# End Automata

!!! picture inline end
    ![!Image of the Husbandry Automata Upgrade](/img/previews/end_automata.png){ align=right }

End automata is a turtle with an End Mechanic Soul upgrade. This upgrade has all of the abilities of a [Weak Automata](./weak_automata.md) plus its own additional abilites:  
• Teleport between saved locations  
• Save a location as a warp point

<p class="picture-spacing" style="--ps:3.7rem;"></p>

---

<center markdown>

| Peripheral Name | Interfaces with | Has events | Introduced in |
| --------------- | --------------- | ---------- | ------------- |
| end_automata    | World           | No         | 0.7r          |

</center>

---

## How to craft

To create an end soul, you need to feed 10 endermans via the [feedSoul](weak_automata.md#feedsoul) function to a weak automata core.
The core needs to be placed inside the turtle into the current active slot(Usually the first one).

The turtle needs 10 endermans in total:

| Mob      | Amount |
|----------|--------|
| Enderman | 10     |

Step by Step:

- Create a weak automata turtle(A normal turtle with a weak automata core as upgrade)
- Place another weak automata core in the current active slot of the turtle
- run `weakAutomata#feedSoul()` for every enderman while the enderman is in front of the turtle

Example
```lua
core = peripheral.find("weak_automata")

successful, message = core.feedSoul()
print(successful)
print(message)
```

---

## Functions

### points
```
points() -> table | nil, string
```
Returns a list of all saved points and their names

---

### savePoint
```
savePoint(name: string) -> true | nil, string
```
This saves the turtle's current location as a warp point with the given `name` which can be teleported to at a future point in time.  
Returns true if the location is successfully saved, or nil and an error message.

---

### deletePoint
```
deletePoint(name: string) -> true | nil, string
```
Delete a saved warp point with the given `name`.  
Returns true if the warp point exists and is successfully removed, or nil and an error message.

---

### distanceToPoint
```
distanceToPoint(name: string) -> number | nil, string
```
Returns the distance from the turtle's current location to the location of the point using the [Manhattan distance formula](https://en.wikipedia.org/wiki/Taxicab_geometry). If the operation fails or the point does not exist then nil and an error message will be returned.

---

### getWarpCooldown
```
getWarpCooldown() -> number
```
Returns the current cooldown for warp operations.

---

### estimateWarpCost
```
estimateWarpCost(name: string) -> number | nil, string
```
Returns the fuel point cost to warp from the current location to the point with the given `name`. Or nil and an error message.

---

### warpToPoint
```
warpToPoint(name: string) -> true | nil, string
```
Teleports the turtle from the current location to the location of the point with the given `name`.  
Returns true if the turtle is successfully teleported or nil and an error message.

---

### portalShipPrepare
```
portalShipPrepare(direction: string | nil) -> table | nil, string
```
Prepare to cross a portal.  
Direction includes `up`, `top`, `down`, `bottom`, and `front` (default).  
If a portal is detected, a table with target dimension's information will be returns. Or nil and an error message.  

| Field      | Type      | Description |
| ---------- | --------- | ----------- |
| `name`     | `string`  | Target dimension's ID |
| `pos`      | `string`  | Position after teleport |
| `facing`   | `string`  | Facing direction after teleport |
| `costs`    | `number`  | Costs to active teleport |
| `canSpawn` | `boolean` | `true` if the destination is not blocked so turtle can perform the teleport, `false` otherwise. |
| `shipId`   | `string`  | The teleport id, uses in `portalShipActive` |

---

### portalShipActive
```
portalShipActive(shipId: string) -> true | nil, string
```
Active a portal and teleport through it.  
Can only be invoked in a short period after `portalShipPrepare` returns the `shipId`.  

---

## Changelog/Trivia

**0.8**
Added cross portal ability to end automata.

**0.7r**  
Added the End Automata
