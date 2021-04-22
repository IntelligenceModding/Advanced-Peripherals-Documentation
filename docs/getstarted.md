#Getting started

!!! info
    I explain here how computercraft works.
    If you want to know how the mod works, you can open the tabs on the left for the specific feature.

This is a addon for [computercraft](https://www.curseforge.com/minecraft/mc-mods/cc-tweaked). The mod exists to add more blocks, turtles and more to computercraft
for extended features.
Computercraft is a big mod, you can program various things with the language lua.
You could print a simple message on a monitor or create a program which controls
your carrot farm.

I want to explain the basics of computercraft and how it works here.
Don't worry if you can't find a lot of information here, i will add more in the future.

##Computers, Peripherals and Monitors
The device which you use to program scripts to control your carrot farm is the
[computer](https://tweaked.cc/peripheral/computer.html).
You can use the command `edit` in it to create or edit existing scripts.

Peripherals are computers, but peripherals are [monitors](https://tweaked.cc/peripheral/monitor.html) too. Whate are peripherals now?
A peripheral is everything you can connect with an modem from computercraft.
With the [modem](https://tweaked.cc/peripheral/modem.html) you can connect a monitor, a computer,
a [chat box](https://docs.srendi.de/Peripherals/chatbox/) or another peripheral with each other to use it in your computercraft script.
If you have connected a peripheral you can wrap it with the [peripheral API](https://tweaked.cc/module/peripheral.html).
```lua
monitor = peripheral.wrap("monitor_0")
```

So, you connected your first monitor. What now?
Now you can print a simple text on the monitor to display useful informations.
We want to print the text "Hey world"

First we should clear the monitor to clear old text.
You can easily to that with the clear function.
```lua
monitor.clear()
```

Now we want to adjust the text size and print the message.
```lua
monitor.setCursorPos(1,1) --Sets the cursor pos. This is the start of the text.
monitor.setTextScale(2) --Increase the text scale to 2.

monitor.write("Hey world") --And finally. This prints the message on the monitor.
```
