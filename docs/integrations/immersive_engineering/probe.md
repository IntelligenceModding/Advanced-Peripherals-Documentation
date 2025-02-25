---
comments: true
---

# Redstone Probe

!!! danger "Only available in version 1.16"

!!! picture inline end
    ![!Image of the Redstone Probe block](../img/previews/redstone_probe.png){ align=right }

The Redstone Probe is a block from Immersive Engineering used to read and write data to a specific redstone channel.

!!! warning "Requirement"
    Requires the [Immersive Engineering](https://www.curseforge.com/minecraft/mc-mods/immersive-engineering) mod to be installed

<p class="picture-spacing" style="--ps:1.9rem;"></p>

---

<center>

| Peripheral Name | Interfaces with      | Has events | Introduced in |
| --------------- | -------------------- | ---------- | ------------- |
| redstoneProbe   | Redstone Probe block | No         | 0.6b          |

</center>

---

## Functions

### getSendingChannel
```
getSendingChannel() -> string
```
Returns the current sending channel for the probe.

---

### setSendingChannel
```
setSendingChannel(color: string) -> void
```
Sets the sending channel for the probe to the given `color` channel.

---

### getReceivingChannel
```
getReceivingChannel() -> string
```
Returns the current receiving channel for the probe.

---

### setReceivingChannel
```
setReceivingChannel(color: string) -> void
```
Sets the receiving channel for the probe to the given `color` channel.

---

### getRedstoneForChannel
```
getRedstoneForChannel(color: string) -> number
```
Returns the redstone signal strength for the given `color` channel. A number from 0 to 15.

---

## Changelog/Trivia

**0.6b**  
Added integration for Immersive Engineering
