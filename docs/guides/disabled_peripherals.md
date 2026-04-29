---
comments: true
---

# Disabled Peripherals

!!! failure
    Only available for 1.19.2-0.7.39r, 1.20.1-0.7.45r, 1.21.1-0.7.57b or newer    


Peripherals can be disabled in the configuration file of AP in `{minecraft_folder}/config/Advancedperipherals/peripherals.toml`.

When disabled, these peripherals can still be wrapped but all the functions throw a LuaException. Besides that, you can now find a new function called `peripheralDisabled`.
You can simply check in your script if a connected peripheral is disabled via the following example.

```lua
  box = peripheral.find("chat_box") -- (1)
  if box.peripheralDisabled then -- (2)
    error("Peripheral is Disabled", 0)  
  end
  
  print("Peripheral is not Disabled")
  
```

1.  Can be any peripheral, as long as it is from AP.
2.  We just check if the function exists, we don't run it since the function does not exist when the peripheral is not disabled.
