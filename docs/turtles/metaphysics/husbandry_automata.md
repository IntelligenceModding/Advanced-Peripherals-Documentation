---
comments: true
---

# Husbandry Automata

!!! picture inline end
    ![!Image of the Husbandry Automata Upgrade](../img/previews/husbandry_automata.png){ align=right }

Husbandry automata is a turtle with a Husbandry Mechanic Soul upgrade. This upgrade has all of the abilities of a [Weak Automata](./weak_automata.md) plus some additional abilites:  
• Use items on animals  
• Get information about an animal  
• Scan for nearby animals  
• Capture and release animals  

<p class="picture-spacing" style="--ps:1.2rem;"></p>

---

<center>

| Peripheral Name   | Interfaces with | Has events | Introduced in |
| ----------------- | --------------- | ---------- | ------------- |
| husbandryAutomata | World           | No         | 0.7r          |

</center>

---

## How to craft

To create a husbandry soul, you need to feed 3 different types of animals via the [feedSoul](weak_automata.md#feedsoul) function to a weak automata core.
The core needs to be placed inside the turtle into the current active slot(Usually the first one).

The turtle needs 9 animals in total:

| Animal | Amount |
| ------ | ------ |
|   Cow  |    3   |
|  Sheep |    3   |
| Chicken |   3   |

Step by Step:

- Create a weak automata turtle(A normal turtle with a weak automata core as upgrade)
- Place another weak automata core in the current active slot of the turtle
- run `weakAutomata#feedSoul()` for every animal while the animal is in front of the turtle

Example 
```lua
core = peripheral.find("weak_automata")

successful, message = core.feedSoul()
print(successful)
print(message)
```

---

## Functions

### useOnAnimal
```
useOnAnimal() -> (true | nil), string
```
Tries to use the currently selected item on the animal in front of the turtle.  
Returns true and the interaction result as a string or if it fails it returns nil and an error message.

---

### inspectAnimal
```
inspectAnimal() -> table | nil, string
```
Returns information about the animal that is in front of the turtle or nil and an error message.

---

### searchAnimals
```
searchAnimals() -> table | nil, string
```
Returns a list of the animals around the turtle or nil and an error message.

---

### captureAnimal
```
captureAnimal() -> true | nil, string
```
If an animal is in front of the turtle that animal will be captured and stored in the turtle.  
Returns true if an animal is captured or nil and an error message.

---

### releaseAnimal
```
releaseAnimal() -> true | nil, string
```
Returns true if it releases the stored animal or nil and an error message.

---

### getCapturedAnimal
```
getCapturedAnimal() -> table | nil, string
```
Returns a table of information about the stored animal or nil and an error message.

---

## Changelog/Trivia

**0.7r**  
Added the Husbandry Automata
