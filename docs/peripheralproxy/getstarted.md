#Proxy Integrations

!!! picture inline end
    ![Header](https://srendi.de/wp-content/uploads/2021/05/Peripheral-Proxy.png){ align=right }

##How does it work?

You can simply put a peripheral proxy in front of a supported block, so the computer will be able to use functions from that block.

Here is a little gif:
![Gif](https://srendi.de/wp-content/uploads/2021/05/ezgif.com-gif-maker-1.gif)

Example code for an immersive engineering capacitor.
```lua
capacitor = peripheral.wrap("peripheralProxy:IECapacitor_0") --Wrap the capacitor

print("Stored energy: ".. capacitor.getStoredEnergy() .."FE") --Will print the stored energy
print("Energy Capacity".. capacitor.getMaxEnergy() .."FE") --Will print the energy capacity
```

##Supported Mods
If you want to see more integrations, you can request a mod integration [here](https://github.com/Seniorendi/AdvancedPeripherals/issues)

Currently we support:

* Mekanism
    - Fission reactor
    - Boiler
    - Fusion reactor
    - Any energy supporting machine
    - Turbine
    - Induction Matrix
* Botania
    - Any flower
    - Any spreader
    - Any mana pool
* Immersive Engineering
    - Any capacitor
    - Redstone probe
    - Redstone connector
