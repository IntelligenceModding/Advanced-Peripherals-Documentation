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
| clickBlock()                                      | true or nil, err         | Tries to click on block at front of turtle (range modifiers also applied) with item in selected slot |
| scanItems()                                       | table or nil, err        | Returns data about items in range of turtle                                                          |
| collectSpecificItem(string itemName, [int count]) | true or nil, err         | Collect items around turtle by name                                                                  |
| collectItems([int count])                         | true or nil, err         | Collect items around turtle                                                                          |
| feedSoul()                                        | true, result or nil, err | Tries to feed entity at front of turtle to weak mechanic soul. Soul should be in selected slot       |
| chargeTurtle([int fuel])                          | int or nil, err          | Tries to charge turtle and returns amount of recived fuel or errors

## Changelog/Trivia

0.7b
Added the weak automata
