---
comments: true
---

# Modules

Modules are used in [Smart Glasses](../items/smart_glasses.md).

You may access all modules via `smartglasses.modules`.
Alternatively, you can access them via `peripheral.wrap('back')` (not recommended).

List all modules:
```lua linenums="1"
for name, module in pairs(smartglasses.modules) do
	if name == module.getId() then
		print('Module ' .. name .. ' has alias ' .. tostring(modules.getAlias()))
	end
end
```

Use specific module:
```lua linenums="1"
-- turn off night vision
if not smartglasses.modules['advancedperipherals:night_vision'] then
	error('Night vision module is not equipped')
end

smartglasses.modules['advancedperipherals:night_vision'].enableNightVision(false) -- use module ID
smartglasses.modules.nightVision.enableNightVision(false) -- use module alias name
```

---

## Events

### glasses_module

Fires when a glasses module is attached.  
**Values:**  
1. `id: string` The id of the module

```lua linenums="1"
local event, moduleId = os.pullEvent('glasses_module')
print('Module ' .. moduleId .. ' is attached')
```

### glasses_module_detach

Fires when a glasses module is detached.  
**Values:**  
1. `id: string` The id of the module

```lua linenums="1"
local event, moduleId = os.pullEvent('glasses_module_detach')
print('Module ' .. moduleId .. ' is detached')
```

---

## Functions

These functions exist on all modules.

### getId
```
getId() -> string
```

Returns the module's ID.

### getAlias
```
getAlias() -> string | nil
```

Returns the module's alias name, if have one.
