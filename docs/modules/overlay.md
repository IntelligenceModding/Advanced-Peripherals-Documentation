---
comments: true
---

# Overlay Module

!!! picture inline end
    ![!Image of the Overlay Module item](../img/previews/modules/overlay_module.png){ align=right }

The Overlay Module allows scripts render stuff on player's GUI.

---

## Objects

### OverlayObject

#### getId
```
getId() -> number
```

returns the object's integer ID.

#### isEnabled
```
isEnabled() -> boolean
```

returns whether or not the object is rendering.

#### setEnabled
```
setEnabled(enable: boolean) -> nil
```

set whether or not to render the object.

---

### RenderableObject

Based on [OverlayObject](#OverlayObject)

| Field | Type | Default Value | Description |
| ----- | ---- | ------------- | ----------- |
| `opacity` | `number` | `1` | A decimal number that determines the transparency of the object, in range of \[0.0, 1.0\] |
| `color` | `number` | `0xffffff` | An integer that determines the color of the object, in format of 0xRRGGBB |
| `x` | `number` | `0` | Integer of object's X position |
| `y` | `number` | `0` | Integer of object's Y position |
| `z` | `number` | `0` | Integer of object's Z position |

---

### RectangleObject

Based on [RenderableObject](#RenderableObject)

---

### CircleObject

Based on [RenderableObject](#RenderableObject)

| Field | Type | Default Value | Description |
| ----- | ---- | ------------- | ----------- |
| `radius` | `number` | `0` | Integer of the circle's radius, in range of \[-32767, 32767\] |

---

### TextObject

Based on [RenderableObject](#RenderableObject)

| Field | Type | Default Value | Description |
| ----- | ---- | ------------- | ----------- |
| `content` | `string` | `""` | The text to render |
| `fontSize` | `number` | `1` | A decimal number represents the text's font size, in range of \[0.0, 128.0\] |
| `shadow` | `boolean` | `false` | Whether or not render a shadow for the text |

---

### ItemObject

Based on [RenderableObject](#RenderableObject)

| Field | Type | Default Value | Description |
| ----- | ---- | ------------- | ----------- |
| `id` | `string` | `"minecraft:air"` | The registry ID of the item to render |

---

### ThreeDimensionalObject

Based on [RenderableObject](#RenderableObject)

| Field | Type | Default Value | Description |
| ----- | ---- | ------------- | ----------- |
| `disableDepthTest` | `boolean` | `false` | If `true`, the block will not hidden behind other objects, `false` otherwise |
| `disableCulling` | `boolean` | `false` | If `true`, the block will not hidden faces cannot be seen, `false` otherwise |
| `xRot` | `number` | `0` | A decimal number determine the degrees the block rotates on the X-axis, in range of \[0, 360\] |
| `yRot` | `number` | `0` | A decimal number determine the degrees the block rotates on the Y-axis, in range of \[0, 360\] |
| `zRot` | `number` | `0` | A decimal number determine the degrees the block rotates on the Z-axis, in range of \[0, 360\] |

---

### BlockObject

Based on [ThreeDimensionalObject](#ThreeDimensionalObject)

| Field | Type | Default Value | Description |
| ----- | ---- | ------------- | ----------- |
| `block` | `string` | `"minecraft:air"` | The registry ID of the block to render |

---

### BoxObject

Based on [ThreeDimensionalObject](#ThreeDimensionalObject)

---

### SphereObject

Based on [ThreeDimensionalObject](#ThreeDimensionalObject)

| Field | Type | Default Value | Description |
| ----- | ---- | ------------- | ----------- |
| `sectors` | `number` | `16` | An integer in range of \[1, 1024\] |
| `stacks` | `number` | `16` | An integer in range of \[1, 1024\] |
| `radius` | `number` | `1` | A decimal number of the sphere's radius, in range of \(0, 128\] |

---

### TorusObject

Based on [ThreeDimensionalObject](#ThreeDimensionalObject)

| Field | Type | Default Value | Description |
| ----- | ---- | ------------- | ----------- |
| `sides` | `number` | `32` | An integer in range of \[1, 1024\] |
| `rings` | `number` | `16` | An integer in range of \[1, 1024\] |
| `minorRadius` | `number` | `0.1` | A decimal number of inner radius of the ring, in range of \(0, 128\] |
| `majorRadius` | `number` | `0.5` | A decimal number of outer radius of the ring, in range of \(0, 128\] |

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

`object` is a [BlockObject](#BlockObject)

returns a copy of the `object` with getters & setters to change its properties.

---

### createBox
```
createBox(object: table) -> table
```

`object` is a [BoxObject](#BoxObject)

returns a copy of the `object` with getters & setters to change its properties.

---

### createSphere
```
createSphere(object: table) -> table
```

`object` is a [SphereObject](#SphereObject)

returns a copy of the `object` with getters & setters to change its properties.

---

### createTorus
```
createTorus(object: table) -> table
```

`object` is a [TorusObject](#TorusObject)

returns a copy of the `object` with getters & setters to change its properties.

---

### createTriangle
```
createTriangle(object: table) -> table
```

`object` is a [TriangleObject](#TriangleObject)

returns a copy of the `object` with getters & setters to change its properties.

---

### createCircle
```
createCircle(object: table) -> table
```

`object` is a [CircleObject](#CircleObject)

returns a copy of the `object` with getters & setters to change its properties.

---

### createItem
```
createItem(object: table) -> table
```

`object` is a [ItemObject](#ItemObject)

returns a copy of the `object` with getters & setters to change its properties.

---

### createLine
```
createLine(object: table) -> table
```

`object` is a [LineObject](#LineObject)

returns a copy of the `object` with getters & setters to change its properties.

---

### createRectangle
```
createRectangle(object: table) -> table
```

`object` is a [RectangleObject](#RectangleObject)

returns a copy of the `object` with getters & setters to change its properties.

---

### createText
```
createText(object: table) -> table
```

`object` is a [TextObject](#TextObject)

returns a copy of the `object` with getters & setters to change its properties.

---

### getObject
```
getObject(id: number) -> table | nil
```

returns a [RenderableObject](#RenderableObject) by the object's ID, or `nil` if the ID not exists.

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
