#Player Detector
!!! picture inline end
    ![Header](https://srendi.de/wp-content/uploads/2021/03/Energy-Detector.png){ align=right }

The energy detector can detect energy flow and acts as an resistor. You can define the max flow rate to use it as an resistor.

!!! bug
    The energy detector does not work on versions below 0.4.5b.
    I recommend to use the latest version.

#Events

No Events

#Functions

The energy detector is quite simple, you can set the max energy flow or receive the current flow/max flow.

Example:

```lua
detector = peripheral.wrap("energyDetector_0") -- Define the peripheral

detector.setTransferRateLimit(512) -- Only 512 FE/t can go trough the block
print("Current transfer rate: ".. detector.getTransferRate .." FE/t") -- prints the current transfer rate
```

| Function | Returns | Description |
|----------|---------|-------------|
| setTransferRateLimit(int limit) | | Set the transfer rate limit. |
| getTransferRateLimit() | int | Returns the max rate limit which has been set with setTransferRateLimit(). |
| getTransferRate() | int | Returns the current energy which go trough the block. |
