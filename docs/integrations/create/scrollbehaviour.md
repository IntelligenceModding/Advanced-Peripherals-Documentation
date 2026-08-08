---
comments: true
---

# Blocks with Scroll Value Behaviours

!!! success "Available in all versions"

This integration works for all blocks with any type of scroll value behaviour. Like the Speed Controller and Creative Motor.

!!! info
    This integration only works for Speed based scroll value behaviour blocks. So this will not work for blocks like the Smart Funnel.

!!! warning "Requirement"
    Requires the [Create](https://www.curseforge.com/minecraft/mc-mods/create) mod to be installed

---

<center markdown>

| Peripheral Name  | Interfaces with               | Has events | Introduced in |
| ---------------- | ----------------------------- | ---------- | ------------- |
| scroll_behaviour | Scroll Value Behaviour blocks | No         | 0.7.16        |

</center>

---

## Functions

### getScrollValue
```
getScrollValue() -> number
```
Returns the target behaviour value of the block.

---

### setScrollValue
```
setScrollValue(value: number) -> nil
```
Sets the target behavious value of the block to the given `value`.

---

## Changelog/Trivia

**0.7.16**  
Added Create integration
