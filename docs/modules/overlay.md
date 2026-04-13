---
comments: true
---

# Overlay Module

!!! picture inline end
    ![!Image of the Overlay Module item](../img/previews/modules/overlay_module.png){ align=right }

The Overlay Module allows scripts render stuff on player's GUI.

---

## Objects

All fields will have a getter and a setter, which is defined as `getXxx` and `setXxx`.
For `boolean` fields, getter is defined as `isXxx` or `hasXxx`.

---

### OverlayObject

| Field | Type | Default | Description |
| ----- | ---- | ------- | ----------- |
| `enabled` | `boolean` | `true` | whether or not to render the object |

#### type
```
type() -> string
```

returns the object's type.

#### getId
```
getId() -> number
```

returns the object's integer ID.

---

### RenderableObject

Based on [OverlayObject](#overlayobject)

| Field | Type | Default | Description |
| ----- | ---- | ------- | ----------- |
| `opacity` | `number` | `1` | A decimal number that determines the transparency of the object, in range of `[0.0, 1.0]` |
| `color` | `number` | `0xffffff` | An integer that determines the color of the object, in format of 0xRRGGBB |
| `x` | `number` | `0` | A decimal number of the object's X position |
| `y` | `number` | `0` | A decimal number of the object's Y position |
| `z` | `number` | `0` | A decimal number of the object's Z position |
| `rotX` | `number` | `0` | A decimal number determine the degrees the object's rotation around the X-axis, in range of `[0, 360]` |
| `rotY` | `number` | `0` | A decimal number determine the degrees the object's rotation around the Y-axis, in range of `[0, 360]` |
| `rotZ` | `number` | `0` | A decimal number determine the degrees the object's rotation around the Z-axis, in range of `[0, 360]` |

#### getPos
```
getPos() -> number, number, number
```

returns the object's `x`, `y`, `z`.

#### setPos
```
setPos(number, number, number) -> nil
```

sets the object's `x`, `y`, `z`.

---

### CircleObject

Based on [RenderableObject](#renderableobject)

| Field | Type | Default | Description |
| ----- | ---- | ------- | ----------- |
| `radius` | `number` | `0` | Integer of the circle's radius, in range of `[0, ∞)` |
| `filled` | `boolean` | `true` | If the circle should be filled |
| `pixelated` | `boolean` | `true` | If the circle should be pixelated |
| `borderWidth` | `number` | `4` | Integer of the circle's border width, in range of `[0, 32767]` |
| `segments` | `number` | `25` | Integer of the circle's segments, in range of `[0, 100]` |

---

### ItemObject

Based on [RenderableObject](#renderableobject)

| Field | Type | Default | Description |
| ----- | ---- | ------- | ----------- |
| `item` | `string | nil` | `nil` | The registry ID of the item to render |

---

### LineObject

Based on [RenderableObject](#renderableobject)

| Field | Type | Default | Description |
| ----- | ---- | ------- | ----------- |
| `endX` | `number` | `0` | A decimal number of line's X end |
| `endY` | `number` | `0` | A decimal number of line's Y end |
| `pixelated` | `boolean` | `false` | If the line should be pixelated |
| `width` | `number` | `4` | Integer of the line's width, in range of `[0, 32767]` |

#### getEndPos
```
getEndPos() -> number, number
```

returns the object's `endX`, `endY`.

#### setEndPos
```
setEndPos(number, number) -> nil
```

sets the object's `endX`, `endY`.

---

### RectangleObject

Based on [RenderableObject](#renderableobject)

| Field | Type | Default | Description |
| ----- | ---- | ------- | ----------- |
| `sizeX` | `number` | `0` | A decimal number of rectangle's X size, in range of `[0, ∞)` |
| `sizeY` | `number` | `0` | A decimal number of rectangle's Y size, in range of `[0, ∞)` |

#### getSizes
```
getSizes() -> number, number
```

returns the object's `sizeX`, `sizeY`.

#### setSizes
```
setSizes(number, number) -> nil
```

sets the object's `sizeX`, `sizeY`.

---

### TextObject

Based on [RenderableObject](#renderableobject)

| Field | Type | Default | Description |
| ----- | ---- | ------- | ----------- |
| `content` | `string` | `""` | The text to render |
| `fontSize` | `number` | `1` | A decimal number represents the text's font size, in range of `[0.0, 128.0]` |
| `shadow` | `boolean` | `false` | Whether or not render a shadow for the text |
| `center` | `boolean` | `false` | If the text should be centered at its position |

---

### ThreeDimensionalObject

Based on [RenderableObject](#renderableobject)

| Field | Type | Default | Description |
| ----- | ---- | ------- | ----------- |
| `relativePosition` | `boolean` | `false` | Should the object's position relative to the player's head |
| `relativeRotation` | `boolean` | `false` | Should the object's rotation relative to the player's head |
| `depthTest` | `boolean` | `true` | If the object should hide behind other objects |
| `culling` | `boolean` | `true` | If the object's hidden faces should not be seen |

---

### BlockObject

Based on [ThreeDimensionalObject](#threedimensionalobject)

| Field | Type | Default | Description |
| ----- | ---- | ------- | ----------- |
| `block` | `string` | `"minecraft:air"` | The registry ID of the block to render |

---

### BoxObject

Based on [ThreeDimensionalObject](#threedimensionalobject)

| Field | Type | Default | Description |
| ----- | ---- | ------- | ----------- |
| `sizeX` | `number` | `0` | A decimal number of rectangle's X size, in range of `[0, ∞)` |
| `sizeY` | `number` | `0` | A decimal number of rectangle's Y size, in range of `[0, ∞)` |
| `sizeZ` | `number` | `0` | A decimal number of rectangle's Z size, in range of `[0, ∞)` |

#### getSizes
```
getSizes() -> number, number, number
```

returns the object's `sizeX`, `sizeY`, `sizeZ`.

#### setSizes
```
setSizes(number, number, number) -> nil
```

sets the object's `sizeX`, `sizeY`, `sizeZ`.

---

### SphereObject

Based on [ThreeDimensionalObject](#threedimensionalobject)

| Field | Type | Default | Description |
| ----- | ---- | ------- | ----------- |
| `sectors` | `number` | `16` | An integer in range of `[1, 1024]` |
| `stacks` | `number` | `16` | An integer in range of `[1, 1024]` |
| `radius` | `number` | `1` | A decimal number of the sphere's radius, in range of `(0, 128]` |

---

### TorusObject

Based on [ThreeDimensionalObject](#threedimensionalobject)

| Field | Type | Default | Description |
| ----- | ---- | ------- | ----------- |
| `sides` | `number` | `32` | An integer in range of `[1, 1024]` |
| `rings` | `number` | `16` | An integer in range of `[1, 1024]` |
| `minorRadius` | `number` | `0.1` | A decimal number of inner radius of the ring, in range of `(0, 128]` |
| `majorRadius` | `number` | `0.5` | A decimal number of outer radius of the ring, in range of `(0, 128]` |

---

### TriangleObject

Based on [ThreeDimensionalObject](#threedimensionalobject)

!!! note
    Triangle objects only visible when the vertex is ordered in counter-clockwise.

| Field | Type | Default | Description |
| ----- | ---- | ------- | ----------- |
| `x1` | `number` | `0` | A decimal number of the first vertex's X position |
| `y1` | `number` | `0` | A decimal number of the first vertex's Y position |
| `z1` | `number` | `0` | A decimal number of the first vertex's Z position |
| `x2` | `number` | `0` | A decimal number of the second vertex's X position |
| `y2` | `number` | `0` | A decimal number of the second vertex's Y position |
| `z2` | `number` | `0` | A decimal number of the second vertex's Z position |
| `x3` | `number` | `0` | A decimal number of the third vertex's X position |
| `y3` | `number` | `0` | A decimal number of the third vertex's Y position |
| `z3` | `number` | `0` | A decimal number of the third vertex's Z position |

#### getPos1
```
getPos1() -> number, number, number
```

returns the object's `x1`, `y1`, `z1`.

#### setPos1
```
setPos1(number, number, number) -> nil
```

sets the object's `x1`, `y1`, `z1`.

#### getPos2
```
getPos2() -> number, number, number
```

returns the object's `x2`, `y2`, `z2`.

#### setPos2
```
setPos2(number, number, number) -> nil
```

sets the object's `x2`, `y2`, `z2`.

#### getPos3
```
getPos3() -> number, number, number
```

returns the object's `x3`, `y3`, `z3`.

#### setPos3
```
setPos3(number, number, number) -> nil
```

sets the object's `x3`, `y3`, `z3`.

---

## Functions

### createObject
```
createObject(id: string, object: table) -> table
```

`id` must be a valid object's type ID
`object` should contains the object's initial properties

returns a copy of the `object` with getters & setters to change its properties.

---

### createBlock
```
createBlock(object: table) -> table
```

`object` is a [BlockObject](#blockobject)

returns a copy of the `object` with getters & setters to change its properties.

---

### createBox
```
createBox(object: table) -> table
```

`object` is a [BoxObject](#boxobject)

returns a copy of the `object` with getters & setters to change its properties.

---

### createSphere
```
createSphere(object: table) -> table
```

`object` is a [SphereObject](#sphereobject)

returns a copy of the `object` with getters & setters to change its properties.

---

### createTorus
```
createTorus(object: table) -> table
```

`object` is a [TorusObject](#torusobject)

returns a copy of the `object` with getters & setters to change its properties.

---

### createTriangle
```
createTriangle(object: table) -> table
```

`object` is a [TriangleObject](#triangleobject)

returns a copy of the `object` with getters & setters to change its properties.

---

### createCircle
```
createCircle(object: table) -> table
```

`object` is a [CircleObject](#circleobject)

returns a copy of the `object` with getters & setters to change its properties.

---

### createItem
```
createItem(object: table) -> table
```

`object` is a [ItemObject](#itemobject)

returns a copy of the `object` with getters & setters to change its properties.

---

### createLine
```
createLine(object: table) -> table
```

`object` is a [LineObject](#lineobject)

returns a copy of the `object` with getters & setters to change its properties.

---

### createRectangle
```
createRectangle(object: table) -> table
```

`object` is a [RectangleObject](#rectangleobject)

returns a copy of the `object` with getters & setters to change its properties.

---

### createText
```
createText(object: table) -> table
```

`object` is a [TextObject](#textobject)

returns a copy of the `object` with getters & setters to change its properties.

---

### getObject
```
getObject(id: number) -> table | nil
```

returns a [RenderableObject](#renderableobject) by the object's ID, or `nil` if the ID not exists.

---

### removeObject
```
removeObject(id: number) -> boolean
```

remove an object by its ID and returns if the object with given ID existed

---

### clear
```
clear() -> number
```

remove all objects, returns the number of removed object.

---

### getObjectsCount
```
getObjectsCount() -> number
```

returns the number of all objects.

---

### getGuiSize
```
getGuiSize() -> number, number, number
```

returns the client's width, height, and GUI scale

---

### getEyePosition
```
getEyePosition() -> number, number, number
```

returns the player's eye position

---

### update
```
update() -> number
```

manually update objects, returns the number of updated object.

---

### autoUpdate
```
autoUpdate(value: boolean | nil) -> boolean
```

set auto update and returns if the objects will be auto updated.  

If the value is a boolean, the auto update flag will set to that value.  
If the value is not presented (aka `nil`), the auto update flag will stay unchanged

---

## Changelog/Trivia

**0.8**  
Added Overlay Module
