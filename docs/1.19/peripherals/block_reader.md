# Block Reader
!!! picture inline end
    ![Header](https://intelligence-modding.de/wp-content/uploads/2021/05/Peripheral-Proxy.png){ align=right }

This block is able to read data of blocks and tile entities in front of it.

## Overview

| Peripheral Name | Interfaces with | Events | Introduced in |
|-----------------|-----------------|--------|---------------|
| blockReader     | Blocks          | No     | 0.7r          |


### Example

``` lua
reader = peripheral.find("blockReader")

print("Block Name: ".. reader.getBlockName())
for k, v in ipairs(reader.getBlockData()) do --Prints the contents of the data
    print(k, v)
end
```

## Functions

| Function | Returns  | Description |
|------------|--------------|-------------|
| getBlockName() | string | Returns the registry name of the block(e.g. minecraft:dirt) |
| getBlockData() | table | Returns the block data if the target block is a tile entity |

## Changelog/Trivia

0.7r
Added the block reader
