---
comments: true
---

# Redstone Wire Connector

!!! danger "Only available in version 1.16"

!!! picture inline end
    ![!Image of the Redstone Connector block](../img/previews/redstone_connector.png){ align=right }

The Redstone Wire Connector is a block from Immersive Engineering to connect redstone wire over big distances.

!!! warning "Requirement"
    Requires the [Immersive Engineering](https://www.curseforge.com/minecraft/mc-mods/immersive-engineering) mod to be installed

<p class="picture-spacing" style="--ps:1.9rem;"></p>

---

<center>

| Peripheral Name   | Interfaces with               | Has events | Introduced in |
| ----------------- | ----------------------------- | ---------- | ------------- |
| redstoneConnector | Redstone Wire Connector block | No         | 0.6b          |

</center>

---

## Functions

### getRedstoneChannel
```
getRedstoneChannel() -> string
```
Returns the current redstone channel.

---

### setRedstoneChannel
```
setRedstoneChannel(color: string) -> void
```
Sets the current redstone `color` channel for the connector.

---

### getRedstoneForChannel
```
getRedstoneForChannel(color: string) -> number
```
Returns the redstone signal strength for the given `color` channel. A number from 0 to 15.

---

### getOutput
```
getOutput() -> number
```
Returns the redstone signal stength for the current channel.

---

### isInputMode
```
isInputMode() -> boolean
```
Returns true if the Redstone Wire Connector is being used as an input.

---

## Changelog/Trivia

**0.6b**  
Added integration for Immersive Engineering
