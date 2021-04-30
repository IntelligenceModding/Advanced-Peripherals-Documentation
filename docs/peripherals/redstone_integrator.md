#Redstone Integrator
!!! picture inline end
    ![Header](https://srendi.de/wp-content/uploads/2021/04/Redstone-Integrator.png){ align=right }

The redstone integrator is able to interact with redstone like a normal computer it does.
You can use the same code which you would use for a computer on a redstone integrator.

##Events
No Events


##Functions

The redstone integrator uses the same sides like the redstone api it does.
You can use `front`, `bottom`, `right` and so on.

You can also use `Analogue` instead of `Analog`. Example: `setAnalogueOutput`

``` lua
integrator = peripheral.wrap("redstoneIntegrator_1") --Defines the integrator as redstoneIntegrator_1

--Prints some information to the terminal of the computer
print("Left redstone ".. integrator.getAnalogInput("left")) --Will return the level of the redstone at the right side.
print("Right redstone output".. integrator.getOutput("right")) -Will return the output level which is set wich setAnalogOutput
integrator.setOutput("top", true) --Will set the redstone level to 15 at the top of the redstone integrator

```

| Function | Returns | Description |
|----------|---------|-------------|
|getInput(string direction) |	boolean | Returns true if the redstone at the given side is on. False if not. |
|getOuput(string direction) |	boolean | Returns true if the redstone integrator sends a redstone signal to the given side. False if not. |
|getAnalogInput(string direction) |	int | Returns the redstone level on the given side. |
|getAnalogOutput(string direction) |	boolean | Returns the redstone level which sends the redstone integrator on the given side. |
|setOutput(string direction, boolean power) | | Will set the redstone level to 15 on the given side if power is true. |
|setAnalogOutput(string direction, int power) | | Will set the redstone level to the given power on the given side. |


##Changelog/Trivia

0.5.3b
Added the lovely redstone integrator
