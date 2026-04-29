---
comments: true
---

# Mod Integrations

## How do they work?

To use our third party integrations you can simply place your computer or a modem next to a supported block and wrap it.
If the block is supported, you can use the functions it'll provide, see the block's specific page for more information.

Example with a botania mana flower:
```lua linenums="1"
local flower = peripheral.find("manaFlower")

print("Stored mana: ".. flower.getMana())
print("Mana capacity: ".. flower.getMaxMana())
print("Is on enchanted soul?: ".. flower.isOnEnchantedSoil())
```

---

## Integration Requests
If you want to see more integrations, you can request a mod integration on [<i class="si si-github" style="font-size:1rem;"></i> Github](https://github.com/IntelligenceModding/AdvancedPeripherals/issues).

---

## Changelog/Trivia

**0.7.16**  
Added Create and Botania integrations

**0.7.7r**  
Removed Draconic Evolution integration

**0.7.4r**  
Added Draconic Evolution integration

**0.7r**  
Removed the Peripheral Proxy, you can now connect your computer with any supported block directly.   
Added Integrated Dynamics integration  
Added Storage Drawers integration

**0.6b**  
Added mod integrations with the Peripheral Proxy
