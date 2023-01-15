# NBT Storage

!!! picture inline end
    ![Header](https://intelligence-modding.de/wp-content/uploads/2021/07/NBT-Storage.png){ align=right }

NBT Storage is custom block that allow input/output custom data to block. Mostly provided for ID support.

<br><br><br><br><br><br>

## Overview

| Peripheral Name     | Interfaces with | Events | Introduced in |
| ------------------- | --------------- | ------ | ------------- |
| nbtStorage          | World           | No     | 0.7r          |


| Function           | Returns                | Description                                             |
| ------------------ | ---------------------- | ------------------------------------------------------- |
| read()             | table                  | Returns data that stored in block                       |
| writeJson(string)  | boolean or nil, reason | Writes data into block, string should be valid json     |
| writeTable(table)  | boolean or nil, reason | Writes data into block, table is just generic lua table |
| getConfiguration() | table                  | Returns configuration for this peripheral               |

## Changelog/Trivia

0.7r
Added nbt storage
