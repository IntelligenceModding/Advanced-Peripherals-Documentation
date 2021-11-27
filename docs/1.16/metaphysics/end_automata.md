# End automata

!!! picture inline end
    ![Header](){ align=right }

The end automata is turtle with End Mechanic Soul upgrade!

This upgrade allow everything, that [Weak automata](https://docs.srendi.de/metaphysics/weak_automata/) does and also provide ability to teleport to stored positions by marks! But this upgrade only works in one dimension now.

## Overview

| Peripheral Name           | Interfaces with | Events | Introduced in |
| ------------------------- | --------------- | ------ | ------------- |
| endMechanicSoul           | World           | No     | 0.7r          |

### Peripheral funtions

| Function                      | Returns                  | Description                                                    |
| ----------------------------- | ------------------------ | -------------------------------------------------------------- |
| savePoint(string name)        | true or nil, err         | Saves current turtle location into data for future use         |
| points()                      | table or nil, err        | Returns list of points with names                              |
| warpToPoint(string name)      | true or nil, err         | Teleport turtle to stored point if turtle has enough fuel      |
| estimateWarpCost(string name) | int or nil, err          | Returns cost of warp in fuel                                   |
| distanceToPoint(string name)  | int or nil, err          | Return manhattan distance to point                             |
| getWarpCooldown()             | int                      | Returns current waro operation cooldown                        |

## Changelog/Trivia

0.7r
Added the end automata
