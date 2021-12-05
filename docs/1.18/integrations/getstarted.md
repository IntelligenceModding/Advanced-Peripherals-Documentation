# Mod Integrations

## How does it work?

You can simply put your computer next to a supported block.

Example code for an immersive engineering capacitor.
```lua
capacitor = peripheral.wrap("IECapacitor_0") --Wrap the capacitor

print("Stored energy: ".. capacitor.getStoredEnergy() .."FE") --Will print the stored energy
print("Energy Capacity: ".. capacitor.getMaxEnergy() .."FE") --Will print the energy capacity
```

## Supported Mods
If you want to see more integrations, you can request a mod integration [here](https://github.com/Seniorendi/AdvancedPeripherals/issues)

Currently we support:

* Minecraft
    - Beacon
    - Noteblock

## Changelog/Trivia

0.7r
Removed the peripheral proxy, you can now connect your computer with any supported block directly.
Added Variable Store integration
Added Drawer integration

0.6b
Added mod integrations with the peripheral proxy

0.5.2b
Added fillCircle, drawCircle and drawItemIcon.
