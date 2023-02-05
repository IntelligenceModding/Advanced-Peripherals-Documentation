<h4><a href="../">Go Back</a></h4>

# Draconic Reactor

!!! danger "Only available in versions =>1.16-0.7.4r, <1.16-0.7.7r"

!!! picture inline end
    ![Image of the Reactor Stabilizer block](){ align=right }

The Draconic Reactor is a powerful reactor used to create a massive amount of energy.

!!! warning "Requirement"
    Requires the [Draconic Evolution](https://www.curseforge.com/minecraft/mc-mods/draconic-evolution) mod to be installed

<!-- <p class="picture-spacing" style="--ps:1.9rem;"></p> -->

## Functions

### getReactorInfo
```
getReactorInfo() -> table
```
Returns a table with information about the reactor.

---

### chargeReactor
```
chargeReactor() -> boolean
```
This initiates a disabled reactor and beings the reactor charging.  
Returns true if the reactor successfully begins charging.

---

### activateReactor
```
activateReactor() -> boolean
```
Turns on the reactor and will being producing energy.  
Returns true if the reactor successfully activates.

---

### stopReactor
```
stopReactor() -> boolean
```
Turns off the reactor.  
Returns true if the reactor successfully deactivates.

---

### setFailSafe
```
setFailSafe(enabled: boolean) -> void
```
Enables and disables the reactor's fail safe.

---

## Changelog/Trivia

**0.7.4r**  
Added Draconic Evolution integration
