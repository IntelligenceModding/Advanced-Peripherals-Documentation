---
comments: true
---

# Base Peripheral

All peripherals in AdvancedPeripherals contains these basic methods defined below.

---

## Functions

### getName
```
getName() -> string
```

Returns the custom name of the peripheral.

---

### setName
```
setName(name: string) -> nil
```

Sets the custom name of the peripheral.

---

### getConfiguration
```
getConfiguration() -> table
```

Returns the configuration of the peripheral.

Configuration table is in the following format:
```
{
    [<configuration name>]: string = <configuration value>
    operations: table | nil = {
        [<operation name>]: table = {
            name: string = <operation name>
            type: string = <operation type>
            [<addition fields>] = <addition values>
            getCost(args...) -> number
        }
    }
}
```

!!! note
    `operations` field only exists if any operation presents on the peripheral.

---

### getOperationCooldown
```
getOperationCooldown(operationName: string) -> number
```

Returns the remaining cooldown of an operation in milliseconds.

!!! note
    This method only exists if any operation presents on the peripheral.

---

### peripheralDisabled
```
peripheralDisabled() -> true
```

See [Disabled Peipherals](../guides/disabled_peripherals.md) for more information.

!!! note
    `peripheralDisabled` method only exists when the peripheral is disabled by server config, and it will always return `true`.

---

## Changelog/Trivia
