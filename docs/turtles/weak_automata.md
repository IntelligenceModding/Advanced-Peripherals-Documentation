# Weak automata

!!! picture inline end
    ![Header](){ align=right }

Weak automata is turtle with weak mechanic soul upgrade!

It provides several ability:

- Digging block with tool;
- Click on block with item or empty hand;
- Suck item around, all or specific;
- Detect items around;
- Detect block or turtle in line of view;

But weak soul is only a start of jorney! Understanding of automata stabilization and general soul nature will allow to create more powerful soul variants. Try to feed monster or animal souls to weak mechanic soul:

- [End Automata](https://docs.srendi.de/turtles/end_automata/).

## Cooldowns and fuel consumption

Several operations, for example, dig, click or suck items have build-in cooldowns to avoid overusage and server load with turtles.
But, you can reduce this cooldowns with increasing fuel consumption!

For example, if click operation required 1 fuel point for perform and will have 5 seconds cooldown, with fuel consumption 2 you can perform click operation one in 2.5 seconds, but in cost of 2 fuel point. Fuel point will grow faster, than cooldown drops. With fuel consumption 3 mean that you will use 4 fuel points.

<br><br><br><br><br><br>

## Overview

| Peripheral Name           | Interfaces with | Events | Introduced in |
| ------------------------- | --------------- | ------ | ------------- |
| weakMechanicSoul          | World           | No     | 0.7b          |

### Peripheral funtions

| Function                                          | Returns                  | Description                                                                                          |
| ------------------------------------------------- | ------------------------ | ---------------------------------------------------------------------------------------------------- |
| getFuelLevel()                                    | int                      | Returns stored fuel                                                                                  |
| getFuelMaxLevel()                                 | int                      | Returns max stored fuel                                                                              |
| getConfiguration()                                | table                    | Returns table with related documentation                                                             |
| lookAtBlock()                                     | table or nil, err        | Returns table with block data at front of turtle                                                     |
| lookAtEntity()                                    | table or nil, err        | Returns table with entity data at front of turtle                                                    |
| digBlock()                                        | true or nil, err         | Tries to dig block at front of turtle (range modifiers also applied) with tool in selected slot      |
| useOnBlock()                                      | true or nil, err         | Tries to click on block at front of turtle (range modifiers also applied) with item in selected slot |
| scanItems()                                       | table or nil, err        | Returns data about items in range of turtle                                                          |
| collectSpecificItem(string itemName, [int count]) | true or nil, err         | Collect items around turtle by name                                                                  |
| collectItems([int count])                         | true or nil, err         | Collect items around turtle                                                                          |
| feedSoul()                                        | true, result or nil, err | Tries to feed entity at front of turtle to weak mechanic soul. Soul should be in selected slot       |
| chargeTurtle([int fuel])                          | int or nil, err          | Tries to charge turtle and returns amount of recived fuel or errors
| getSuckCooldown() | int | Returns current suck item operation cooldown |
| getDigCooldown() | int | Returns current dig block operation cooldown |
| getUseOnBlockCooldown() | int | Returns current use on block operation cooldown |
| getFuelConsumptionRate() | int | Returns current fuel consumption rate |
| setFuelConsumptionRate(int rate) | true or nil, err | Tries to set fuel consumption rate |

## Changelog/Trivia

0.7b
Added the weak automata
