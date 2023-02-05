# Blocks with Scroll Value Behaviours

!!! success "Available in all versions"

This integration works for all blocks with any type of scroll value behaviour. Like the Speed Controller and Creative Motor.

!!! info
    This integration only works for Speed based scroll value behaviour blocks. So this will not work for blocks like the Smart Funnel.

!!! warning "Requirement"
    Requires the [Create](https://www.curseforge.com/minecraft/mc-mods/create) mod to be installed

---

<center>

| Peripheral Name       | Interfaces with               | Has events | Introduced in |
| --------------------- | ----------------------------- | ---------- | ------------- |
| scrollBehaviourEntity<br>speedController (1.16) | Scroll Value Behaviour blocks | No         | 0.7.16        |

</center>

---

## Functions

### getTargetSpeed
```
getTargetSpeed() -> number
```
Returns the target behaviour value of the block.

---

### setTargetSpeed
```
setTargetSpeed(value: number) -> boolean
```
Sets the target behavious value of the block to the given `value`.  
Returns whether or not the value was successfully set.

---

## Changelog/Trivia

**0.7.16**  
Added Create integration
