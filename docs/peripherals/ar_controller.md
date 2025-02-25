---
comments: true
---

# AR Controller

!!! picture inline end
    ![!Image of the AR Controller block](../img/previews/ar_controller.png){ align=right }

The AR Controller is used to control your [AR Goggles](../items/ar_goggles.md) wirelessly. You can draw anything you wish into an overlay that will be visible as long as you're wearing the goggles.

!!! hint
    To link your goggles to an AR Controller, right click it with them in your hand. Multiple Goggles can be linked to one Controller.

!!! bug
    The AR Goggles are currently slightly buggy. Sometimes, they just don't do what they should do. We will rework the AR System in 0.8r/1.0r

---

<center>

| Peripheral Name | Interfaces with | Has events | Introduced in |
| --------------- | --------------- | ---------- | ------------- |
| arController    | AR Goggles      | No         | 0.5b          |

</center>

---

While the Controller is in relative mode, it interprets all coordinates as if they were on a virtual screen of the size you specified, and then scales them according to your screen size.

All color values are hexadecimal color codes (for example `0xff00ff`)

Everything that is painted onto the canvas remains there until `clear()` or if the element is removed using `clearElement(id)`, however, it might be repositioned if relative mode is toggled on or off.

## Functions

### clear
```
clear() -> void
```

Clears the entire canvas.

---

### clearElement
```
clearElement(id: string) -> void
```

Clears the element with the given `id`.

---

### horizontalLine
```
horizontalLine(minX: number, maxX: number, y: number, color: number) -> void
```

Draws a horizontal line in the given color from minX to maxX at vertical y.

---

### horizontalLineWithId
```
horizontalLineWithId(id: string, minX: number, maxX: number, y: number, color: number) -> void
```

The same as [`horizontalLine()`](#horizontalline), but has an id so it can be overridden later on or can be completely cleared.

---

### verticalLine
```
verticalLine(x: number, minY: number, maxY: number, color: number) -> void
```

Draws a vertical line in the given color from minY to maxY at horizontal x.

---

### verticalLineWithId
```
verticalLineWithId(id: string, x: number, minY: number, maxY: number, color: number) -> void
```

The same as [`verticalLine()`](#verticalline), but has an id so it can be overridden later on or can be completely cleared.

---

### drawString
```
drawString(text: string, x: number, y: number, color: number) -> void
```

Draws the given string to the specified position with the specified text color.

---

### drawStringWithId
```
drawStringWithId(id: string, text: string, x: number, y: number, color: number) -> void
```

The same as [`drawString()`](#drawstring), but has an id so it can be overridden later on or can be completely cleared.

---

### drawCenteredString
```
drawCenteredString(text: string, x: number, y: number, color: number) -> void
```

The same as [`drawString()`](#drawstring), but centers the string horizontally around the specified position.

---

### drawCenteredStringWithId
```
drawCenteredStringWithId(id: string, text: string, x: number, y: number, color: number) -> void
```

The same as [`drawCenteredString()`](#drawcenteredstring), but has an id so it can be overridden later on or can be completely cleared.

---

### drawRightboundString
```
drawRightboundString(text: string, x: number, y: number, color: number) -> void
```

The same as [`drawString()`](#drawstring), but the string is positioned with its right end at the specified position.

---

### drawRightboundStringWithId
```
drawRightboundStringWithId(id: string, text: string, x: number, y: number, color: number) -> void
```

The same as [`drawRightboundString()`](#drawrightboundstring), but has an id so it can be overridden later on or can be completely cleared.

---

### drawItemIcon
```
drawItemIcon(itemId: string, x: number, y: number) -> void
```

!!! success "Added in version 0.5.2b"

Draws the given item to the specified position.

---

### drawItemIconWithId
```
drawItemIconWithId(id: string, itemId: string, x: number, y: number) -> void
```

!!! success "Added in version 0.5.2b"

The same as [`drawItemIcon()`](#drawitemicon), but has an id so it can be overridden later on or can be completely cleared.

---

### drawCircle
```
drawCircle(x: number, y: number, radius: number, color: number) -> void
```

!!! success "Added in version 0.5.2b"

Draws a circle without filling it.

---

### drawCircleWithId
```
drawCircleWithId(id: string, x: number, y: number, radius: number, color: number) -> void
```

!!! success "Added in version 0.5.2b"

The same as [`drawCircle()`](#drawcircle), but has an id so it can be overridden later on or can be completely cleared.

---

### fill
```
fill(minX: number, minY: number, maxX: number, maxY: number, color: number)
```

Fills a rectangle with the given color from the corner minX, minY to maxX, maxY.

---

### fillWithId
```
fill(id: string, minX: number, minY: number, maxX: number, maxY: number, color: number)
```

The same as [`fill()`](#fill), but has an id so it can be overridden later on or can be completely cleared.

---

### fillCircle
```
fillCircle(x: number, y: number, radius: number, color: number) -> void
```

!!! success "Added in version 0.5.2b"

Draws a full circle.

---

### fillCircleWithId
```
fillCircleWithId(id: string, x: number, y: number, radius: number, color: number) -> void
```

!!! success "Added in version 0.5.2b"

The same as [`fillCircle()`](#fillcircle), but has an id so it can be overridden later on or can be completely cleared.

---

### fillGradient
```
fillGradient(minX: number, minY: number, maxX: number, maxY: number, colorFrom: number, colorTo: number) -> void
```

Draws a rectangular gradient from colorFrom to colorTo with the given corners.

---

### fillGradientWithId
```
fillGradientWithId(id: string, minX: number, minY: number, maxX: number, maxY: number, colorFrom: number, colorTo: number) -> void
```

The same as [`fillGradient()`](#fillgradient), but has an id so it can be overridden later on or can be completely cleared.

---

### isRelativeMode
```
isRelativeMode(): true, number, number | false
```

Returns true and the size of the virtual screen if relative mode is active, or just false if it isn't.

---

### setRelativeMode
```
setRelativeMode(enabled: boolean, virtualScreenWidth?: number, virtualScreenHeight?: number) -> void
```

Activates or deactivates relative mode. Requires virtual screen width and height if it is being enabled.

---

!!! hint
    Use negative coordinates to specify an x value from the right end of the screen or a y value from the bottom!

## Examples

### Example 1

Olfi01 made a simple script that shows the current date and time in the top right corner of the screen and updates every second.

```lua linenums="1"
local controller = peripheral.find("arController") -- Finds the peripheral if one is connected

if controller == nil then error("arController not found") end

controller.setRelativeMode(true, 1600, 900) -- Convenient Aspect ratio for most screens
while true do
  local timer = os.startTimer(1)
  local event, id
  repeat
    event, id = os.pullEvent("timer")
  until id == timer
  controller.clear() -- If you don't do this, the texts will draw over each other
  controller.drawRightboundString(os.date(), -10, 10, 0xffffff)
end
```

### Example 2

Olfi01 made another script to draw .nfp files, which you can draw with the paint program, in cc in your HUD.

First, we have a script with more adaptability. You can define x, y, width and height.

Script 1: [Github](https://gist.github.com/Seniorendi/ce4971245b20fb031ca9b65ec4fcb4d0)

And we have another script which depends on the script above, but is simpler to use.

Script 2: [Github](https://gist.github.com/Seniorendi/954e9888fac01efe8f23e82d0ae06e92)

---

## Changelog/Trivia

**0.5.2b**  
Added `fillCircle`, `drawCircle` and `drawItemIcon`.

**0.5b**  
Added the AR Controller and Goggles, made by Olfi01#6413
