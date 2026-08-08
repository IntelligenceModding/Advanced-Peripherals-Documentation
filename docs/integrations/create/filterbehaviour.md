---
comments: true
---

# Blocks with Filter Behaviours

This integration works for all blocks with any type of filter behaviour. Like Basin and Brass Funnel.

---

<center markdown>

| Peripheral Name     | Interfaces with         | Has events | Introduced in |
| ------------------- | ----------------------- | ---------- | ------------- |
| filtering_behaviour | Filter Behaviour blocks | No         | 0.8           |

</center>

---

## Functions

### getFilter
```
getFilter() -> table
```
Returns the filter of the block.

<!-- TODO Explain the filter structure -->

---

### setFilter
```
setFilter(value: table) -> nil
```
Sets the filter to given `value`.

---

## Changelog/Trivia

**0.8**  
Added filter behaviour generial peripheral
