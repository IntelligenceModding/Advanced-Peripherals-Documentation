# Redstone Integrator

!!! picture inline end
    ![Header](https://intelligence-modding.de/wp-content/uploads/2021/04/Redstone-Integrator.png){ align=right }

The Redstone Integrator is able to interact with redstone.
You can use the same code you would use for a computer on a Redstone Integrator.

You may need this peripheral for cases where you need to output redstone signals on more sides than a regular computer has to offer.

## Overview

| Peripheral Name    | Interfaces with | Events | Introduced in |
| ------------------ | --------------- | ------ | ------------- |
| redstoneIntegrator | Refined Storage | No     | 0.5.3b        |

## Functions

The Redstone Integrator uses the same sides as the Redstone API.
You can use `front`, `bottom`, `right` and so on.

You can also use `Analogue` instead of `Analog`. Example: `setAnalogueOutput`

```lua
local integrator = peripheral.find("redstoneIntegrator") -- Finds the peripheral if one is connected

if integrator == nil then error("redstoneIntegrator not found") end

--Prints some information to the terminal of the computer
print("Left redstone ".. integrator.getAnalogInput("left")) --Will return the level of the redstone at the right side.
print("Right redstone output".. integrator.getOutput("right")) --Will return the output level which is set wich setAnalogOutput
integrator.setOutput("top", true) --Will set the redstone level to 15 at the top of the Redstone Integrator

```

| Function                                     | Returns | Description                                                                                      |
| -------------------------------------------- | ------- | ------------------------------------------------------------------------------------------------ |
| getInput(string direction)                   | boolean | Returns true if the redstone at the given side is on. False if not.                              |
| getOuput(string direction)                   | boolean | Returns true if the Redstone Integrator sends a redstone signal to the given side. False if not. |
| getAnalogInput(string direction)             | int     | Returns the redstone level on the given side.                                                    |
| getAnalogOutput(string direction)            | boolean | Returns the redstone level which sends the Redstone Integrator on the given side.                |
| setOutput(string direction, boolean power)   |         | Will set the redstone level to 15 on the given side if power is true.                            |
| setAnalogOutput(string direction, int power) |         | Will set the redstone level to the given power on the given side.                                |

## Changelog/Trivia

0.5.3b
Added the lovely Redstone Integrator
