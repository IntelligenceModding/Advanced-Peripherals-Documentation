# AR Controller

!!! picture inline end
    ![Header](https://intelligence-modding.de/wp-content/uploads/2021/04/AR-Controller.png){ align=right }

The AR Controller is used to control your AR Goggles wirelessly. You can draw anything you wish into an overlay that will be visible as long as you're wearing the goggles.

!!! hint
    To link your goggles to an AR Controller, right click it with them in your hand. Multiple Goggles can be linked to one Controller.

<br>

!!! bug
    The AR Goggles are currently slightly buggy. Sometimes, they just don't do what they should do. We will rework the AR System in 0.8r/1.0r

## Overview

| Peripheral Name | Interfaces with | Events | Introduced in |
| --------------- | --------------- | ------ | ------------- |
| arController    | AR Goggles      | No     | 0.5b          |

## Functions

While the Controller is in relative mode, it interprets all coordinates as if they were on a virtual screen the size you specified, and then scales them according to your screen size.

All color values are hexadecimal color codes (for example `0xff00ff`)

| Function                                                                                         | Returns               | Description                                                                                                       |
| ------------------------------------------------------------------------------------------------ | --------------------- | ----------------------------------------------------------------------------------------------------------------- |
| clear()                                                                                          |                       | Clears the entire canvas.                                                                                         |
| clearElement(string id)                                                                          |                       | Clears the element with that id.                                                                                  |
| drawCenteredString(string text, int x, int y, int color)                                         |                       | The same as `drawString()`, but centers the string horizontally around the specified position.                    |
| drawCenteredStringWithId(string id, string text, int x, int y, int color)                        |                       | The same as `drawCenteredString()`, but has an id so it can be overridden later on or can be completely cleared.  |
| drawCircle(int x, int y, int radius, int color)                                                  |                       | Draws a circle without filling it.                                                                                |
| drawCircleWithId(string id, int x, int y, int radius, int color)                                 |                       | The same as `drawCircle()`, but has an id so it can be overridden later on or can be completely cleared.          |
| drawItemIcon(string itemId, int x, int y)                                                        |                       | Draws the given item to the specified position.                                                                   |
| drawItemIconWithId(string id, string itemId, int x, int y)                                       |                       | The same as `drawItemIcon()`, but has an id so it can be overridden later on or can be completely cleared.        |
| drawRightboundString(string text, int x, int y, int color)                                       |                       | The same as `drawString()`, but the string is positioned with its right end at the specified position.            |
| drawRightboundStringWithId(string id, string text, int x, int y, int color)                      |                       | The same as `drawRightboundString()`, but has an id so it can be overridden later on or can be completely cleared.|
| drawString(string text, int x, int y, int color)                                                 |                       | Draws the given string to the specified position and the specified color.                                         |
| drawStringWithId(string id, string text, int x, int y, int color)                                |                       | The same as `drawString()`, but has an id so it can be overridden later on or can be completely cleared.          |
| fill(int minX, int minY, int maxX, int maxY, int color)                                          |                       | Fills a rectangle with the given color from the corner minX, minY to maxX, maxY.                                  |
| fillWithId(string id, int minX, int minY, int maxX, int maxY, int color)                         |                       | The same as `fill()`, but has an id so it can be overridden later on or can be completely cleared.                |
| fillCircle(int x, int y, int radius, int color)                                                  |                       | Draws a full circle.                                                                                              |
| fillCircleWithId(string id, int x, int y, int radius, int color)                                 |                       | The same as `fillCircle()`, but has an id so it can be overridden later on or can be completely cleared.          |
| fillGradient(int minX, int minY, int maxX, int maxY, int colorFrom, int colorTo)                 |                       | Draws a rectangular gradient from colorFrom to colorTo with the given corners.                                    |
| fillGradientWithId(string id, int minX, int minY, int maxX, int maxY, int colorFrom, int colorTo)|                       | The same as `fillGradient()`, but has an id so it can be overridden later on or can be completely cleared.        |
| horizontalLine(int minX, int maxX, int y, int color)                                             |                       | Draws a horizontal line in the given color from minX to maxX at vertical y.                                       |
| horizontalLineWithId(string id, int minX, int maxX, int y, int color)                            |                       | The same as `horizontalLine()`, but has an id so it can be overridden later on or can be completely cleared.      |
| verticalLine(int x, int minY, int maxY, int color)                                               |                       | Draws a vertical line in the given color from minY to maxY at horizontal x.                                       |
| verticalLineWithId(string id, int x, int minY, int maxY, int color)                              |                       | The same as `verticalLine()`, but has an id so it can be overridden later on or can be completely cleared.        |
| isRelativeMode()                                                                                 | boolean\[, int, int\] | Returns true and the size of the virtual screen if relative mode is active, or just false if it isn't.            |
| setRelativeMode(boolean enabled\[, int virtualScreenWidth, int virtualScreenHeight\])            |                       | Activates or deactivates relative mode. Requires virtual screen width and height if it's being enabled.           |
Everything that's painted onto the canvas remains there until `clear()` or if the element is removed using `clearElement(id)`, however, it might be repositioned if relative mode is toggled on or off.

!!! hint
    Use negative coordinates to specify an x value from the right end of the screen or a y value from the bottom!

## Example

Olfi01 made a simple script that shows the current date and time in the top right corner of the screen and updates every second.

```lua
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

Another Example:
Olfi01 made another script to draw .nfp files, which you can draw with the paint program, in cc in your HUD.

First, we have a script with more adaptability. You can define x, y, width and height.

Script: [Github](https://gist.github.com/Seniorendi/ce4971245b20fb031ca9b65ec4fcb4d0)

And we have another script which depends on the script above, but is simpler to use.

Script: [Github](https://gist.github.com/Seniorendi/954e9888fac01efe8f23e82d0ae06e92)

## Changelog/Trivia

0.5.2b
Added fillCircle, drawCircle and drawItemIcon.

0.5b
Added the AR Controller and Goggles, made by Olfi01#6413
