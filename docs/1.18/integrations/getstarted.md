# Mod Integrations

## How does it work?

To use our third party integrations you can simply place your computer or your modem next to a suported block and wrap it.
If the block is supported, you can use the functions it'll provide.

Example with a botania mana flower
```lua linenums="1" title="integration.lua"
flower = peripheral.wrap("manaFlower") -- (1)

print("Stored mana: ".. flower.getMana() .."FE") -- (2)
print("Mana capacity: ".. flower.getMaxMana() .."FE") -- (3)
print("Is on enchanted soul?: ".. flower.isOnEnchantedSoil() .."FE") -- (4)
```

1.  Place a block-sized modem next to the flower and wrap it
2.  Prints the stored amount of mana
3.  Prints the mana capacity
4.  Prints true if on enchanted soil

## Supported Mods
If you want to see more integrations, you can request a mod integration [here](https://github.com/Seniorendi/AdvancedPeripherals/issues)

Currently we support:

* Minecraft
    - Beacon
    - Noteblock
* Botania
    - Flowers
    - Mana Pool
    - Mana Spreader
* Create
    - Basin
    - Blaze Burner
    - Fluid Tank
    - Mechanical Mixer
    - Scroll value behaviour blocks

## Changelog/Trivia

0.7.16
Added create and botania integration

0.7r
Removed the peripheral proxy, you can now connect your computer with any supported block directly.
Added Variable Store integration
Added Drawer integration

0.6b
Added mod integrations with the peripheral proxy