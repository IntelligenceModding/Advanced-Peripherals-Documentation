<h4><a href="../">Go Back</a></h4>

# Transmitters

!!! picture inline end
    ![Header](https://intelligence-modding.de/wp-content/uploads/2021/12/ezgif-2-08f84c976683.gif){ align=right }
    Mod: Mekanism <br><br/>
    Block: Any transmitter. See full list below
Transmitters from mekanism are blocks which can transport various types of things like gases, fluids, energy or more.

<br><br/>
<br><br/>
<br><br/>

!!! info
    Energy functions will always return in FE. If you want it in joules, multiply the value with 2.5

    The functions which returns a value in percent, will return a number between 1-0. (50% would be 0.5)

### Supported transmitters
Supporte transmitters are

- Universal Cable
- Thermodynamic Conductor
- Pressurized Tube
- Mechanical Pipe
- Logistical Transporter

##Functions

Functions for every transmitter

| Function | Returns | Description |
|----------|---------|-------------|
| getTransmitters | int | Returns the amount of transmitters. (Amount of cables) |
| getAcceptors | int | Returns the amount of acceptors. (Amount of cables which are connected) |
| getThroughput | int | Returns how much the cable can transfer at ones.(Use `getPull()` for the logistical transporter) |
| getTier | string | Returns the tier of the transporter. (Basic to ultimate) |
| getCapacity | int | Returns the capacity of the cable. (Not available for: logistical transporter) |
| getStored | int | Returns the amount of stored things in the cable. (Not available for: logistical transporter) |
| getNetworkCapacity | int | Returns the capacity of the network. (Not available for: logistical transporter, thermodynamic conductor) |
| getNetworkStored | int | Returns the amount of stored things in the network. (Not available for: logistical transporter, thermodynamic conductor) |

### Logistical Transporter

| Function | Returns | Description |
|----------|---------|-------------|
| getBaseSpeed | int | Returns the base speed(blocks per second) of the transmitter. |
| getBasePull | int | Returns the base pull speed(items per second) of the transmitter. |
| getSpeed | int | Returns the base speed (blocks per second) of the transmitter based on the configuration. |
| getPull | int | Returns the base pull speed(items per second) of the transmitter based on the configuration. |

##Changelog/Trivia

0.7.6r
Added transmitter integration

0.6b
Added integration for Mekanism
