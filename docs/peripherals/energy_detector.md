#Energy Detector
!!! picture inline end
    ![Header](https://srendi.de/wp-content/uploads/2021/04/Energy-Detector.png){ align=right }

The Energy Detector can detect energy flow and acts as a resistor. You can define the max flow rate to use it as a resistor.

!!! bug
    The Energy Detector does not work on versions below 0.4.5b.
    I recommend to use the latest version.

##Events

No Events

##Functions

The Energy Detector is quite simple, you can set the max energy flow or receive the current flow/max flow.

Example:

```lua
detector = peripheral.wrap("energyDetector_0") -- Define the peripheral

detector.setTransferRateLimit(512) -- Only 512 FE/t can go through the block
print("Current transfer rate: ".. detector.getTransferRate .." FE/t") -- prints the current transfer rate
```

| Function | Returns | Description |
|----------|---------|-------------|
| setTransferRateLimit(int limit) | | Set the transfer rate limit. |
| getTransferRateLimit() | int | Returns the max rate limit which has been set with setTransferRateLimit(). |
| getTransferRate() | int | Returns the current energy which go through the block. |

##Changelog/Trivia

The Energy Detector had some weird problems in versions older than 0.4.6b
The block was able to store infinite amounts of energy or it creates an limitless amount of energy.

0.4.6b
The energy detector is now bug free. *hopefully*

0.4.5b
Completly changed the system of the energy detector, but the energy detector was able to drain energy without any reson.

0.4.3b
Created a crafting recipe for the detector.

0.4.2b
The energy detector is now able to send energy automatically.

0.4.1b
Added the lovely bugged energy detector.
