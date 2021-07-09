# Geo Scanner

!!! picture inline end
    ![Header](){ align=right }

The Geo Scanner provides information about blocks around and chunk where scanner located.

Geo scanner has delay between scans, so you should be ready for this.

<br><br><br><br><br><br>

## Overview

| Peripheral Name     | Interfaces with | Events | Introduced in |
| ------------------- | --------------- | ------ | ------------- |
| geoScanner          | World           | No     | 0.7r          |


| Function            | Returns              | Description                                       |
| ------------------- | -------------------- | ------------------------------------------------- |
| getFuelLevel()      | int                  | Returns stored fuel                               |
| getFuelMaxLevel()   | int                  | Returns max stored fuel                           |
| cost(int radius)    | int                  | Returns cost in RF for scan                       |
| scan(int radius)    | table or nil, reason | Returns data about blocks in radius               |
| getScanCooldown()   | int                  | Returns cooldown for scanner                      |
| chunkAnalyze()      | table or nil, reason | Returns data about how much ores in current chunk |
| getConfiguration()  | table                | Returns configuration for this peripheral         |

## Changelog/Trivia

0.7r
Added nbt storage
